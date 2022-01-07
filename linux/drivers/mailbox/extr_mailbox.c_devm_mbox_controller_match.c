
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mbox_controller ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int devm_mbox_controller_match(struct device *dev, void *res, void *data)
{
 struct mbox_controller **mbox = res;

 if (WARN_ON(!mbox || !*mbox))
  return 0;

 return *mbox == data;
}
