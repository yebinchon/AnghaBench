
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {int np; } ;
struct of_dma {TYPE_1__* dma_router; struct dma_chan* (* of_dma_xlate ) (struct of_phandle_args*,struct of_dma*) ;void* (* of_dma_route_allocate ) (struct of_phandle_args*,struct of_dma*) ;} ;
struct dma_chan {void* route_data; TYPE_1__* router; } ;
typedef int dma_spec_target ;
struct TYPE_2__ {int dev; int (* route_free ) (int ,void*) ;} ;


 scalar_t__ IS_ERR (void*) ;
 int memcpy (struct of_phandle_args*,struct of_phandle_args*,int) ;
 struct of_dma* of_dma_find_controller (struct of_phandle_args*) ;
 int of_node_put (int ) ;
 void* stub1 (struct of_phandle_args*,struct of_dma*) ;
 struct dma_chan* stub2 (struct of_phandle_args*,struct of_dma*) ;
 int stub3 (int ,void*) ;

__attribute__((used)) static struct dma_chan *of_dma_router_xlate(struct of_phandle_args *dma_spec,
         struct of_dma *ofdma)
{
 struct dma_chan *chan;
 struct of_dma *ofdma_target;
 struct of_phandle_args dma_spec_target;
 void *route_data;


 memcpy(&dma_spec_target, dma_spec, sizeof(dma_spec_target));
 route_data = ofdma->of_dma_route_allocate(&dma_spec_target, ofdma);
 if (IS_ERR(route_data))
  return ((void*)0);

 ofdma_target = of_dma_find_controller(&dma_spec_target);
 if (!ofdma_target)
  return ((void*)0);

 chan = ofdma_target->of_dma_xlate(&dma_spec_target, ofdma_target);
 if (chan) {
  chan->router = ofdma->dma_router;
  chan->route_data = route_data;
 } else {
  ofdma->dma_router->route_free(ofdma->dma_router->dev,
           route_data);
 }





 of_node_put(dma_spec_target.np);
 return chan;
}
