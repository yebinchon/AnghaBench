
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* dev; } ;
struct dw_dma {TYPE_1__ dma; } ;
struct device {int dummy; } ;


 int acpi_dma_controller_free (struct device*) ;
 int has_acpi_companion (struct device*) ;

void dw_dma_acpi_controller_free(struct dw_dma *dw)
{
 struct device *dev = dw->dma.dev;

 if (!has_acpi_companion(dev))
  return;

 acpi_dma_controller_free(dev);
}
