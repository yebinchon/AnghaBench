
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_dev {int dev; } ;
struct komeda_component {int dummy; } ;


 int devm_kfree (int ,struct komeda_component*) ;

void komeda_component_destroy(struct komeda_dev *mdev,
         struct komeda_component *c)
{
 devm_kfree(mdev->dev, c);
}
