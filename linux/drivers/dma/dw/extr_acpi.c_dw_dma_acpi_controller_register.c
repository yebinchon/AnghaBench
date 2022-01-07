
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* dev; } ;
struct dw_dma {TYPE_1__ dma; } ;
struct device {int dummy; } ;
struct acpi_dma_filter_info {int filter_fn; int dma_cap; } ;


 int DMA_SLAVE ;
 int GFP_KERNEL ;
 int acpi_dma_controller_register (struct device*,int ,struct acpi_dma_filter_info*) ;
 int acpi_dma_simple_xlate ;
 int dev_err (struct device*,char*) ;
 struct acpi_dma_filter_info* devm_kzalloc (struct device*,int,int ) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dw_dma_acpi_filter ;
 int has_acpi_companion (struct device*) ;

void dw_dma_acpi_controller_register(struct dw_dma *dw)
{
 struct device *dev = dw->dma.dev;
 struct acpi_dma_filter_info *info;
 int ret;

 if (!has_acpi_companion(dev))
  return;

 info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return;

 dma_cap_zero(info->dma_cap);
 dma_cap_set(DMA_SLAVE, info->dma_cap);
 info->filter_fn = dw_dma_acpi_filter;

 ret = acpi_dma_controller_register(dev, acpi_dma_simple_xlate, info);
 if (ret)
  dev_err(dev, "could not register acpi_dma_controller\n");
}
