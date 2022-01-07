
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_device {int requests_waitq; int requests_lock; int ** requests; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void uinput_request_release_slot(struct uinput_device *udev,
     unsigned int id)
{

 spin_lock(&udev->requests_lock);
 udev->requests[id] = ((void*)0);
 spin_unlock(&udev->requests_lock);

 wake_up(&udev->requests_waitq);
}
