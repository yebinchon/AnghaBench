
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_8__ {int duallink_transition_clk; int fptablepointer; int fpxlatetableptr; int xlatwidth; int lvdsmanufacturerpointer; int fpxlatemanufacturertableptr; } ;
struct TYPE_5__ {int crt; int tv; int panel; } ;
struct TYPE_7__ {int mem_init_tbl_ptr; int sdr_seq_tbl_ptr; int ddr_seq_tbl_ptr; int lvds_single_a_script_ptr; TYPE_1__ i2c_indices; } ;
struct TYPE_6__ {int output0_script_ptr; int output1_script_ptr; } ;
struct nvbios {int* data; int digital_min_front_porch; int fmaxvco; int fminvco; int feature_byte; int old_style_init; int init_script_tbls_ptr; int extra_init_script_tbl_ptr; int pll_limit_tbl_ptr; TYPE_4__ fp; TYPE_3__ legacy; TYPE_2__ tmds; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ENOSYS ;
 int NV_ERROR (struct nouveau_drm*,char*) ;
 int NV_INFO (struct nouveau_drm*,char*,int,int) ;
 int ROM16 (int) ;
 void* ROM32 (int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 scalar_t__ nv_cksum (int*,int) ;
 int parse_script_table_pointers (struct nvbios*,unsigned int) ;

__attribute__((used)) static int parse_bmp_structure(struct drm_device *dev, struct nvbios *bios, unsigned int offset)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 uint8_t *bmp = &bios->data[offset], bmp_version_major, bmp_version_minor;
 uint16_t bmplength;
 uint16_t legacy_scripts_offset, legacy_i2c_offset;


 bios->digital_min_front_porch = 0x4b;
 bios->fmaxvco = 256000;
 bios->fminvco = 128000;
 bios->fp.duallink_transition_clk = 90000;

 bmp_version_major = bmp[5];
 bmp_version_minor = bmp[6];

 NV_INFO(drm, "BMP version %d.%d\n",
   bmp_version_major, bmp_version_minor);





 if (bmp_version_major < 5)
  *(uint16_t *)&bios->data[0x36] = 0;






 if ((bmp_version_major < 5 && bmp_version_minor != 1) || bmp_version_major > 5) {
  NV_ERROR(drm, "You have an unsupported BMP version. "
    "Please send in your bios\n");
  return -ENOSYS;
 }

 if (bmp_version_major == 0)

  return 0;
 else if (bmp_version_major == 1)
  bmplength = 44;
 else if (bmp_version_major == 2)
  bmplength = 48;
 else if (bmp_version_major == 3)
  bmplength = 54;

 else if (bmp_version_major == 4 || bmp_version_minor < 0x1)

  bmplength = 62;

 else if (bmp_version_minor < 0x6)
  bmplength = 67;
 else if (bmp_version_minor < 0x10)
  bmplength = 75;
 else if (bmp_version_minor == 0x10)
  bmplength = 89;
 else if (bmp_version_minor < 0x14)
  bmplength = 118;
 else if (bmp_version_minor < 0x24)





  bmplength = 123;
 else if (bmp_version_minor < 0x27)




  bmplength = 144;
 else




  bmplength = 158;


 if (nv_cksum(bmp, 8)) {
  NV_ERROR(drm, "Bad BMP checksum\n");
  return -EINVAL;
 }







 bios->feature_byte = bmp[9];

 if (bmp_version_major < 5 || bmp_version_minor < 0x10)
  bios->old_style_init = 1;
 legacy_scripts_offset = 18;
 if (bmp_version_major < 2)
  legacy_scripts_offset -= 4;
 bios->init_script_tbls_ptr = ROM16(bmp[legacy_scripts_offset]);
 bios->extra_init_script_tbl_ptr = ROM16(bmp[legacy_scripts_offset + 2]);

 if (bmp_version_major > 2) {
  bios->legacy.mem_init_tbl_ptr = ROM16(bmp[24]);
  bios->legacy.sdr_seq_tbl_ptr = ROM16(bmp[26]);
  bios->legacy.ddr_seq_tbl_ptr = ROM16(bmp[28]);
 }

 legacy_i2c_offset = 0x48;
 if (bmplength > 61)
  legacy_i2c_offset = offset + 54;
 bios->legacy.i2c_indices.crt = bios->data[legacy_i2c_offset];
 bios->legacy.i2c_indices.tv = bios->data[legacy_i2c_offset + 1];
 bios->legacy.i2c_indices.panel = bios->data[legacy_i2c_offset + 2];

 if (bmplength > 74) {
  bios->fmaxvco = ROM32(bmp[67]);
  bios->fminvco = ROM32(bmp[71]);
 }
 if (bmplength > 88)
  parse_script_table_pointers(bios, offset + 75);
 if (bmplength > 94) {
  bios->tmds.output0_script_ptr = ROM16(bmp[89]);
  bios->tmds.output1_script_ptr = ROM16(bmp[91]);





  bios->legacy.lvds_single_a_script_ptr = ROM16(bmp[95]);
 }
 if (bmplength > 108) {
  bios->fp.fptablepointer = ROM16(bmp[105]);
  bios->fp.fpxlatetableptr = ROM16(bmp[107]);
  bios->fp.xlatwidth = 1;
 }
 if (bmplength > 120) {
  bios->fp.lvdsmanufacturerpointer = ROM16(bmp[117]);
  bios->fp.fpxlatemanufacturertableptr = ROM16(bmp[119]);
 }





 if (bmplength > 157)
  bios->fp.duallink_transition_clk = ROM16(bmp[156]) * 10;

 return 0;
}
