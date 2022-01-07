
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cookie; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct usb_dmac_desc {scalar_t__ sg_index; scalar_t__ sg_len; TYPE_2__ vd; int done_cookie; int residue; } ;
struct usb_dmac_chan {struct usb_dmac_desc* desc; } ;


 int BUG_ON (int) ;
 int usb_dmac_chan_start_desc (struct usb_dmac_chan*) ;
 int usb_dmac_chan_start_sg (struct usb_dmac_chan*,scalar_t__) ;
 int usb_dmac_get_current_residue (struct usb_dmac_chan*,struct usb_dmac_desc*,scalar_t__) ;
 int vchan_cookie_complete (TYPE_2__*) ;

__attribute__((used)) static void usb_dmac_isr_transfer_end(struct usb_dmac_chan *chan)
{
 struct usb_dmac_desc *desc = chan->desc;

 BUG_ON(!desc);

 if (++desc->sg_index < desc->sg_len) {
  usb_dmac_chan_start_sg(chan, desc->sg_index);
 } else {
  desc->residue = usb_dmac_get_current_residue(chan, desc,
       desc->sg_index - 1);
  desc->done_cookie = desc->vd.tx.cookie;
  vchan_cookie_complete(&desc->vd);


  usb_dmac_chan_start_desc(chan);
 }
}
