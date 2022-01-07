
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct udl_device {int sku_pixel_limit; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,int ) ;
 int DRM_ERROR (char*) ;
 int DRM_INFO (char*,int,char*) ;
 int GFP_KERNEL ;
 int MAX_VENDOR_DESCRIPTOR_SIZE ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int le16_to_cpu (int) ;
 int le32_to_cpu (int ) ;
 struct udl_device* to_udl (struct drm_device*) ;
 int usb_get_descriptor (struct usb_device*,int,int ,char*,int ) ;

__attribute__((used)) static int udl_parse_vendor_descriptor(struct drm_device *dev,
           struct usb_device *usbdev)
{
 struct udl_device *udl = to_udl(dev);
 char *desc;
 char *buf;
 char *desc_end;

 u8 total_len = 0;

 buf = kzalloc(MAX_VENDOR_DESCRIPTOR_SIZE, GFP_KERNEL);
 if (!buf)
  return 0;
 desc = buf;

 total_len = usb_get_descriptor(usbdev, 0x5f,
        0, desc, MAX_VENDOR_DESCRIPTOR_SIZE);
 if (total_len > 5) {
  DRM_INFO("vendor descriptor length:%x data:%11ph\n",
   total_len, desc);

  if ((desc[0] != total_len) ||
      (desc[1] != 0x5f) ||
      (desc[2] != 0x01) ||
      (desc[3] != 0x00) ||
      (desc[4] != total_len - 2))
   goto unrecognized;

  desc_end = desc + total_len;
  desc += 5;

  while (desc < desc_end) {
   u8 length;
   u16 key;

   key = le16_to_cpu(*((u16 *) desc));
   desc += sizeof(u16);
   length = *desc;
   desc++;

   switch (key) {
   case 0x0200: {
    u32 max_area;
    max_area = le32_to_cpu(*((u32 *)desc));
    DRM_DEBUG("DL chip limited to %d pixel modes\n",
     max_area);
    udl->sku_pixel_limit = max_area;
    break;
   }
   default:
    break;
   }
   desc += length;
  }
 }

 goto success;

unrecognized:

 DRM_ERROR("Unrecognized vendor firmware descriptor\n");

success:
 kfree(buf);
 return 1;
}
