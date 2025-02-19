
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int nv04_gr_set_ctx1 (struct nvkm_device*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
nv04_gr_set_ctx_val(struct nvkm_device *device, u32 inst, u32 mask, u32 value)
{
 int class, op, valid = 1;
 u32 tmp, ctx1;

 ctx1 = nvkm_rd32(device, 0x700000 + inst);
 class = ctx1 & 0xff;
 op = (ctx1 >> 15) & 7;

 tmp = nvkm_rd32(device, 0x70000c + inst);
 tmp &= ~mask;
 tmp |= value;
 nvkm_wr32(device, 0x70000c + inst, tmp);


 if (!(tmp & 0x02000000))
  valid = 0;

 if ((class == 0x1f || class == 0x48) && !(tmp & 0x04000000))
  valid = 0;

 switch (op) {

 case 0:
 case 3:
  break;

 case 1:
  if (!(tmp & 0x18000000))
   valid = 0;
  break;

 case 2:
  if (!(tmp & 0x20000000))
   valid = 0;
  break;

 case 4:
 case 5:
  if (!(tmp & 0x40000000))
   valid = 0;
  break;
 }

 nv04_gr_set_ctx1(device, inst, 0x01000000, valid << 24);
}
