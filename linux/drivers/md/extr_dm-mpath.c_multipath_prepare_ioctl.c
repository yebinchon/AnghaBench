
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dev; } ;
struct pgpath {TYPE_2__ path; } ;
struct multipath {TYPE_3__* ti; int flags; int current_pg; int current_pgpath; } ;
struct dm_target {scalar_t__ len; struct multipath* private; } ;
struct block_device {int bd_inode; } ;
struct TYPE_6__ {int table; } ;
struct TYPE_4__ {struct block_device* bdev; } ;


 int EIO ;
 int ENOTCONN ;
 int MPATHF_PG_INIT_REQUIRED ;
 int MPATHF_QUEUE_IF_NO_PATH ;
 int MPATHF_QUEUE_IO ;
 struct pgpath* READ_ONCE (int ) ;
 int SECTOR_SHIFT ;
 struct pgpath* choose_pgpath (struct multipath*,int ) ;
 int dm_table_run_md_queue_async (int ) ;
 scalar_t__ i_size_read (int ) ;
 int pg_init_all_paths (struct multipath*) ;
 int process_queued_io_list (struct multipath*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int multipath_prepare_ioctl(struct dm_target *ti,
       struct block_device **bdev)
{
 struct multipath *m = ti->private;
 struct pgpath *current_pgpath;
 int r;

 current_pgpath = READ_ONCE(m->current_pgpath);
 if (!current_pgpath)
  current_pgpath = choose_pgpath(m, 0);

 if (current_pgpath) {
  if (!test_bit(MPATHF_QUEUE_IO, &m->flags)) {
   *bdev = current_pgpath->path.dev->bdev;
   r = 0;
  } else {

   r = -ENOTCONN;
  }
 } else {

  if (test_bit(MPATHF_QUEUE_IF_NO_PATH, &m->flags))
   r = -ENOTCONN;
  else
   r = -EIO;
 }

 if (r == -ENOTCONN) {
  if (!READ_ONCE(m->current_pg)) {

   (void) choose_pgpath(m, 0);
  }
  if (test_bit(MPATHF_PG_INIT_REQUIRED, &m->flags))
   pg_init_all_paths(m);
  dm_table_run_md_queue_async(m->ti->table);
  process_queued_io_list(m);
 }




 if (!r && ti->len != i_size_read((*bdev)->bd_inode) >> SECTOR_SHIFT)
  return 1;
 return r;
}
