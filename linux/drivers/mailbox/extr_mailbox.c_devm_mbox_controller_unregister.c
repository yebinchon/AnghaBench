
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_controller {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int __devm_mbox_controller_unregister ;
 int devm_mbox_controller_match ;
 int devres_release (struct device*,int ,int ,struct mbox_controller*) ;

void devm_mbox_controller_unregister(struct device *dev, struct mbox_controller *mbox)
{
 WARN_ON(devres_release(dev, __devm_mbox_controller_unregister,
          devm_mbox_controller_match, mbox));
}
