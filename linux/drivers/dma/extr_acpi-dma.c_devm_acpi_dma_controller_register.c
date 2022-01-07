
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int acpi_dma_controller_register (struct device*,struct dma_chan* (*) (struct acpi_dma_spec*,struct acpi_dma*),void*) ;
 int devm_acpi_dma_release ;
 int devres_add (struct device*,void*) ;
 void* devres_alloc (int ,int ,int ) ;
 int devres_free (void*) ;

int devm_acpi_dma_controller_register(struct device *dev,
  struct dma_chan *(*acpi_dma_xlate)
  (struct acpi_dma_spec *, struct acpi_dma *),
  void *data)
{
 void *res;
 int ret;

 res = devres_alloc(devm_acpi_dma_release, 0, GFP_KERNEL);
 if (!res)
  return -ENOMEM;

 ret = acpi_dma_controller_register(dev, acpi_dma_xlate, data);
 if (ret) {
  devres_free(res);
  return ret;
 }
 devres_add(dev, res);
 return 0;
}
