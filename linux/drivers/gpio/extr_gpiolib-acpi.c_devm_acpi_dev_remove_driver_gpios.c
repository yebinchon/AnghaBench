
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_acpi_dev_release_driver_gpios ;
 int devres_release (struct device*,int ,int *,int *) ;

void devm_acpi_dev_remove_driver_gpios(struct device *dev)
{
 WARN_ON(devres_release(dev, devm_acpi_dev_release_driver_gpios, ((void*)0), ((void*)0)));
}
