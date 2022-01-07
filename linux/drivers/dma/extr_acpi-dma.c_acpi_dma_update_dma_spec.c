
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_dma_spec {scalar_t__ slave_id; int dev; } ;
struct acpi_dma {scalar_t__ base_request_line; scalar_t__ end_request_line; int dev; } ;



__attribute__((used)) static int acpi_dma_update_dma_spec(struct acpi_dma *adma,
  struct acpi_dma_spec *dma_spec)
{

 dma_spec->dev = adma->dev;


 if (adma->base_request_line == 0 && adma->end_request_line == 0)
  return 0;


 if (dma_spec->slave_id < adma->base_request_line ||
     dma_spec->slave_id > adma->end_request_line)
  return -1;





 dma_spec->slave_id -= adma->base_request_line;

 return 1;
}
