
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct siox_device {int dev; } ;
struct gpio_siox_ddata {int lock; int * setdata; } ;


 struct gpio_siox_ddata* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gpio_siox_set_data(struct siox_device *sdevice, u8 status, u8 buf[])
{
 struct gpio_siox_ddata *ddata = dev_get_drvdata(&sdevice->dev);

 mutex_lock(&ddata->lock);
 buf[0] = ddata->setdata[0];
 mutex_unlock(&ddata->lock);

 return 0;
}
