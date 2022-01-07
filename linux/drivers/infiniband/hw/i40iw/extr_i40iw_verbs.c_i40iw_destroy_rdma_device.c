
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_ib_device {int ibdev; TYPE_1__* iwdev; } ;
struct TYPE_2__ {int use_count; int close_wq; } ;


 int I40IW_EVENT_TIMEOUT ;
 int atomic64_read (int *) ;
 int ib_dealloc_device (int *) ;
 int ib_unregister_device (int *) ;
 int wait_event_timeout (int ,int,int ) ;

void i40iw_destroy_rdma_device(struct i40iw_ib_device *iwibdev)
{
 ib_unregister_device(&iwibdev->ibdev);
 wait_event_timeout(iwibdev->iwdev->close_wq,
      !atomic64_read(&iwibdev->iwdev->use_count),
      I40IW_EVENT_TIMEOUT);
 ib_dealloc_device(&iwibdev->ibdev);
}
