
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_dmac_chan {scalar_t__ descs_allocated; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ USB_DMAC_INITIAL_NR_DESC ;
 int USB_DMAC_INITIAL_NR_SG ;
 int pm_runtime_get_sync (int ) ;
 struct usb_dmac_chan* to_usb_dmac_chan (struct dma_chan*) ;
 int usb_dmac_desc_alloc (struct usb_dmac_chan*,int ,int ) ;
 int usb_dmac_desc_free (struct usb_dmac_chan*) ;

__attribute__((used)) static int usb_dmac_alloc_chan_resources(struct dma_chan *chan)
{
 struct usb_dmac_chan *uchan = to_usb_dmac_chan(chan);
 int ret;

 while (uchan->descs_allocated < USB_DMAC_INITIAL_NR_DESC) {
  ret = usb_dmac_desc_alloc(uchan, USB_DMAC_INITIAL_NR_SG,
       GFP_KERNEL);
  if (ret < 0) {
   usb_dmac_desc_free(uchan);
   return ret;
  }
  uchan->descs_allocated++;
 }

 return pm_runtime_get_sync(chan->device->dev);
}
