
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_slave_map {int slave; int devname; } ;
struct TYPE_2__ {int mapcnt; struct dma_slave_map* map; } ;
struct dma_device {TYPE_1__ filter; } ;
struct device {int dummy; } ;


 char const* dev_name (struct device*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static const struct dma_slave_map *dma_filter_match(struct dma_device *device,
          const char *name,
          struct device *dev)
{
 int i;

 if (!device->filter.mapcnt)
  return ((void*)0);

 for (i = 0; i < device->filter.mapcnt; i++) {
  const struct dma_slave_map *map = &device->filter.map[i];

  if (!strcmp(map->devname, dev_name(dev)) &&
      !strcmp(map->slave, name))
   return map;
 }

 return ((void*)0);
}
