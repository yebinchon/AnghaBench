
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_rdev {int resource; int free_workq; int rqt_compl; int pbl_compl; scalar_t__ status_page; int uctx; int wr_log; } ;


 int c4iw_destroy_resource (int *) ;
 int c4iw_ocqp_pool_destroy (struct c4iw_rdev*) ;
 int c4iw_pblpool_destroy (struct c4iw_rdev*) ;
 int c4iw_release_dev_ucontext (struct c4iw_rdev*,int *) ;
 int c4iw_rqtpool_destroy (struct c4iw_rdev*) ;
 int destroy_workqueue (int ) ;
 int free_page (unsigned long) ;
 int kfree (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void c4iw_rdev_close(struct c4iw_rdev *rdev)
{
 kfree(rdev->wr_log);
 c4iw_release_dev_ucontext(rdev, &rdev->uctx);
 free_page((unsigned long)rdev->status_page);
 c4iw_pblpool_destroy(rdev);
 c4iw_rqtpool_destroy(rdev);
 wait_for_completion(&rdev->pbl_compl);
 wait_for_completion(&rdev->rqt_compl);
 c4iw_ocqp_pool_destroy(rdev);
 destroy_workqueue(rdev->free_workq);
 c4iw_destroy_resource(&rdev->resource);
}
