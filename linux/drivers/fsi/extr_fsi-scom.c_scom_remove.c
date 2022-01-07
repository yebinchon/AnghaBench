
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int devt; } ;
struct scom_device {int dead; TYPE_1__ dev; int cdev; int lock; } ;
struct device {int dummy; } ;


 int cdev_device_del (int *,TYPE_1__*) ;
 struct scom_device* dev_get_drvdata (struct device*) ;
 int fsi_free_minor (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static int scom_remove(struct device *dev)
{
 struct scom_device *scom = dev_get_drvdata(dev);

 mutex_lock(&scom->lock);
 scom->dead = 1;
 mutex_unlock(&scom->lock);
 cdev_device_del(&scom->cdev, &scom->dev);
 fsi_free_minor(scom->dev.devt);
 put_device(&scom->dev);

 return 0;
}
