
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct per_bio_data {int dummy; } ;
struct log_writes_c {int sectorsize; int next_sector; int logging_enabled; int device_supports_discard; int end_sector; TYPE_1__* logdev; TYPE_1__* dev; int log_kthread; int sectorshift; int pending_blocks; int io_blocks; int super_done; int wait; int logging_blocks; int unflushed_blocks; int blocks_lock; } ;
struct dm_target {char* error; int num_flush_bios; int flush_supported; int num_discard_bios; int discards_supported; int per_io_data_size; struct log_writes_c* private; int table; } ;
struct dm_arg_set {unsigned int argc; char** argv; } ;
struct TYPE_3__ {int bdev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SECTOR_SHIFT ;
 int atomic_set (int *,int ) ;
 int bdev_logical_block_size (int ) ;
 int dm_get_device (struct dm_target*,char const*,int ,TYPE_1__**) ;
 int dm_put_device (struct dm_target*,TYPE_1__*) ;
 char* dm_shift_arg (struct dm_arg_set*) ;
 int dm_table_get_mode (int ) ;
 int ilog2 (int) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct log_writes_c*) ;
 int kthread_run (int ,struct log_writes_c*,char*) ;
 struct log_writes_c* kzalloc (int,int ) ;
 int log_writes_kthread ;
 int logdev_last_sector (struct log_writes_c*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int log_writes_ctr(struct dm_target *ti, unsigned int argc, char **argv)
{
 struct log_writes_c *lc;
 struct dm_arg_set as;
 const char *devname, *logdevname;
 int ret;

 as.argc = argc;
 as.argv = argv;

 if (argc < 2) {
  ti->error = "Invalid argument count";
  return -EINVAL;
 }

 lc = kzalloc(sizeof(struct log_writes_c), GFP_KERNEL);
 if (!lc) {
  ti->error = "Cannot allocate context";
  return -ENOMEM;
 }
 spin_lock_init(&lc->blocks_lock);
 INIT_LIST_HEAD(&lc->unflushed_blocks);
 INIT_LIST_HEAD(&lc->logging_blocks);
 init_waitqueue_head(&lc->wait);
 init_completion(&lc->super_done);
 atomic_set(&lc->io_blocks, 0);
 atomic_set(&lc->pending_blocks, 0);

 devname = dm_shift_arg(&as);
 ret = dm_get_device(ti, devname, dm_table_get_mode(ti->table), &lc->dev);
 if (ret) {
  ti->error = "Device lookup failed";
  goto bad;
 }

 logdevname = dm_shift_arg(&as);
 ret = dm_get_device(ti, logdevname, dm_table_get_mode(ti->table),
       &lc->logdev);
 if (ret) {
  ti->error = "Log device lookup failed";
  dm_put_device(ti, lc->dev);
  goto bad;
 }

 lc->sectorsize = bdev_logical_block_size(lc->dev->bdev);
 lc->sectorshift = ilog2(lc->sectorsize);
 lc->log_kthread = kthread_run(log_writes_kthread, lc, "log-write");
 if (IS_ERR(lc->log_kthread)) {
  ret = PTR_ERR(lc->log_kthread);
  ti->error = "Couldn't alloc kthread";
  dm_put_device(ti, lc->dev);
  dm_put_device(ti, lc->logdev);
  goto bad;
 }






 lc->next_sector = lc->sectorsize >> SECTOR_SHIFT;
 lc->logging_enabled = 1;
 lc->end_sector = logdev_last_sector(lc);
 lc->device_supports_discard = 1;

 ti->num_flush_bios = 1;
 ti->flush_supported = 1;
 ti->num_discard_bios = 1;
 ti->discards_supported = 1;
 ti->per_io_data_size = sizeof(struct per_bio_data);
 ti->private = lc;
 return 0;

bad:
 kfree(lc);
 return ret;
}
