
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev_notifier_devres {int nb; int id; int edev; } ;
struct device {int dummy; } ;


 int extcon_unregister_notifier (int ,int ,int ) ;

__attribute__((used)) static void devm_extcon_dev_notifier_unreg(struct device *dev, void *res)
{
 struct extcon_dev_notifier_devres *this = res;

 extcon_unregister_notifier(this->edev, this->id, this->nb);
}
