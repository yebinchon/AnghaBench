
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; TYPE_1__* altsetting; } ;
typedef struct usb_cdc_union_desc {size_t bLength; scalar_t__ bDescriptorType; scalar_t__ bDescriptorSubType; } const usb_cdc_union_desc ;
struct TYPE_2__ {void* extra; size_t extralen; } ;


 scalar_t__ USB_CDC_UNION_TYPE ;
 scalar_t__ USB_DT_CS_INTERFACE ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;

__attribute__((used)) static const struct usb_cdc_union_desc *
ims_pcu_get_cdc_union_desc(struct usb_interface *intf)
{
 const void *buf = intf->altsetting->extra;
 size_t buflen = intf->altsetting->extralen;
 struct usb_cdc_union_desc *union_desc;

 if (!buf) {
  dev_err(&intf->dev, "Missing descriptor data\n");
  return ((void*)0);
 }

 if (!buflen) {
  dev_err(&intf->dev, "Zero length descriptor\n");
  return ((void*)0);
 }

 while (buflen >= sizeof(*union_desc)) {
  union_desc = (struct usb_cdc_union_desc *)buf;

  if (union_desc->bLength > buflen) {
   dev_err(&intf->dev, "Too large descriptor\n");
   return ((void*)0);
  }

  if (union_desc->bDescriptorType == USB_DT_CS_INTERFACE &&
      union_desc->bDescriptorSubType == USB_CDC_UNION_TYPE) {
   dev_dbg(&intf->dev, "Found union header\n");

   if (union_desc->bLength >= sizeof(*union_desc))
    return union_desc;

   dev_err(&intf->dev,
    "Union descriptor too short (%d vs %zd)\n",
    union_desc->bLength, sizeof(*union_desc));
   return ((void*)0);
  }

  buflen -= union_desc->bLength;
  buf += union_desc->bLength;
 }

 dev_err(&intf->dev, "Missing CDC union descriptor\n");
 return ((void*)0);
}
