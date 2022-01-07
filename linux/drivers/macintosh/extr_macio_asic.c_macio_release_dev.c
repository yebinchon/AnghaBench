
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_dev {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct macio_dev*) ;
 struct macio_dev* to_macio_device (struct device*) ;

__attribute__((used)) static void macio_release_dev(struct device *dev)
{
 struct macio_dev *mdev;

        mdev = to_macio_device(dev);
 kfree(mdev);
}
