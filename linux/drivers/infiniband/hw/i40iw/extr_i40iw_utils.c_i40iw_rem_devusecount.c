
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_device {int close_wq; int use_count; } ;


 int atomic64_dec_and_test (int *) ;
 int wake_up (int *) ;

void i40iw_rem_devusecount(struct i40iw_device *iwdev)
{
 if (!atomic64_dec_and_test(&iwdev->use_count))
  return;
 wake_up(&iwdev->close_wq);
}
