
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int acpi_dma_controller_free (struct device*) ;

__attribute__((used)) static void devm_acpi_dma_release(struct device *dev, void *res)
{
 acpi_dma_controller_free(dev);
}
