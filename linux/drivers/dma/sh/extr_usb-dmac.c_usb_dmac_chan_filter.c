
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_dmac_chan {scalar_t__ index; } ;
struct of_phandle_args {scalar_t__* args; } ;
struct dma_chan {int dummy; } ;


 struct usb_dmac_chan* to_usb_dmac_chan (struct dma_chan*) ;

__attribute__((used)) static bool usb_dmac_chan_filter(struct dma_chan *chan, void *arg)
{
 struct usb_dmac_chan *uchan = to_usb_dmac_chan(chan);
 struct of_phandle_args *dma_spec = arg;


 if (uchan->index != dma_spec->args[0])
  return 0;

 return 1;
}
