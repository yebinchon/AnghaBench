
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wb_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_write_behind; } ;
struct mddev {int * wb_info_pool; TYPE_1__ bitmap_info; } ;
struct md_rdev {int flags; } ;


 int NR_WB_INFOS ;
 int WriteMostly ;
 int mddev_resume (struct mddev*) ;
 int mddev_suspend (struct mddev*) ;
 int memalloc_noio_restore (unsigned int) ;
 unsigned int memalloc_noio_save () ;
 int * mempool_create_kmalloc_pool (int ,int) ;
 int pr_err (char*) ;
 int rdev_init_wb (struct md_rdev*) ;
 int test_bit (int ,int *) ;

void mddev_create_wb_pool(struct mddev *mddev, struct md_rdev *rdev,
     bool is_suspend)
{
 if (mddev->bitmap_info.max_write_behind == 0)
  return;

 if (!test_bit(WriteMostly, &rdev->flags) || !rdev_init_wb(rdev))
  return;

 if (mddev->wb_info_pool == ((void*)0)) {
  unsigned int noio_flag;

  if (!is_suspend)
   mddev_suspend(mddev);
  noio_flag = memalloc_noio_save();
  mddev->wb_info_pool = mempool_create_kmalloc_pool(NR_WB_INFOS,
       sizeof(struct wb_info));
  memalloc_noio_restore(noio_flag);
  if (!mddev->wb_info_pool)
   pr_err("can't alloc memory pool for writemostly\n");
  if (!is_suspend)
   mddev_resume(mddev);
 }
}
