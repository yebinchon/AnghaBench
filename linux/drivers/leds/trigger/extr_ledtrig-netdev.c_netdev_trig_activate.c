
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priority; int notifier_call; } ;
struct led_netdev_data {TYPE_1__ notifier; scalar_t__ last_activity; int interval; scalar_t__ mode; scalar_t__* device_name; int * net_dev; struct led_classdev* led_cdev; int work; int lock; } ;
struct led_classdev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 int kfree (struct led_netdev_data*) ;
 struct led_netdev_data* kzalloc (int,int ) ;
 int led_set_trigger_data (struct led_classdev*,struct led_netdev_data*) ;
 int msecs_to_jiffies (int) ;
 int netdev_trig_notify ;
 int netdev_trig_work ;
 int register_netdevice_notifier (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int netdev_trig_activate(struct led_classdev *led_cdev)
{
 struct led_netdev_data *trigger_data;
 int rc;

 trigger_data = kzalloc(sizeof(struct led_netdev_data), GFP_KERNEL);
 if (!trigger_data)
  return -ENOMEM;

 spin_lock_init(&trigger_data->lock);

 trigger_data->notifier.notifier_call = netdev_trig_notify;
 trigger_data->notifier.priority = 10;

 INIT_DELAYED_WORK(&trigger_data->work, netdev_trig_work);

 trigger_data->led_cdev = led_cdev;
 trigger_data->net_dev = ((void*)0);
 trigger_data->device_name[0] = 0;

 trigger_data->mode = 0;
 atomic_set(&trigger_data->interval, msecs_to_jiffies(50));
 trigger_data->last_activity = 0;

 led_set_trigger_data(led_cdev, trigger_data);

 rc = register_netdevice_notifier(&trigger_data->notifier);
 if (rc)
  kfree(trigger_data);

 return rc;
}
