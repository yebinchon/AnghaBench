
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct usb_dmac_chan {scalar_t__ iomem; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 usb_dmac_chan_read(struct usb_dmac_chan *chan, u32 reg)
{
 return readl(chan->iomem + reg);
}
