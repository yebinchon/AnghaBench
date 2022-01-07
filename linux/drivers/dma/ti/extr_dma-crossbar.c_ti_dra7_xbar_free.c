
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_dra7_xbar_map {int xbar_out; int xbar_in; } ;
struct ti_dra7_xbar_data {int mutex; int dma_inuse; int safe_val; int iomem; } ;
struct device {int dummy; } ;


 int clear_bit (int ,int ) ;
 int dev_dbg (struct device*,char*,int ,int ) ;
 struct ti_dra7_xbar_data* dev_get_drvdata (struct device*) ;
 int kfree (struct ti_dra7_xbar_map*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ti_dra7_xbar_write (int ,int ,int ) ;

__attribute__((used)) static void ti_dra7_xbar_free(struct device *dev, void *route_data)
{
 struct ti_dra7_xbar_data *xbar = dev_get_drvdata(dev);
 struct ti_dra7_xbar_map *map = route_data;

 dev_dbg(dev, "Unmapping XBAR%u (was routed to %d)\n",
  map->xbar_in, map->xbar_out);

 ti_dra7_xbar_write(xbar->iomem, map->xbar_out, xbar->safe_val);
 mutex_lock(&xbar->mutex);
 clear_bit(map->xbar_out, xbar->dma_inuse);
 mutex_unlock(&xbar->mutex);
 kfree(map);
}
