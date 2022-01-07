
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owner; } ;
struct device {int release; struct device* parent; int class; scalar_t__ devt; } ;
struct gnss_device {int id; TYPE_1__ cdev; void* write_buf; int read_fifo; int read_queue; int write_mutex; int read_mutex; int rwsem; struct device dev; } ;


 int GFP_KERNEL ;
 int GNSS_MINORS ;
 int GNSS_READ_FIFO_SIZE ;
 int GNSS_WRITE_BUF_SIZE ;
 int THIS_MODULE ;
 int cdev_init (TYPE_1__*,int *) ;
 int dev_set_drvdata (struct device*,struct gnss_device*) ;
 int dev_set_name (struct device*,char*,int) ;
 int device_initialize (struct device*) ;
 int gnss_class ;
 int gnss_device_release ;
 scalar_t__ gnss_first ;
 int gnss_fops ;
 int gnss_minors ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int kfifo_alloc (int *,int ,int ) ;
 int kfree (struct gnss_device*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int put_device (struct device*) ;

struct gnss_device *gnss_allocate_device(struct device *parent)
{
 struct gnss_device *gdev;
 struct device *dev;
 int id;
 int ret;

 gdev = kzalloc(sizeof(*gdev), GFP_KERNEL);
 if (!gdev)
  return ((void*)0);

 id = ida_simple_get(&gnss_minors, 0, GNSS_MINORS, GFP_KERNEL);
 if (id < 0) {
  kfree(gdev);
  return ((void*)0);
 }

 gdev->id = id;

 dev = &gdev->dev;
 device_initialize(dev);
 dev->devt = gnss_first + id;
 dev->class = gnss_class;
 dev->parent = parent;
 dev->release = gnss_device_release;
 dev_set_drvdata(dev, gdev);
 dev_set_name(dev, "gnss%d", id);

 init_rwsem(&gdev->rwsem);
 mutex_init(&gdev->read_mutex);
 mutex_init(&gdev->write_mutex);
 init_waitqueue_head(&gdev->read_queue);

 ret = kfifo_alloc(&gdev->read_fifo, GNSS_READ_FIFO_SIZE, GFP_KERNEL);
 if (ret)
  goto err_put_device;

 gdev->write_buf = kzalloc(GNSS_WRITE_BUF_SIZE, GFP_KERNEL);
 if (!gdev->write_buf)
  goto err_put_device;

 cdev_init(&gdev->cdev, &gnss_fops);
 gdev->cdev.owner = THIS_MODULE;

 return gdev;

err_put_device:
 put_device(dev);

 return ((void*)0);
}
