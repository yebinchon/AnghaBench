
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_controller {int dummy; } ;
struct device {int dummy; } ;


 int mbox_controller_unregister (struct mbox_controller*) ;

__attribute__((used)) static void __devm_mbox_controller_unregister(struct device *dev, void *res)
{
 struct mbox_controller **mbox = res;

 mbox_controller_unregister(*mbox);
}
