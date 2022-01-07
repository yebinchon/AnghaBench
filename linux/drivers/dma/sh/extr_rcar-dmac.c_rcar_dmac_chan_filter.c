
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_dmac {int modules; } ;
struct of_phandle_args {int * args; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ device_config; } ;


 scalar_t__ rcar_dmac_device_config ;
 int test_and_set_bit (int ,int ) ;
 struct rcar_dmac* to_rcar_dmac (TYPE_1__*) ;

__attribute__((used)) static bool rcar_dmac_chan_filter(struct dma_chan *chan, void *arg)
{
 struct rcar_dmac *dmac = to_rcar_dmac(chan->device);
 struct of_phandle_args *dma_spec = arg;
 if (chan->device->device_config != rcar_dmac_device_config)
  return 0;

 return !test_and_set_bit(dma_spec->args[0], dmac->modules);
}
