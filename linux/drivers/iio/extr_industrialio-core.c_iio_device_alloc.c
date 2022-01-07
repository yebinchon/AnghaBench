
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * bus; int * type; int groups; } ;
struct iio_dev {scalar_t__ id; int buffer_list; TYPE_1__ dev; int channel_attr_list; int info_exist_lock; int mlock; int groups; } ;


 size_t ALIGN (size_t,int) ;
 int GFP_KERNEL ;
 int IIO_ALIGN ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_drvdata (TYPE_1__*,void*) ;
 int dev_set_name (TYPE_1__*,char*,scalar_t__) ;
 int device_initialize (TYPE_1__*) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int iio_bus_type ;
 int iio_device_type ;
 int iio_ida ;
 int kfree (struct iio_dev*) ;
 struct iio_dev* kzalloc (size_t,int ) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;

struct iio_dev *iio_device_alloc(int sizeof_priv)
{
 struct iio_dev *dev;
 size_t alloc_size;

 alloc_size = sizeof(struct iio_dev);
 if (sizeof_priv) {
  alloc_size = ALIGN(alloc_size, IIO_ALIGN);
  alloc_size += sizeof_priv;
 }

 alloc_size += IIO_ALIGN - 1;

 dev = kzalloc(alloc_size, GFP_KERNEL);

 if (dev) {
  dev->dev.groups = dev->groups;
  dev->dev.type = &iio_device_type;
  dev->dev.bus = &iio_bus_type;
  device_initialize(&dev->dev);
  dev_set_drvdata(&dev->dev, (void *)dev);
  mutex_init(&dev->mlock);
  mutex_init(&dev->info_exist_lock);
  INIT_LIST_HEAD(&dev->channel_attr_list);

  dev->id = ida_simple_get(&iio_ida, 0, 0, GFP_KERNEL);
  if (dev->id < 0) {

   pr_err("failed to get device id\n");
   kfree(dev);
   return ((void*)0);
  }
  dev_set_name(&dev->dev, "iio:device%d", dev->id);
  INIT_LIST_HEAD(&dev->buffer_list);
 }

 return dev;
}
