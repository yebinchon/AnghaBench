
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_extcon_dev_match ;
 int devm_extcon_dev_unreg ;
 int devres_release (struct device*,int ,int ,struct extcon_dev*) ;

void devm_extcon_dev_unregister(struct device *dev, struct extcon_dev *edev)
{
 WARN_ON(devres_release(dev, devm_extcon_dev_unreg,
          devm_extcon_dev_match, edev));
}
