
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 struct dma_chan* ERR_PTR (int ) ;
 struct dma_chan* acpi_dma_request_slave_chan_by_index (struct device*,int) ;
 int dev_dbg (struct device*,char*,char const*,int) ;
 int device_property_match_string (struct device*,char*,char const*) ;
 int strcmp (char const*,char*) ;

struct dma_chan *acpi_dma_request_slave_chan_by_name(struct device *dev,
  const char *name)
{
 int index;

 index = device_property_match_string(dev, "dma-names", name);
 if (index < 0) {
  if (!strcmp(name, "tx"))
   index = 0;
  else if (!strcmp(name, "rx"))
   index = 1;
  else
   return ERR_PTR(-ENODEV);
 }

 dev_dbg(dev, "Looking for DMA channel \"%s\" at index %d...\n", name, index);
 return acpi_dma_request_slave_chan_by_index(dev, index);
}
