
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_ior {TYPE_1__* func; TYPE_4__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_2__ subdev; } ;
struct TYPE_8__ {TYPE_3__ engine; } ;
struct TYPE_5__ {int (* power ) (struct nvkm_ior*,int,int,int,int,int) ;} ;


 int ETIMEDOUT ;
 int mdelay (int) ;
 int nv50_ior_base (struct nvkm_ior*) ;
 int nvkm_mask (struct nvkm_device*,int const,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int const,int) ;
 int stub1 (struct nvkm_ior*,int,int,int,int,int) ;
 int stub2 (struct nvkm_ior*,int,int,int,int,int) ;
 int udelay (int) ;

int
nv50_dac_sense(struct nvkm_ior *dac, u32 loadval)
{
 struct nvkm_device *device = dac->disp->engine.subdev.device;
 const u32 doff = nv50_ior_base(dac);

 dac->func->power(dac, 0, 1, 0, 0, 0);

 nvkm_wr32(device, 0x61a00c + doff, 0x00100000 | loadval);
 mdelay(9);
 udelay(500);
 loadval = nvkm_mask(device, 0x61a00c + doff, 0xffffffff, 0x00000000);

 dac->func->power(dac, 0, 0, 0, 0, 0);
 if (!(loadval & 0x80000000))
  return -ETIMEDOUT;

 return (loadval & 0x38000000) >> 27;
}
