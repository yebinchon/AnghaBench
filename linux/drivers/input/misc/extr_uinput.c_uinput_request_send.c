
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_request {int id; int code; int done; } ;
struct uinput_device {scalar_t__ state; int mutex; int dev; } ;


 int ENODEV ;
 int EV_UINPUT ;
 scalar_t__ UIST_CREATED ;
 int init_completion (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int uinput_dev_event (int ,int ,int ,int ) ;

__attribute__((used)) static int uinput_request_send(struct uinput_device *udev,
          struct uinput_request *request)
{
 int retval;

 retval = mutex_lock_interruptible(&udev->mutex);
 if (retval)
  return retval;

 if (udev->state != UIST_CREATED) {
  retval = -ENODEV;
  goto out;
 }

 init_completion(&request->done);





 uinput_dev_event(udev->dev, EV_UINPUT, request->code, request->id);

 out:
 mutex_unlock(&udev->mutex);
 return retval;
}
