
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct input_handler {int dummy; } ;
struct input_device_id {int dummy; } ;
struct input_dev {int dev; } ;
struct TYPE_8__ {int release; int * parent; int * class; int devt; } ;
struct TYPE_9__ {struct evdev* private; struct input_handler* handler; int name; int dev; } ;
struct evdev {int exist; TYPE_1__ dev; TYPE_2__ handle; int cdev; int wait; int mutex; int client_lock; int client_list; } ;


 int ENOMEM ;
 int EVDEV_MINORS ;
 int EVDEV_MINOR_BASE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INPUT_MAJOR ;
 int MKDEV (int ,int) ;
 int cdev_device_add (int *,TYPE_1__*) ;
 int cdev_init (int *,int *) ;
 int dev_name (TYPE_1__*) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_initialize (TYPE_1__*) ;
 int evdev_cleanup (struct evdev*) ;
 int evdev_fops ;
 int evdev_free ;
 int init_waitqueue_head (int *) ;
 int input_class ;
 int input_free_minor (int) ;
 int input_get_device (struct input_dev*) ;
 int input_get_new_minor (int,int,int) ;
 int input_register_handle (TYPE_2__*) ;
 int input_unregister_handle (TYPE_2__*) ;
 struct evdev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_err (char*,int) ;
 int put_device (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int evdev_connect(struct input_handler *handler, struct input_dev *dev,
    const struct input_device_id *id)
{
 struct evdev *evdev;
 int minor;
 int dev_no;
 int error;

 minor = input_get_new_minor(EVDEV_MINOR_BASE, EVDEV_MINORS, 1);
 if (minor < 0) {
  error = minor;
  pr_err("failed to reserve new minor: %d\n", error);
  return error;
 }

 evdev = kzalloc(sizeof(struct evdev), GFP_KERNEL);
 if (!evdev) {
  error = -ENOMEM;
  goto err_free_minor;
 }

 INIT_LIST_HEAD(&evdev->client_list);
 spin_lock_init(&evdev->client_lock);
 mutex_init(&evdev->mutex);
 init_waitqueue_head(&evdev->wait);
 evdev->exist = 1;

 dev_no = minor;

 if (dev_no < EVDEV_MINOR_BASE + EVDEV_MINORS)
  dev_no -= EVDEV_MINOR_BASE;
 dev_set_name(&evdev->dev, "event%d", dev_no);

 evdev->handle.dev = input_get_device(dev);
 evdev->handle.name = dev_name(&evdev->dev);
 evdev->handle.handler = handler;
 evdev->handle.private = evdev;

 evdev->dev.devt = MKDEV(INPUT_MAJOR, minor);
 evdev->dev.class = &input_class;
 evdev->dev.parent = &dev->dev;
 evdev->dev.release = evdev_free;
 device_initialize(&evdev->dev);

 error = input_register_handle(&evdev->handle);
 if (error)
  goto err_free_evdev;

 cdev_init(&evdev->cdev, &evdev_fops);

 error = cdev_device_add(&evdev->cdev, &evdev->dev);
 if (error)
  goto err_cleanup_evdev;

 return 0;

 err_cleanup_evdev:
 evdev_cleanup(evdev);
 input_unregister_handle(&evdev->handle);
 err_free_evdev:
 put_device(&evdev->dev);
 err_free_minor:
 input_free_minor(minor);
 return error;
}
