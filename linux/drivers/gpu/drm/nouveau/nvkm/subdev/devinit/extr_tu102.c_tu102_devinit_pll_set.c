
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {struct nvkm_subdev subdev; } ;
struct nvkm_device {int bios; } ;
struct nvbios_pll {int type; } ;


 int EINVAL ;




 int gt215_pll_calc (struct nvkm_subdev*,struct nvbios_pll*,int,int*,int*,int*,int*) ;
 int nvbios_pll_parse (int ,int,struct nvbios_pll*) ;
 int nvkm_warn (struct nvkm_subdev*,char*,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static int
tu102_devinit_pll_set(struct nvkm_devinit *init, u32 type, u32 freq)
{
 struct nvkm_subdev *subdev = &init->subdev;
 struct nvkm_device *device = subdev->device;
 struct nvbios_pll info;
 int head = type - 131;
 int N, fN, M, P;
 int ret;

 ret = nvbios_pll_parse(device->bios, type, &info);
 if (ret)
  return ret;

 ret = gt215_pll_calc(subdev, &info, freq, &N, &fN, &M, &P);
 if (ret < 0)
  return ret;

 switch (info.type) {
 case 131:
 case 130:
 case 129:
 case 128:
  nvkm_wr32(device, 0x00ef10 + (head * 0x40), fN << 16);
  nvkm_wr32(device, 0x00ef04 + (head * 0x40), (P << 16) |
           (N << 8) |
           (M << 0));

  nvkm_wr32(device, 0x00ef0c + (head * 0x40), 0x00000900);
  nvkm_wr32(device, 0x00ef00 + (head * 0x40), 0x02000014);
  break;
 default:
  nvkm_warn(subdev, "%08x/%dKhz unimplemented\n", type, freq);
  ret = -EINVAL;
  break;
 }

 return ret;
}
