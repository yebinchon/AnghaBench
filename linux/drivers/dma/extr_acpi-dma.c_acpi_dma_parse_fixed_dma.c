
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_resource_fixed_dma {int request_lines; int channels; } ;
struct TYPE_3__ {struct acpi_resource_fixed_dma fixed_dma; } ;
struct acpi_resource {scalar_t__ type; TYPE_1__ data; } ;
struct TYPE_4__ {int slave_id; int chan_id; } ;
struct acpi_dma_parser_data {scalar_t__ index; TYPE_2__ dma_spec; int n; } ;


 scalar_t__ ACPI_RESOURCE_TYPE_FIXED_DMA ;

__attribute__((used)) static int acpi_dma_parse_fixed_dma(struct acpi_resource *res, void *data)
{
 struct acpi_dma_parser_data *pdata = data;

 if (res->type == ACPI_RESOURCE_TYPE_FIXED_DMA) {
  struct acpi_resource_fixed_dma *dma = &res->data.fixed_dma;

  if (pdata->n++ == pdata->index) {
   pdata->dma_spec.chan_id = dma->channels;
   pdata->dma_spec.slave_id = dma->request_lines;
  }
 }


 return 1;
}
