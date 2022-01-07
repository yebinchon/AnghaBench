
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct extcon_dev {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_extcon_dev_match ;
 int devm_extcon_dev_notifier_all_unreg ;
 int devres_release (struct device*,int ,int ,struct extcon_dev*) ;

void devm_extcon_unregister_notifier_all(struct device *dev,
    struct extcon_dev *edev,
    struct notifier_block *nb)
{
 WARN_ON(devres_release(dev, devm_extcon_dev_notifier_all_unreg,
          devm_extcon_dev_match, edev));
}
