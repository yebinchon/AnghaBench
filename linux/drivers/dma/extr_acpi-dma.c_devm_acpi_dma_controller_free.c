
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_acpi_dma_release ;
 int devres_release (struct device*,int ,int *,int *) ;

void devm_acpi_dma_controller_free(struct device *dev)
{
 WARN_ON(devres_release(dev, devm_acpi_dma_release, ((void*)0), ((void*)0)));
}
