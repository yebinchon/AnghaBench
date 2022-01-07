
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int kfree (struct device**) ;

void usnic_uiom_free_dev_list(struct device **devs)
{
 kfree(devs);
}
