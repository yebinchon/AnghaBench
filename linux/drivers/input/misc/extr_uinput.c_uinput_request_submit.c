
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_request {int retval; int id; int done; } ;
struct uinput_device {int dummy; } ;


 int ETIMEDOUT ;
 int HZ ;
 int uinput_request_release_slot (struct uinput_device*,int ) ;
 int uinput_request_reserve_slot (struct uinput_device*,struct uinput_request*) ;
 int uinput_request_send (struct uinput_device*,struct uinput_request*) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int uinput_request_submit(struct uinput_device *udev,
     struct uinput_request *request)
{
 int retval;

 retval = uinput_request_reserve_slot(udev, request);
 if (retval)
  return retval;

 retval = uinput_request_send(udev, request);
 if (retval)
  goto out;

 if (!wait_for_completion_timeout(&request->done, 30 * HZ)) {
  retval = -ETIMEDOUT;
  goto out;
 }

 retval = request->retval;

 out:
 uinput_request_release_slot(udev, request->id);
 return retval;
}
