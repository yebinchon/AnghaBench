
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int completion; } ;
struct mapped_device {int numa_node_id; int init_tio_pdu; int stats; int bdev; TYPE_4__* disk; int wq; int name; int dax_dev; TYPE_3__* queue; TYPE_2__ kobj_holder; int eventq; int work; int wait; int uevent_lock; int table_devices; int uevent_list; int uevent_seq; int event_nr; int open_count; int holders; int deferred_lock; int table_devices_lock; int type_lock; int suspend_lock; int type; int io_barrier; } ;
struct TYPE_10__ {int first_minor; int disk_name; struct mapped_device* private_data; TYPE_3__* queue; int * fops; int major; } ;
struct TYPE_9__ {TYPE_1__* backing_dev_info; struct mapped_device* queuedata; } ;
struct TYPE_7__ {struct mapped_device* congested_data; } ;


 int BUG_ON (int) ;
 int CONFIG_DAX_DRIVER ;
 int DMWARN (char*) ;
 int DM_ANY_MINOR ;
 int DM_TYPE_NONE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 void* MINOR_ALLOCED ;
 int MKDEV (int ,int) ;
 int THIS_MODULE ;
 int WQ_MEM_RECLAIM ;
 int _major ;
 int _minor_idr ;
 int _minor_lock ;
 int add_disk_no_queue_reg (TYPE_4__*) ;
 int alloc_dax (struct mapped_device*,int ,int *,int ) ;
 TYPE_4__* alloc_disk_node (int,int) ;
 int alloc_workqueue (char*,int ,int ) ;
 int atomic_set (int *,int) ;
 int bdget_disk (TYPE_4__*,int ) ;
 TYPE_3__* blk_alloc_queue_node (int ,int) ;
 int cleanup_mapped_device (struct mapped_device*) ;
 int dm_blk_dops ;
 int dm_dax_ops ;
 int dm_get_numa_node () ;
 int dm_stats_init (int *) ;
 int dm_wq_work ;
 int format_dev_t (int ,int ) ;
 int free_minor (int) ;
 void* idr_replace (int *,struct mapped_device*,int) ;
 int init_completion (int *) ;
 int init_srcu_struct (int *) ;
 int init_waitqueue_head (int *) ;
 int kvfree (struct mapped_device*) ;
 struct mapped_device* kvzalloc_node (int,int ,int) ;
 int module_put (int ) ;
 int mutex_init (int *) ;
 int next_free_minor (int*) ;
 int specific_minor (int) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int sprintf (int ,char*,int) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct mapped_device *alloc_dev(int minor)
{
 int r, numa_node_id = dm_get_numa_node();
 struct mapped_device *md;
 void *old_md;

 md = kvzalloc_node(sizeof(*md), GFP_KERNEL, numa_node_id);
 if (!md) {
  DMWARN("unable to allocate device, out of memory.");
  return ((void*)0);
 }

 if (!try_module_get(THIS_MODULE))
  goto bad_module_get;


 if (minor == DM_ANY_MINOR)
  r = next_free_minor(&minor);
 else
  r = specific_minor(minor);
 if (r < 0)
  goto bad_minor;

 r = init_srcu_struct(&md->io_barrier);
 if (r < 0)
  goto bad_io_barrier;

 md->numa_node_id = numa_node_id;
 md->init_tio_pdu = 0;
 md->type = DM_TYPE_NONE;
 mutex_init(&md->suspend_lock);
 mutex_init(&md->type_lock);
 mutex_init(&md->table_devices_lock);
 spin_lock_init(&md->deferred_lock);
 atomic_set(&md->holders, 1);
 atomic_set(&md->open_count, 0);
 atomic_set(&md->event_nr, 0);
 atomic_set(&md->uevent_seq, 0);
 INIT_LIST_HEAD(&md->uevent_list);
 INIT_LIST_HEAD(&md->table_devices);
 spin_lock_init(&md->uevent_lock);

 md->queue = blk_alloc_queue_node(GFP_KERNEL, numa_node_id);
 if (!md->queue)
  goto bad;
 md->queue->queuedata = md;
 md->queue->backing_dev_info->congested_data = md;

 md->disk = alloc_disk_node(1, md->numa_node_id);
 if (!md->disk)
  goto bad;

 init_waitqueue_head(&md->wait);
 INIT_WORK(&md->work, dm_wq_work);
 init_waitqueue_head(&md->eventq);
 init_completion(&md->kobj_holder.completion);

 md->disk->major = _major;
 md->disk->first_minor = minor;
 md->disk->fops = &dm_blk_dops;
 md->disk->queue = md->queue;
 md->disk->private_data = md;
 sprintf(md->disk->disk_name, "dm-%d", minor);

 if (IS_ENABLED(CONFIG_DAX_DRIVER)) {
  md->dax_dev = alloc_dax(md, md->disk->disk_name,
     &dm_dax_ops, 0);
  if (!md->dax_dev)
   goto bad;
 }

 add_disk_no_queue_reg(md->disk);
 format_dev_t(md->name, MKDEV(_major, minor));

 md->wq = alloc_workqueue("kdmflush", WQ_MEM_RECLAIM, 0);
 if (!md->wq)
  goto bad;

 md->bdev = bdget_disk(md->disk, 0);
 if (!md->bdev)
  goto bad;

 dm_stats_init(&md->stats);


 spin_lock(&_minor_lock);
 old_md = idr_replace(&_minor_idr, md, minor);
 spin_unlock(&_minor_lock);

 BUG_ON(old_md != MINOR_ALLOCED);

 return md;

bad:
 cleanup_mapped_device(md);
bad_io_barrier:
 free_minor(minor);
bad_minor:
 module_put(THIS_MODULE);
bad_module_get:
 kvfree(md);
 return ((void*)0);
}
