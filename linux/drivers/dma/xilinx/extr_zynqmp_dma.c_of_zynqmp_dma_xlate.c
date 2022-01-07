
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zynqmp_dma_device {TYPE_1__* chan; } ;
struct of_phandle_args {int dummy; } ;
struct of_dma {struct zynqmp_dma_device* of_dma_data; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int common; } ;


 struct dma_chan* dma_get_slave_channel (int *) ;

__attribute__((used)) static struct dma_chan *of_zynqmp_dma_xlate(struct of_phandle_args *dma_spec,
         struct of_dma *ofdma)
{
 struct zynqmp_dma_device *zdev = ofdma->of_dma_data;

 return dma_get_slave_channel(&zdev->chan->common);
}
