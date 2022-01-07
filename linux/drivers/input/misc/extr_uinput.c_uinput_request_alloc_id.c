
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_request {unsigned int id; } ;
struct uinput_device {int requests_lock; struct uinput_request** requests; } ;


 unsigned int UINPUT_NUM_REQUESTS ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool uinput_request_alloc_id(struct uinput_device *udev,
        struct uinput_request *request)
{
 unsigned int id;
 bool reserved = 0;

 spin_lock(&udev->requests_lock);

 for (id = 0; id < UINPUT_NUM_REQUESTS; id++) {
  if (!udev->requests[id]) {
   request->id = id;
   udev->requests[id] = request;
   reserved = 1;
   break;
  }
 }

 spin_unlock(&udev->requests_lock);
 return reserved;
}
