
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_7__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_4__* endpoint; TYPE_3__ desc; } ;
struct usb_cdc_union_desc {int bSlaveInterface0; int bMasterInterface0; } ;
struct ims_pcu {int max_out_size; int max_in_size; int dev; int * ep_in; int * ep_out; TYPE_2__* data_intf; int udev; int * ep_ctrl; void* max_ctrl_size; TYPE_1__* ctrl_intf; } ;
struct TYPE_8__ {int desc; } ;
struct TYPE_6__ {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_5__ {struct usb_host_interface* cur_altsetting; } ;


 int EINVAL ;
 int ENODEV ;
 int dev_err (int ,char*,...) ;
 struct usb_cdc_union_desc* ims_pcu_get_cdc_union_desc (struct usb_interface*) ;
 int usb_endpoint_is_bulk_in (int *) ;
 int usb_endpoint_is_bulk_out (int *) ;
 void* usb_endpoint_maxp (int *) ;
 void* usb_ifnum_to_if (int ,int ) ;

__attribute__((used)) static int ims_pcu_parse_cdc_data(struct usb_interface *intf, struct ims_pcu *pcu)
{
 const struct usb_cdc_union_desc *union_desc;
 struct usb_host_interface *alt;

 union_desc = ims_pcu_get_cdc_union_desc(intf);
 if (!union_desc)
  return -EINVAL;

 pcu->ctrl_intf = usb_ifnum_to_if(pcu->udev,
      union_desc->bMasterInterface0);
 if (!pcu->ctrl_intf)
  return -EINVAL;

 alt = pcu->ctrl_intf->cur_altsetting;

 if (alt->desc.bNumEndpoints < 1)
  return -ENODEV;

 pcu->ep_ctrl = &alt->endpoint[0].desc;
 pcu->max_ctrl_size = usb_endpoint_maxp(pcu->ep_ctrl);

 pcu->data_intf = usb_ifnum_to_if(pcu->udev,
      union_desc->bSlaveInterface0);
 if (!pcu->data_intf)
  return -EINVAL;

 alt = pcu->data_intf->cur_altsetting;
 if (alt->desc.bNumEndpoints != 2) {
  dev_err(pcu->dev,
   "Incorrect number of endpoints on data interface (%d)\n",
   alt->desc.bNumEndpoints);
  return -EINVAL;
 }

 pcu->ep_out = &alt->endpoint[0].desc;
 if (!usb_endpoint_is_bulk_out(pcu->ep_out)) {
  dev_err(pcu->dev,
   "First endpoint on data interface is not BULK OUT\n");
  return -EINVAL;
 }

 pcu->max_out_size = usb_endpoint_maxp(pcu->ep_out);
 if (pcu->max_out_size < 8) {
  dev_err(pcu->dev,
   "Max OUT packet size is too small (%zd)\n",
   pcu->max_out_size);
  return -EINVAL;
 }

 pcu->ep_in = &alt->endpoint[1].desc;
 if (!usb_endpoint_is_bulk_in(pcu->ep_in)) {
  dev_err(pcu->dev,
   "Second endpoint on data interface is not BULK IN\n");
  return -EINVAL;
 }

 pcu->max_in_size = usb_endpoint_maxp(pcu->ep_in);
 if (pcu->max_in_size < 8) {
  dev_err(pcu->dev,
   "Max IN packet size is too small (%zd)\n",
   pcu->max_in_size);
  return -EINVAL;
 }

 return 0;
}
