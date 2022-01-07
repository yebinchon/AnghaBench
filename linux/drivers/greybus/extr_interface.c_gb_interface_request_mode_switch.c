
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int mode_switch; int mutex; int dev; int mode_switch_work; int mode_switch_completion; } ;


 int EBUSY ;
 int get_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int queue_work (int ,int *) ;
 int reinit_completion (int *) ;
 int system_long_wq ;

int gb_interface_request_mode_switch(struct gb_interface *intf)
{
 int ret = 0;

 mutex_lock(&intf->mutex);
 if (intf->mode_switch) {
  ret = -EBUSY;
  goto out_unlock;
 }

 intf->mode_switch = 1;
 reinit_completion(&intf->mode_switch_completion);





 get_device(&intf->dev);

 if (!queue_work(system_long_wq, &intf->mode_switch_work)) {
  put_device(&intf->dev);
  ret = -EBUSY;
  goto out_unlock;
 }

out_unlock:
 mutex_unlock(&intf->mutex);

 return ret;
}
