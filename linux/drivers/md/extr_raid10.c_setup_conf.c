
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid10_info {int dummy; } ;
struct geom {int stride; int chunk_shift; scalar_t__ far_offset; } ;
struct r10conf {int copies; scalar_t__ reshape_progress; int dev_sectors; scalar_t__ reshape_safe; int bio_split; int tmppage; struct r10conf* mirrors; int r10bio_pool; struct mddev* mddev; int thread; int nr_pending; int wait_barrier; int resync_lock; int bio_end_io_list; int retry_list; int device_lock; struct geom prev; struct geom geo; } ;
struct mddev {int raid_disks; scalar_t__ reshape_position; int dev_sectors; int delta_disks; int new_layout; } ;


 int BIO_POOL_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 struct r10conf* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MaxSector ;
 int NR_RAID_BIOS ;
 int PAGE_SIZE ;
 int alloc_page (int ) ;
 int atomic_set (int *,int ) ;
 int bioset_exit (int *) ;
 int bioset_init (int *,int ,int ,int ) ;
 int calc_sectors (struct r10conf*,int ) ;
 int geo_new ;
 int geo_old ;
 int init_waitqueue_head (int *) ;
 struct r10conf* kcalloc (scalar_t__,int,int ) ;
 int kfree (struct r10conf*) ;
 struct r10conf* kzalloc (int,int ) ;
 scalar_t__ max (int ,int ) ;
 int md_register_thread (int ,struct mddev*,char*) ;
 int mdname (struct mddev*) ;
 int mempool_exit (int *) ;
 int mempool_init (int *,int ,int ,int ,struct r10conf*) ;
 int pr_warn (char*,int ,int ) ;
 int r10bio_pool_alloc ;
 int raid10d ;
 int rbio_pool_free ;
 int safe_put_page (int ) ;
 int setup_geo (struct geom*,struct mddev*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct r10conf *setup_conf(struct mddev *mddev)
{
 struct r10conf *conf = ((void*)0);
 int err = -EINVAL;
 struct geom geo;
 int copies;

 copies = setup_geo(&geo, mddev, geo_new);

 if (copies == -2) {
  pr_warn("md/raid10:%s: chunk size must be at least PAGE_SIZE(%ld) and be a power of 2.\n",
   mdname(mddev), PAGE_SIZE);
  goto out;
 }

 if (copies < 2 || copies > mddev->raid_disks) {
  pr_warn("md/raid10:%s: unsupported raid10 layout: 0x%8x\n",
   mdname(mddev), mddev->new_layout);
  goto out;
 }

 err = -ENOMEM;
 conf = kzalloc(sizeof(struct r10conf), GFP_KERNEL);
 if (!conf)
  goto out;


 conf->mirrors = kcalloc(mddev->raid_disks + max(0, -mddev->delta_disks),
    sizeof(struct raid10_info),
    GFP_KERNEL);
 if (!conf->mirrors)
  goto out;

 conf->tmppage = alloc_page(GFP_KERNEL);
 if (!conf->tmppage)
  goto out;

 conf->geo = geo;
 conf->copies = copies;
 err = mempool_init(&conf->r10bio_pool, NR_RAID_BIOS, r10bio_pool_alloc,
      rbio_pool_free, conf);
 if (err)
  goto out;

 err = bioset_init(&conf->bio_split, BIO_POOL_SIZE, 0, 0);
 if (err)
  goto out;

 calc_sectors(conf, mddev->dev_sectors);
 if (mddev->reshape_position == MaxSector) {
  conf->prev = conf->geo;
  conf->reshape_progress = MaxSector;
 } else {
  if (setup_geo(&conf->prev, mddev, geo_old) != conf->copies) {
   err = -EINVAL;
   goto out;
  }
  conf->reshape_progress = mddev->reshape_position;
  if (conf->prev.far_offset)
   conf->prev.stride = 1 << conf->prev.chunk_shift;
  else

   conf->prev.stride = conf->dev_sectors;
 }
 conf->reshape_safe = conf->reshape_progress;
 spin_lock_init(&conf->device_lock);
 INIT_LIST_HEAD(&conf->retry_list);
 INIT_LIST_HEAD(&conf->bio_end_io_list);

 spin_lock_init(&conf->resync_lock);
 init_waitqueue_head(&conf->wait_barrier);
 atomic_set(&conf->nr_pending, 0);

 err = -ENOMEM;
 conf->thread = md_register_thread(raid10d, mddev, "raid10");
 if (!conf->thread)
  goto out;

 conf->mddev = mddev;
 return conf;

 out:
 if (conf) {
  mempool_exit(&conf->r10bio_pool);
  kfree(conf->mirrors);
  safe_put_page(conf->tmppage);
  bioset_exit(&conf->bio_split);
  kfree(conf);
 }
 return ERR_PTR(err);
}
