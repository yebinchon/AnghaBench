
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efa_dev {int dummy; } ;


 int efa_request_mgmnt_irq (struct efa_dev*) ;
 int efa_setup_mgmnt_irq (struct efa_dev*) ;

__attribute__((used)) static int efa_set_mgmnt_irq(struct efa_dev *dev)
{
 efa_setup_mgmnt_irq(dev);

 return efa_request_mgmnt_irq(dev);
}
