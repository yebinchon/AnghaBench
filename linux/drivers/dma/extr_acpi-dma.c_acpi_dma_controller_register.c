
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct acpi_dma {struct dma_chan* (* acpi_dma_xlate ) (struct acpi_dma_spec*,struct acpi_dma*) ;int dma_controllers; void* data; struct device* dev; } ;
struct acpi_device {int dummy; } ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int acpi_dma_list ;
 int acpi_dma_lock ;
 int acpi_dma_parse_csrt (struct acpi_device*,struct acpi_dma*) ;
 struct acpi_dma* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int acpi_dma_controller_register(struct device *dev,
  struct dma_chan *(*acpi_dma_xlate)
  (struct acpi_dma_spec *, struct acpi_dma *),
  void *data)
{
 struct acpi_device *adev;
 struct acpi_dma *adma;

 if (!dev || !acpi_dma_xlate)
  return -EINVAL;


 adev = ACPI_COMPANION(dev);
 if (!adev)
  return -EINVAL;

 adma = kzalloc(sizeof(*adma), GFP_KERNEL);
 if (!adma)
  return -ENOMEM;

 adma->dev = dev;
 adma->acpi_dma_xlate = acpi_dma_xlate;
 adma->data = data;

 acpi_dma_parse_csrt(adev, adma);


 mutex_lock(&acpi_dma_lock);
 list_add_tail(&adma->dma_controllers, &acpi_dma_list);
 mutex_unlock(&acpi_dma_lock);

 return 0;
}
