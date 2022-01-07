
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int release; int devt; int * parent; int * class; } ;
struct TYPE_9__ {struct mousedev* private; struct input_handler* handler; int name; int dev; } ;
struct mousedev {int exist; TYPE_1__ dev; TYPE_2__ handle; int cdev; int close_device; int open_device; int wait; int mutex; int client_lock; int mixdev_node; int client_list; } ;
struct input_handler {int dummy; } ;
struct input_dev {int dev; } ;


 int ENOMEM ;
 struct mousedev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INPUT_MAJOR ;
 int MKDEV (int ,int) ;
 int MOUSEDEV_MINORS ;
 int MOUSEDEV_MINOR_BASE ;
 int SINGLE_DEPTH_NESTING ;
 int cdev_device_add (int *,TYPE_1__*) ;
 int cdev_init (int *,int *) ;
 int dev_name (TYPE_1__*) ;
 int dev_set_name (TYPE_1__*,char*,...) ;
 int device_initialize (TYPE_1__*) ;
 int init_waitqueue_head (int *) ;
 int input_class ;
 int input_free_minor (int) ;
 int input_get_device (struct input_dev*) ;
 int input_register_handle (TYPE_2__*) ;
 int input_unregister_handle (TYPE_2__*) ;
 struct mousedev* kzalloc (int,int ) ;
 int lockdep_set_subclass (int *,int ) ;
 int mixdev_close_devices ;
 int mixdev_open_devices ;
 int mousedev_cleanup (struct mousedev*) ;
 int mousedev_close_device ;
 int mousedev_fops ;
 int mousedev_free ;
 int mousedev_open_device ;
 int mousedev_reserve_minor (int) ;
 int mutex_init (int *) ;
 int put_device (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct mousedev *mousedev_create(struct input_dev *dev,
     struct input_handler *handler,
     bool mixdev)
{
 struct mousedev *mousedev;
 int minor;
 int error;

 minor = mousedev_reserve_minor(mixdev);
 if (minor < 0) {
  error = minor;
  goto err_out;
 }

 mousedev = kzalloc(sizeof(struct mousedev), GFP_KERNEL);
 if (!mousedev) {
  error = -ENOMEM;
  goto err_free_minor;
 }

 INIT_LIST_HEAD(&mousedev->client_list);
 INIT_LIST_HEAD(&mousedev->mixdev_node);
 spin_lock_init(&mousedev->client_lock);
 mutex_init(&mousedev->mutex);
 lockdep_set_subclass(&mousedev->mutex,
        mixdev ? SINGLE_DEPTH_NESTING : 0);
 init_waitqueue_head(&mousedev->wait);

 if (mixdev) {
  dev_set_name(&mousedev->dev, "mice");

  mousedev->open_device = mixdev_open_devices;
  mousedev->close_device = mixdev_close_devices;
 } else {
  int dev_no = minor;

  if (dev_no < MOUSEDEV_MINOR_BASE + MOUSEDEV_MINORS)
   dev_no -= MOUSEDEV_MINOR_BASE;
  dev_set_name(&mousedev->dev, "mouse%d", dev_no);

  mousedev->open_device = mousedev_open_device;
  mousedev->close_device = mousedev_close_device;
 }

 mousedev->exist = 1;
 mousedev->handle.dev = input_get_device(dev);
 mousedev->handle.name = dev_name(&mousedev->dev);
 mousedev->handle.handler = handler;
 mousedev->handle.private = mousedev;

 mousedev->dev.class = &input_class;
 if (dev)
  mousedev->dev.parent = &dev->dev;
 mousedev->dev.devt = MKDEV(INPUT_MAJOR, minor);
 mousedev->dev.release = mousedev_free;
 device_initialize(&mousedev->dev);

 if (!mixdev) {
  error = input_register_handle(&mousedev->handle);
  if (error)
   goto err_free_mousedev;
 }

 cdev_init(&mousedev->cdev, &mousedev_fops);

 error = cdev_device_add(&mousedev->cdev, &mousedev->dev);
 if (error)
  goto err_cleanup_mousedev;

 return mousedev;

 err_cleanup_mousedev:
 mousedev_cleanup(mousedev);
 if (!mixdev)
  input_unregister_handle(&mousedev->handle);
 err_free_mousedev:
 put_device(&mousedev->dev);
 err_free_minor:
 input_free_minor(minor);
 err_out:
 return ERR_PTR(error);
}
