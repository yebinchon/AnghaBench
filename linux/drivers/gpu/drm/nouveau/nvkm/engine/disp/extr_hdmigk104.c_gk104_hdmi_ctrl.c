
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct packed_hdmi_infoframe {int header; int subpack0_low; int subpack0_high; int subpack1_low; int subpack1_high; } ;
struct nvkm_ior {TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;


 int nvkm_mask (struct nvkm_device*,int const,int,int const) ;
 int nvkm_wr32 (struct nvkm_device*,int const,int) ;
 int pack_hdmi_infoframe (struct packed_hdmi_infoframe*,int*,int) ;

void
gk104_hdmi_ctrl(struct nvkm_ior *ior, int head, bool enable, u8 max_ac_packet,
  u8 rekey, u8 *avi, u8 avi_size, u8 *vendor, u8 vendor_size)
{
 struct nvkm_device *device = ior->disp->engine.subdev.device;
 const u32 ctrl = 0x40000000 * enable |
    max_ac_packet << 16 |
    rekey;
 const u32 hoff = head * 0x800;
 const u32 hdmi = head * 0x400;
 struct packed_hdmi_infoframe avi_infoframe;
 struct packed_hdmi_infoframe vendor_infoframe;

 pack_hdmi_infoframe(&avi_infoframe, avi, avi_size);
 pack_hdmi_infoframe(&vendor_infoframe, vendor, vendor_size);

 if (!(ctrl & 0x40000000)) {
  nvkm_mask(device, 0x616798 + hoff, 0x40000000, 0x00000000);
  nvkm_mask(device, 0x690100 + hdmi, 0x00000001, 0x00000000);
  nvkm_mask(device, 0x6900c0 + hdmi, 0x00000001, 0x00000000);
  nvkm_mask(device, 0x690000 + hdmi, 0x00000001, 0x00000000);
  return;
 }


 nvkm_mask(device, 0x690000 + hdmi, 0x00000001, 0x00000000);
 if (avi_size) {
  nvkm_wr32(device, 0x690008 + hdmi, avi_infoframe.header);
  nvkm_wr32(device, 0x69000c + hdmi, avi_infoframe.subpack0_low);
  nvkm_wr32(device, 0x690010 + hdmi, avi_infoframe.subpack0_high);
  nvkm_wr32(device, 0x690014 + hdmi, avi_infoframe.subpack1_low);
  nvkm_wr32(device, 0x690018 + hdmi, avi_infoframe.subpack1_high);
  nvkm_mask(device, 0x690000 + hdmi, 0x00000001, 0x00000001);
 }


 nvkm_mask(device, 0x690100 + hdmi, 0x00010001, 0x00000000);
 if (vendor_size) {
  nvkm_wr32(device, 0x690108 + hdmi, vendor_infoframe.header);
  nvkm_wr32(device, 0x69010c + hdmi, vendor_infoframe.subpack0_low);
  nvkm_wr32(device, 0x690110 + hdmi, vendor_infoframe.subpack0_high);

  nvkm_mask(device, 0x690100 + hdmi, 0x00000001, 0x00000001);
 }



 nvkm_mask(device, 0x6900c0 + hdmi, 0x00000001, 0x00000000);
 nvkm_wr32(device, 0x6900cc + hdmi, 0x00000010);
 nvkm_mask(device, 0x6900c0 + hdmi, 0x00000001, 0x00000001);


 nvkm_wr32(device, 0x690080 + hdmi, 0x82000000);


 nvkm_mask(device, 0x616798 + hoff, 0x401f007f, ctrl);
}
