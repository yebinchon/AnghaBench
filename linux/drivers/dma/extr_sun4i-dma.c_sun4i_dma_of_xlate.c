
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sun4i_dma_vchan {int is_dedicated; int endpoint; } ;
struct sun4i_dma_dev {int slave; } ;
struct of_phandle_args {int* args; } ;
struct of_dma {struct sun4i_dma_dev* of_dma_data; } ;
struct dma_chan {int dummy; } ;


 int SUN4I_DDMA_DRQ_TYPE_LIMIT ;
 int SUN4I_NDMA_DRQ_TYPE_LIMIT ;
 struct dma_chan* dma_get_any_slave_channel (int *) ;
 struct sun4i_dma_vchan* to_sun4i_dma_vchan (struct dma_chan*) ;

__attribute__((used)) static struct dma_chan *sun4i_dma_of_xlate(struct of_phandle_args *dma_spec,
        struct of_dma *ofdma)
{
 struct sun4i_dma_dev *priv = ofdma->of_dma_data;
 struct sun4i_dma_vchan *vchan;
 struct dma_chan *chan;
 u8 is_dedicated = dma_spec->args[0];
 u8 endpoint = dma_spec->args[1];


 if (is_dedicated != 0 && is_dedicated != 1)
  return ((void*)0);


 if ((is_dedicated && endpoint >= SUN4I_DDMA_DRQ_TYPE_LIMIT) ||
     (!is_dedicated && endpoint >= SUN4I_NDMA_DRQ_TYPE_LIMIT))
  return ((void*)0);

 chan = dma_get_any_slave_channel(&priv->slave);
 if (!chan)
  return ((void*)0);


 vchan = to_sun4i_dma_vchan(chan);
 vchan->is_dedicated = is_dedicated;
 vchan->endpoint = endpoint;

 return chan;
}
