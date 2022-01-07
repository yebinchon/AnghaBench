
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct thin_c {struct dm_dev* origin_dev; struct dm_dev* pool_dev; TYPE_3__* pool; int td; int list; int can_destroy; int refcount; int dev_id; int sort_bio_list; int retry_on_resume_list; int deferred_bio_list; int deferred_cells; int lock; int thin_md; } ;
struct mapped_device {int dummy; } ;
struct dm_thin_endio_hook {int dummy; } ;
struct dm_target {char* error; int num_flush_bios; int flush_supported; int per_io_data_size; int discards_supported; int num_discard_bios; int table; struct thin_c* private; } ;
struct dm_dev {TYPE_1__* bdev; } ;
struct TYPE_11__ {int mutex; } ;
struct TYPE_9__ {scalar_t__ discard_enabled; } ;
struct TYPE_10__ {int lock; int active_thins; scalar_t__ suspended; TYPE_2__ pf; int sectors_per_block; int pmd; } ;
struct TYPE_8__ {int bd_dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int FMODE_READ ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ PM_FAIL ;
 int RB_ROOT ;
 int __pool_dec (TYPE_3__*) ;
 int __pool_inc (TYPE_3__*) ;
 TYPE_3__* __pool_table_lookup (struct mapped_device*) ;
 int bio_list_init (int *) ;
 int dm_get_device (struct dm_target*,char*,int ,struct dm_dev**) ;
 struct mapped_device* dm_get_md (int ) ;
 int dm_pool_close_thin_device (int ) ;
 int dm_pool_open_thin_device (int ,int ,int *) ;
 int dm_put (struct mapped_device*) ;
 int dm_put_device (struct dm_target*,struct dm_dev*) ;
 int dm_set_target_max_io_len (struct dm_target*,int ) ;
 int dm_table_get_md (int ) ;
 int dm_table_get_mode (int ) ;
 TYPE_4__ dm_thin_pool_table ;
 scalar_t__ get_pool_mode (TYPE_3__*) ;
 int init_completion (int *) ;
 int kfree (struct thin_c*) ;
 struct thin_c* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ read_dev_id (char*,unsigned long long*,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcmp (char*,char*) ;
 int synchronize_rcu () ;

__attribute__((used)) static int thin_ctr(struct dm_target *ti, unsigned argc, char **argv)
{
 int r;
 struct thin_c *tc;
 struct dm_dev *pool_dev, *origin_dev;
 struct mapped_device *pool_md;
 unsigned long flags;

 mutex_lock(&dm_thin_pool_table.mutex);

 if (argc != 2 && argc != 3) {
  ti->error = "Invalid argument count";
  r = -EINVAL;
  goto out_unlock;
 }

 tc = ti->private = kzalloc(sizeof(*tc), GFP_KERNEL);
 if (!tc) {
  ti->error = "Out of memory";
  r = -ENOMEM;
  goto out_unlock;
 }
 tc->thin_md = dm_table_get_md(ti->table);
 spin_lock_init(&tc->lock);
 INIT_LIST_HEAD(&tc->deferred_cells);
 bio_list_init(&tc->deferred_bio_list);
 bio_list_init(&tc->retry_on_resume_list);
 tc->sort_bio_list = RB_ROOT;

 if (argc == 3) {
  if (!strcmp(argv[0], argv[2])) {
   ti->error = "Error setting origin device";
   r = -EINVAL;
   goto bad_origin_dev;
  }

  r = dm_get_device(ti, argv[2], FMODE_READ, &origin_dev);
  if (r) {
   ti->error = "Error opening origin device";
   goto bad_origin_dev;
  }
  tc->origin_dev = origin_dev;
 }

 r = dm_get_device(ti, argv[0], dm_table_get_mode(ti->table), &pool_dev);
 if (r) {
  ti->error = "Error opening pool device";
  goto bad_pool_dev;
 }
 tc->pool_dev = pool_dev;

 if (read_dev_id(argv[1], (unsigned long long *)&tc->dev_id, 0)) {
  ti->error = "Invalid device id";
  r = -EINVAL;
  goto bad_common;
 }

 pool_md = dm_get_md(tc->pool_dev->bdev->bd_dev);
 if (!pool_md) {
  ti->error = "Couldn't get pool mapped device";
  r = -EINVAL;
  goto bad_common;
 }

 tc->pool = __pool_table_lookup(pool_md);
 if (!tc->pool) {
  ti->error = "Couldn't find pool object";
  r = -EINVAL;
  goto bad_pool_lookup;
 }
 __pool_inc(tc->pool);

 if (get_pool_mode(tc->pool) == PM_FAIL) {
  ti->error = "Couldn't open thin device, Pool is in fail mode";
  r = -EINVAL;
  goto bad_pool;
 }

 r = dm_pool_open_thin_device(tc->pool->pmd, tc->dev_id, &tc->td);
 if (r) {
  ti->error = "Couldn't open thin internal device";
  goto bad_pool;
 }

 r = dm_set_target_max_io_len(ti, tc->pool->sectors_per_block);
 if (r)
  goto bad;

 ti->num_flush_bios = 1;
 ti->flush_supported = 1;
 ti->per_io_data_size = sizeof(struct dm_thin_endio_hook);


 if (tc->pool->pf.discard_enabled) {
  ti->discards_supported = 1;
  ti->num_discard_bios = 1;
 }

 mutex_unlock(&dm_thin_pool_table.mutex);

 spin_lock_irqsave(&tc->pool->lock, flags);
 if (tc->pool->suspended) {
  spin_unlock_irqrestore(&tc->pool->lock, flags);
  mutex_lock(&dm_thin_pool_table.mutex);
  ti->error = "Unable to activate thin device while pool is suspended";
  r = -EINVAL;
  goto bad;
 }
 refcount_set(&tc->refcount, 1);
 init_completion(&tc->can_destroy);
 list_add_tail_rcu(&tc->list, &tc->pool->active_thins);
 spin_unlock_irqrestore(&tc->pool->lock, flags);






 synchronize_rcu();

 dm_put(pool_md);

 return 0;

bad:
 dm_pool_close_thin_device(tc->td);
bad_pool:
 __pool_dec(tc->pool);
bad_pool_lookup:
 dm_put(pool_md);
bad_common:
 dm_put_device(ti, tc->pool_dev);
bad_pool_dev:
 if (tc->origin_dev)
  dm_put_device(ti, tc->origin_dev);
bad_origin_dev:
 kfree(tc);
out_unlock:
 mutex_unlock(&dm_thin_pool_table.mutex);

 return r;
}
