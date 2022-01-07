
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int dummy; } ;
struct device {int dummy; } ;


 int extcon_dev_unregister (struct extcon_dev*) ;

__attribute__((used)) static void devm_extcon_dev_unreg(struct device *dev, void *res)
{
 extcon_dev_unregister(*(struct extcon_dev **)res);
}
