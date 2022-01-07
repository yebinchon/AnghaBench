
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_client {int dummy; } ;
struct evdev {int handle; int grab; int mutex; } ;


 int EINVAL ;
 int input_release_device (int *) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 struct evdev_client* rcu_dereference_protected (int ,int ) ;
 int synchronize_rcu () ;

__attribute__((used)) static int evdev_ungrab(struct evdev *evdev, struct evdev_client *client)
{
 struct evdev_client *grab = rcu_dereference_protected(evdev->grab,
     lockdep_is_held(&evdev->mutex));

 if (grab != client)
  return -EINVAL;

 rcu_assign_pointer(evdev->grab, ((void*)0));
 synchronize_rcu();
 input_release_device(&evdev->handle);

 return 0;
}
