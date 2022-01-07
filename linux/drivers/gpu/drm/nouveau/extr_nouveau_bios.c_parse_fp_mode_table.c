
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int fptablepointer; int fpxlatetableptr; int lvdsmanufacturerpointer; int xlatwidth; int mode_ptr; } ;
struct nvbios {int digital_min_front_porch; int* data; int fp_no_ddc; TYPE_1__ fp; int is_mobile; } ;
struct nouveau_drm {int dummy; } ;
struct lvdstableheader {int lvds_ver; int headerlen; int recordlen; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOSYS ;
 int NV_DEBUG (struct nouveau_drm*,char*) ;
 int NV_ERROR (struct nouveau_drm*,char*,...) ;
 int NV_INFO (struct nouveau_drm*,char*,int,int,int) ;
 int ROM16 (int) ;
 int get_fp_strap (struct drm_device*,struct nvbios*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int parse_lvds_manufacturer_table_header (struct drm_device*,struct nvbios*,struct lvdstableheader*) ;

__attribute__((used)) static int parse_fp_mode_table(struct drm_device *dev, struct nvbios *bios)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 uint8_t *fptable;
 uint8_t fptable_ver, headerlen = 0, recordlen, fpentries = 0xf, fpindex;
 int ret, ofs, fpstrapping;
 struct lvdstableheader lth;

 if (bios->fp.fptablepointer == 0x0) {

  NV_DEBUG(drm, "Pointer to flat panel table invalid\n");
  bios->digital_min_front_porch = 0x4b;
  return 0;
 }

 fptable = &bios->data[bios->fp.fptablepointer];
 fptable_ver = fptable[0];

 switch (fptable_ver) {
 case 0x05:
  recordlen = 42;
  ofs = -1;
  break;
 case 0x10:
  recordlen = 44;
  ofs = 0;
  break;
 case 0x20:
  headerlen = fptable[1];
  recordlen = fptable[2];
  fpentries = fptable[3];




  bios->digital_min_front_porch = fptable[4];
  ofs = -7;
  break;
 default:
  NV_ERROR(drm,
    "FP table revision %d.%d not currently supported\n",
    fptable_ver >> 4, fptable_ver & 0xf);
  return -ENOSYS;
 }

 if (!bios->is_mobile)
  return 0;

 ret = parse_lvds_manufacturer_table_header(dev, bios, &lth);
 if (ret)
  return ret;

 if (lth.lvds_ver == 0x30 || lth.lvds_ver == 0x40) {
  bios->fp.fpxlatetableptr = bios->fp.lvdsmanufacturerpointer +
       lth.headerlen + 1;
  bios->fp.xlatwidth = lth.recordlen;
 }
 if (bios->fp.fpxlatetableptr == 0x0) {
  NV_ERROR(drm, "Pointer to flat panel xlat table invalid\n");
  return -EINVAL;
 }

 fpstrapping = get_fp_strap(dev, bios);

 fpindex = bios->data[bios->fp.fpxlatetableptr +
     fpstrapping * bios->fp.xlatwidth];

 if (fpindex > fpentries) {
  NV_ERROR(drm, "Bad flat panel table index\n");
  return -ENOENT;
 }


 if (lth.lvds_ver > 0x10)
  bios->fp_no_ddc = fpstrapping != 0xf || fpindex != 0xf;






 if (fpstrapping == 0xf || fpindex == 0xf)
  return 0;

 bios->fp.mode_ptr = bios->fp.fptablepointer + headerlen +
       recordlen * fpindex + ofs;

 NV_INFO(drm, "BIOS FP mode: %dx%d (%dkHz pixel clock)\n",
   ROM16(bios->data[bios->fp.mode_ptr + 11]) + 1,
   ROM16(bios->data[bios->fp.mode_ptr + 25]) + 1,
   ROM16(bios->data[bios->fp.mode_ptr + 7]) * 10);

 return 0;
}
