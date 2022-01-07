
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {struct nvkm_subdev subdev; } ;
struct nvkm_device {int bios; } ;
struct nvbios_pll {int type; scalar_t__ reg; } ;


 int EINVAL ;


 int gt215_pll_calc (struct nvkm_subdev*,struct nvbios_pll*,int ,int*,int*,int*,int*) ;
 int nvbios_pll_parse (int ,int ,struct nvbios_pll*) ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;
 int nvkm_warn (struct nvkm_subdev*,char*,int ,int ) ;
 int nvkm_wr32 (struct nvkm_device*,scalar_t__,int) ;

int
gt215_devinit_pll_set(struct nvkm_devinit *init, u32 type, u32 freq)
{
 struct nvkm_subdev *subdev = &init->subdev;
 struct nvkm_device *device = subdev->device;
 struct nvbios_pll info;
 int N, fN, M, P;
 int ret;

 ret = nvbios_pll_parse(device->bios, type, &info);
 if (ret)
  return ret;

 ret = gt215_pll_calc(subdev, &info, freq, &N, &fN, &M, &P);
 if (ret < 0)
  return ret;

 switch (info.type) {
 case 129:
 case 128:
  nvkm_wr32(device, info.reg + 0, 0x50000610);
  nvkm_mask(device, info.reg + 4, 0x003fffff,
      (P << 16) | (M << 8) | N);
  nvkm_wr32(device, info.reg + 8, fN);
  break;
 default:
  nvkm_warn(subdev, "%08x/%dKhz unimplemented\n", type, freq);
  ret = -EINVAL;
  break;
 }

 return ret;
}
