
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_am335x_xbar_map {int dma_line; int mux_val; } ;
struct ti_am335x_xbar_data {int iomem; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int ,int ) ;
 struct ti_am335x_xbar_data* dev_get_drvdata (struct device*) ;
 int kfree (struct ti_am335x_xbar_map*) ;
 int ti_am335x_xbar_write (int ,int ,int ) ;

__attribute__((used)) static void ti_am335x_xbar_free(struct device *dev, void *route_data)
{
 struct ti_am335x_xbar_data *xbar = dev_get_drvdata(dev);
 struct ti_am335x_xbar_map *map = route_data;

 dev_dbg(dev, "Unmapping XBAR event %u on channel %u\n",
  map->mux_val, map->dma_line);

 ti_am335x_xbar_write(xbar->iomem, map->dma_line, 0);
 kfree(map);
}
