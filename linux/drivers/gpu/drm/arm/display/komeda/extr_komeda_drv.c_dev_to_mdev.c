
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_drv {struct komeda_dev* mdev; } ;
struct komeda_dev {int dummy; } ;
struct device {int dummy; } ;


 struct komeda_drv* dev_get_drvdata (struct device*) ;

struct komeda_dev *dev_to_mdev(struct device *dev)
{
 struct komeda_drv *mdrv = dev_get_drvdata(dev);

 return mdrv ? mdrv->mdev : ((void*)0);
}
