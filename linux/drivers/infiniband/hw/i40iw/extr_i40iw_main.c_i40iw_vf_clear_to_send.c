
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_entry_t ;
struct i40iw_sc_dev {int vchnl_up; int vf_reqs; struct i40iw_device* back_dev; } ;
struct i40iw_device {int vchnl_msgs; } ;


 int I40IW_VCHNL_EVENT_TIMEOUT ;
 int add_wait_queue_exclusive (int *,int *) ;
 scalar_t__ atomic_read (int *) ;
 int init_wait (int *) ;
 int remove_wait_queue (int *,int *) ;
 int wait_event_timeout (int ,int,int ) ;
 int wq_has_sleeper (int *) ;

bool i40iw_vf_clear_to_send(struct i40iw_sc_dev *dev)
{
 struct i40iw_device *iwdev;
 wait_queue_entry_t wait;

 iwdev = dev->back_dev;

 if (!wq_has_sleeper(&dev->vf_reqs) &&
     (atomic_read(&iwdev->vchnl_msgs) == 0))
  return 1;

 init_wait(&wait);
 add_wait_queue_exclusive(&dev->vf_reqs, &wait);

 if (!wait_event_timeout(dev->vf_reqs,
    (atomic_read(&iwdev->vchnl_msgs) == 0),
    I40IW_VCHNL_EVENT_TIMEOUT))
  dev->vchnl_up = 0;

 remove_wait_queue(&dev->vf_reqs, &wait);

 return dev->vchnl_up;
}
