
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {struct nvkm_subdev subdev; } ;
struct nvkm_device {struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_pll {int type; int bias_p; scalar_t__ reg; } ;


 int EINVAL ;



 int nv04_pll_calc (struct nvkm_subdev*,struct nvbios_pll*,int ,int*,int*,int*,int*,int*) ;
 int nvbios_pll_parse (struct nvkm_bios*,int ,struct nvbios_pll*) ;
 int nvkm_error (struct nvkm_subdev*,char*,...) ;
 int nvkm_mask (struct nvkm_device*,scalar_t__,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,scalar_t__,int) ;

int
nv50_devinit_pll_set(struct nvkm_devinit *init, u32 type, u32 freq)
{
 struct nvkm_subdev *subdev = &init->subdev;
 struct nvkm_device *device = subdev->device;
 struct nvkm_bios *bios = device->bios;
 struct nvbios_pll info;
 int N1, M1, N2, M2, P;
 int ret;

 ret = nvbios_pll_parse(bios, type, &info);
 if (ret) {
  nvkm_error(subdev, "failed to retrieve pll data, %d\n", ret);
  return ret;
 }

 ret = nv04_pll_calc(subdev, &info, freq, &N1, &M1, &N2, &M2, &P);
 if (!ret) {
  nvkm_error(subdev, "failed pll calculation\n");
  return -EINVAL;
 }

 switch (info.type) {
 case 129:
 case 128:
  nvkm_wr32(device, info.reg + 0, 0x10000611);
  nvkm_mask(device, info.reg + 4, 0x00ff00ff, (M1 << 16) | N1);
  nvkm_mask(device, info.reg + 8, 0x7fff00ff, (P << 28) |
           (M2 << 16) | N2);
  break;
 case 130:
  nvkm_mask(device, info.reg + 0, 0x01ff0000,
             (P << 22) |
      (info.bias_p << 19) |
      (P << 16));
  nvkm_wr32(device, info.reg + 4, (N1 << 8) | M1);
  break;
 default:
  nvkm_mask(device, info.reg + 0, 0x00070000, (P << 16));
  nvkm_wr32(device, info.reg + 4, (N1 << 8) | M1);
  break;
 }

 return 0;
}
