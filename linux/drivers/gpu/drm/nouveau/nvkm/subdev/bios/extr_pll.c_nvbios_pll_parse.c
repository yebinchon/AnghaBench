
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int crystal; } ;
struct TYPE_6__ {int chip; } ;
struct nvkm_bios {int bmp_offset; TYPE_3__ version; struct nvkm_subdev subdev; } ;
struct TYPE_5__ {int min_freq; int max_freq; int min_inputfreq; int max_inputfreq; int min_n; int max_n; int min_m; int max_m; } ;
struct TYPE_4__ {int min_freq; int max_freq; int min_inputfreq; int max_inputfreq; int min_n; int max_n; int min_m; int max_m; } ;
struct nvbios_pll {int type; int reg; int max_p; int max_p_usable; int refclk; TYPE_2__ vco1; void* min_p; void* bias_p; TYPE_1__ vco2; } ;


 int EINVAL ;
 int ENOENT ;
 void* INT_MAX ;
 int PLL_MAX ;
 int bmp_version (struct nvkm_bios*) ;
 int memset (struct nvbios_pll*,int ,int) ;
 void* nvbios_rd08 (struct nvkm_bios*,int) ;
 int nvbios_rd16 (struct nvkm_bios*,int) ;
 void* nvbios_rd32 (struct nvkm_bios*,int) ;
 int nvkm_error (struct nvkm_subdev*,char*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_rdvgac (struct nvkm_device*,int ,int) ;
 int pll_map_reg (struct nvkm_bios*,int,int*,int*,int*) ;
 int pll_map_type (struct nvkm_bios*,int,int*,int*,int*) ;

int
nvbios_pll_parse(struct nvkm_bios *bios, u32 type, struct nvbios_pll *info)
{
 struct nvkm_subdev *subdev = &bios->subdev;
 struct nvkm_device *device = subdev->device;
 u8 ver, len;
 u32 reg = type;
 u32 data;

 if (type > PLL_MAX) {
  reg = type;
  data = pll_map_reg(bios, reg, &type, &ver, &len);
 } else {
  data = pll_map_type(bios, type, &reg, &ver, &len);
 }

 if (ver && !data)
  return -ENOENT;

 memset(info, 0, sizeof(*info));
 info->type = type;
 info->reg = reg;

 switch (ver) {
 case 0x00:
  break;
 case 0x10:
 case 0x11:
  info->vco1.min_freq = nvbios_rd32(bios, data + 0);
  info->vco1.max_freq = nvbios_rd32(bios, data + 4);
  info->vco2.min_freq = nvbios_rd32(bios, data + 8);
  info->vco2.max_freq = nvbios_rd32(bios, data + 12);
  info->vco1.min_inputfreq = nvbios_rd32(bios, data + 16);
  info->vco2.min_inputfreq = nvbios_rd32(bios, data + 20);
  info->vco1.max_inputfreq = INT_MAX;
  info->vco2.max_inputfreq = INT_MAX;

  info->max_p = 0x7;
  info->max_p_usable = 0x6;


  switch (bios->version.chip) {
  case 0x36:
   info->vco1.min_n = 0x5;
   break;
  default:
   info->vco1.min_n = 0x1;
   break;
  }
  info->vco1.max_n = 0xff;
  info->vco1.min_m = 0x1;
  info->vco1.max_m = 0xd;







  info->vco2.min_n = 0x4;
  switch (bios->version.chip) {
  case 0x30:
  case 0x35:
   info->vco2.max_n = 0x1f;
   break;
  default:
   info->vco2.max_n = 0x28;
   break;
  }
  info->vco2.min_m = 0x1;
  info->vco2.max_m = 0x4;
  break;
 case 0x20:
 case 0x21:
  info->vco1.min_freq = nvbios_rd16(bios, data + 4) * 1000;
  info->vco1.max_freq = nvbios_rd16(bios, data + 6) * 1000;
  info->vco2.min_freq = nvbios_rd16(bios, data + 8) * 1000;
  info->vco2.max_freq = nvbios_rd16(bios, data + 10) * 1000;
  info->vco1.min_inputfreq = nvbios_rd16(bios, data + 12) * 1000;
  info->vco2.min_inputfreq = nvbios_rd16(bios, data + 14) * 1000;
  info->vco1.max_inputfreq = nvbios_rd16(bios, data + 16) * 1000;
  info->vco2.max_inputfreq = nvbios_rd16(bios, data + 18) * 1000;
  info->vco1.min_n = nvbios_rd08(bios, data + 20);
  info->vco1.max_n = nvbios_rd08(bios, data + 21);
  info->vco1.min_m = nvbios_rd08(bios, data + 22);
  info->vco1.max_m = nvbios_rd08(bios, data + 23);
  info->vco2.min_n = nvbios_rd08(bios, data + 24);
  info->vco2.max_n = nvbios_rd08(bios, data + 25);
  info->vco2.min_m = nvbios_rd08(bios, data + 26);
  info->vco2.max_m = nvbios_rd08(bios, data + 27);

  info->max_p = nvbios_rd08(bios, data + 29);
  info->max_p_usable = info->max_p;
  if (bios->version.chip < 0x60)
   info->max_p_usable = 0x6;
  info->bias_p = nvbios_rd08(bios, data + 30);

  if (len > 0x22)
   info->refclk = nvbios_rd32(bios, data + 31);
  break;
 case 0x30:
  data = nvbios_rd16(bios, data + 1);

  info->vco1.min_freq = nvbios_rd16(bios, data + 0) * 1000;
  info->vco1.max_freq = nvbios_rd16(bios, data + 2) * 1000;
  info->vco2.min_freq = nvbios_rd16(bios, data + 4) * 1000;
  info->vco2.max_freq = nvbios_rd16(bios, data + 6) * 1000;
  info->vco1.min_inputfreq = nvbios_rd16(bios, data + 8) * 1000;
  info->vco2.min_inputfreq = nvbios_rd16(bios, data + 10) * 1000;
  info->vco1.max_inputfreq = nvbios_rd16(bios, data + 12) * 1000;
  info->vco2.max_inputfreq = nvbios_rd16(bios, data + 14) * 1000;
  info->vco1.min_n = nvbios_rd08(bios, data + 16);
  info->vco1.max_n = nvbios_rd08(bios, data + 17);
  info->vco1.min_m = nvbios_rd08(bios, data + 18);
  info->vco1.max_m = nvbios_rd08(bios, data + 19);
  info->vco2.min_n = nvbios_rd08(bios, data + 20);
  info->vco2.max_n = nvbios_rd08(bios, data + 21);
  info->vco2.min_m = nvbios_rd08(bios, data + 22);
  info->vco2.max_m = nvbios_rd08(bios, data + 23);
  info->max_p_usable = info->max_p = nvbios_rd08(bios, data + 25);
  info->bias_p = nvbios_rd08(bios, data + 27);
  info->refclk = nvbios_rd32(bios, data + 28);
  break;
 case 0x40:
  info->refclk = nvbios_rd16(bios, data + 9) * 1000;
  data = nvbios_rd16(bios, data + 1);

  info->vco1.min_freq = nvbios_rd16(bios, data + 0) * 1000;
  info->vco1.max_freq = nvbios_rd16(bios, data + 2) * 1000;
  info->vco1.min_inputfreq = nvbios_rd16(bios, data + 4) * 1000;
  info->vco1.max_inputfreq = nvbios_rd16(bios, data + 6) * 1000;
  info->vco1.min_m = nvbios_rd08(bios, data + 8);
  info->vco1.max_m = nvbios_rd08(bios, data + 9);
  info->vco1.min_n = nvbios_rd08(bios, data + 10);
  info->vco1.max_n = nvbios_rd08(bios, data + 11);
  info->min_p = nvbios_rd08(bios, data + 12);
  info->max_p = nvbios_rd08(bios, data + 13);
  break;
 case 0x50:
  info->refclk = nvbios_rd16(bios, data + 1) * 1000;

  info->vco1.min_freq = nvbios_rd16(bios, data + 5) * 1000;
  info->vco1.max_freq = nvbios_rd16(bios, data + 7) * 1000;
  info->vco1.min_inputfreq = nvbios_rd16(bios, data + 9) * 1000;
  info->vco1.max_inputfreq = nvbios_rd16(bios, data + 11) * 1000;
  info->vco1.min_m = nvbios_rd08(bios, data + 13);
  info->vco1.max_m = nvbios_rd08(bios, data + 14);
  info->vco1.min_n = nvbios_rd08(bios, data + 15);
  info->vco1.max_n = nvbios_rd08(bios, data + 16);
  info->min_p = nvbios_rd08(bios, data + 17);
  info->max_p = nvbios_rd08(bios, data + 18);
  break;
 default:
  nvkm_error(subdev, "unknown pll limits version 0x%02x\n", ver);
  return -EINVAL;
 }

 if (!info->refclk) {
  info->refclk = device->crystal;
  if (bios->version.chip == 0x51) {
   u32 sel_clk = nvkm_rd32(device, 0x680524);
   if ((info->reg == 0x680508 && sel_clk & 0x20) ||
       (info->reg == 0x680520 && sel_clk & 0x80)) {
    if (nvkm_rdvgac(device, 0, 0x27) < 0xa3)
     info->refclk = 200000;
    else
     info->refclk = 25000;
   }
  }
 }






 if (!info->vco1.max_freq) {
  info->vco1.max_freq = nvbios_rd32(bios, bios->bmp_offset + 67);
  info->vco1.min_freq = nvbios_rd32(bios, bios->bmp_offset + 71);
  if (bmp_version(bios) < 0x0506) {
   info->vco1.max_freq = 256000;
   info->vco1.min_freq = 128000;
  }

  info->vco1.min_inputfreq = 0;
  info->vco1.max_inputfreq = INT_MAX;
  info->vco1.min_n = 0x1;
  info->vco1.max_n = 0xff;
  info->vco1.min_m = 0x1;

  if (device->crystal == 13500) {

   if (bios->version.chip < 0x11)
    info->vco1.min_m = 0x7;
   info->vco1.max_m = 0xd;
  } else {
   if (bios->version.chip < 0x11)
    info->vco1.min_m = 0x8;
   info->vco1.max_m = 0xe;
  }

  if (bios->version.chip < 0x17 ||
      bios->version.chip == 0x1a ||
      bios->version.chip == 0x20)
   info->max_p = 4;
  else
   info->max_p = 5;
  info->max_p_usable = info->max_p;
 }

 return 0;
}
