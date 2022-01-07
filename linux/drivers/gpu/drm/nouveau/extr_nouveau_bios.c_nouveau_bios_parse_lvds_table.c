
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_4__ {int duallink_transition_clk; size_t xlated_entry; size_t lvdsmanufacturerpointer; int power_off_for_reset; int reset_after_pclk_change; int dual_link; int link_c_increment; int if_is_24bit; int strapless_is_24bit; int fpxlatemanufacturertableptr; } ;
struct TYPE_3__ {int lvds_single_a_script_ptr; } ;
struct nvbios {int chip_version; int* data; TYPE_2__ fp; TYPE_1__ legacy; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct lvdstableheader {int lvds_ver; size_t headerlen; int recordlen; } ;
struct drm_device {int dummy; } ;


 int ENOSYS ;
 int NV_ERROR (struct nouveau_drm*,char*) ;
 int ROM16 (int) ;
 int get_fp_strap (struct drm_device*,struct nvbios*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int parse_lvds_manufacturer_table_header (struct drm_device*,struct nvbios*,struct lvdstableheader*) ;

int nouveau_bios_parse_lvds_table(struct drm_device *dev, int pxclk, bool *dl, bool *if_is_24bit)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvbios *bios = &drm->vbios;
 int fpstrapping = get_fp_strap(dev, bios), lvdsmanufacturerindex = 0;
 struct lvdstableheader lth;
 uint16_t lvdsofs;
 int ret, chip_version = bios->chip_version;

 ret = parse_lvds_manufacturer_table_header(dev, bios, &lth);
 if (ret)
  return ret;

 switch (lth.lvds_ver) {
 case 0x0a:
  lvdsmanufacturerindex = bios->data[
     bios->fp.fpxlatemanufacturertableptr +
     fpstrapping];


  if (!pxclk)
   break;

  if (chip_version < 0x25) {





   lvdsmanufacturerindex =
    (bios->legacy.lvds_single_a_script_ptr & 1) ?
         2 : 0;
   if (pxclk >= bios->fp.duallink_transition_clk)
    lvdsmanufacturerindex++;
  } else if (chip_version < 0x30) {
   lvdsmanufacturerindex = 0;
  } else {

   lvdsmanufacturerindex = 0;
   if (pxclk >= bios->fp.duallink_transition_clk)
    lvdsmanufacturerindex = 2;
   if (pxclk >= 140000)
    lvdsmanufacturerindex = 3;
  }





  break;
 case 0x30:
 case 0x40:
  lvdsmanufacturerindex = fpstrapping;
  break;
 default:
  NV_ERROR(drm, "LVDS table revision not currently supported\n");
  return -ENOSYS;
 }

 lvdsofs = bios->fp.xlated_entry = bios->fp.lvdsmanufacturerpointer + lth.headerlen + lth.recordlen * lvdsmanufacturerindex;
 switch (lth.lvds_ver) {
 case 0x0a:
  bios->fp.power_off_for_reset = bios->data[lvdsofs] & 1;
  bios->fp.reset_after_pclk_change = bios->data[lvdsofs] & 2;
  bios->fp.dual_link = bios->data[lvdsofs] & 4;
  bios->fp.link_c_increment = bios->data[lvdsofs] & 8;
  *if_is_24bit = bios->data[lvdsofs] & 16;
  break;
 case 0x30:
 case 0x40:




  bios->fp.power_off_for_reset = 1;
  bios->fp.reset_after_pclk_change = 1;





  bios->fp.dual_link = bios->data[lvdsofs] & 1;
  bios->fp.if_is_24bit = bios->data[lvdsofs] & 2;
  bios->fp.strapless_is_24bit = bios->data[bios->fp.lvdsmanufacturerpointer + 4];
  bios->fp.duallink_transition_clk = ROM16(bios->data[bios->fp.lvdsmanufacturerpointer + 5]) * 10;
  break;
 }


 if (pxclk && (chip_version < 0x25 || chip_version > 0x28))
  bios->fp.dual_link = (pxclk >= bios->fp.duallink_transition_clk);

 *dl = bios->fp.dual_link;

 return 0;
}
