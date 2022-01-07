
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct usb_dmac_chan {scalar_t__ iomem; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void usb_dmac_chan_write(struct usb_dmac_chan *chan, u32 reg, u32 data)
{
 writel(data, chan->iomem + reg);
}
