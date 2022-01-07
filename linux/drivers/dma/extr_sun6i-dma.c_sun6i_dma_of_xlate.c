
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sun6i_vchan {scalar_t__ port; } ;
struct sun6i_dma_dev {scalar_t__ max_request; int slave; } ;
struct of_phandle_args {scalar_t__* args; } ;
struct of_dma {struct sun6i_dma_dev* of_dma_data; } ;
struct dma_chan {int dummy; } ;


 struct dma_chan* dma_get_any_slave_channel (int *) ;
 struct sun6i_vchan* to_sun6i_vchan (struct dma_chan*) ;

__attribute__((used)) static struct dma_chan *sun6i_dma_of_xlate(struct of_phandle_args *dma_spec,
        struct of_dma *ofdma)
{
 struct sun6i_dma_dev *sdev = ofdma->of_dma_data;
 struct sun6i_vchan *vchan;
 struct dma_chan *chan;
 u8 port = dma_spec->args[0];

 if (port > sdev->max_request)
  return ((void*)0);

 chan = dma_get_any_slave_channel(&sdev->slave);
 if (!chan)
  return ((void*)0);

 vchan = to_sun6i_vchan(chan);
 vchan->port = port;

 return chan;
}
