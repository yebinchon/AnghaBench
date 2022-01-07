
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct acpi_dma_spec {int dummy; } ;
struct acpi_dma_filter_info {int filter_fn; int dma_cap; } ;
struct acpi_dma {struct acpi_dma_filter_info* data; } ;


 struct dma_chan* dma_request_channel (int ,int ,struct acpi_dma_spec*) ;

struct dma_chan *acpi_dma_simple_xlate(struct acpi_dma_spec *dma_spec,
  struct acpi_dma *adma)
{
 struct acpi_dma_filter_info *info = adma->data;

 if (!info || !info->filter_fn)
  return ((void*)0);

 return dma_request_channel(info->dma_cap, info->filter_fn, dma_spec);
}
