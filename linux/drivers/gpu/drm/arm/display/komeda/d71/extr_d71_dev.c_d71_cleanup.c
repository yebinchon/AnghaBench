
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_dev {struct d71_dev* chip_data; int dev; } ;
struct d71_dev {int dummy; } ;


 int devm_kfree (int ,struct d71_dev*) ;

__attribute__((used)) static void d71_cleanup(struct komeda_dev *mdev)
{
 struct d71_dev *d71 = mdev->chip_data;

 if (!d71)
  return;

 devm_kfree(mdev->dev, d71);
 mdev->chip_data = ((void*)0);
}
