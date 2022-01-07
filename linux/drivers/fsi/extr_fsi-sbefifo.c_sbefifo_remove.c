
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int devt; } ;
struct sbefifo {int dead; TYPE_1__ dev; int cdev; int lock; } ;
struct device {int dummy; } ;


 int cdev_device_del (int *,TYPE_1__*) ;
 int dev_dbg (struct device*,char*) ;
 struct sbefifo* dev_get_drvdata (struct device*) ;
 int device_for_each_child (struct device*,int *,int ) ;
 int fsi_free_minor (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_1__*) ;
 int sbefifo_unregister_child ;

__attribute__((used)) static int sbefifo_remove(struct device *dev)
{
 struct sbefifo *sbefifo = dev_get_drvdata(dev);

 dev_dbg(dev, "Removing sbefifo device...\n");

 mutex_lock(&sbefifo->lock);
 sbefifo->dead = 1;
 mutex_unlock(&sbefifo->lock);

 cdev_device_del(&sbefifo->cdev, &sbefifo->dev);
 fsi_free_minor(sbefifo->dev.devt);
 device_for_each_child(dev, ((void*)0), sbefifo_unregister_child);
 put_device(&sbefifo->dev);

 return 0;
}
