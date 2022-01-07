
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct TYPE_3__ {TYPE_2__ engine; } ;
struct nv50_disp {int * chan; TYPE_1__ base; } ;


 int ARRAY_SIZE (int *) ;
 int NV_DBG_ERROR ;
 int nv50_disp_chan_mthd (int ,int ) ;
 int nvkm_error (struct nvkm_subdev*,char*,int,int,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gp102_disp_intr_error(struct nv50_disp *disp, int chid)
{
 struct nvkm_subdev *subdev = &disp->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 u32 mthd = nvkm_rd32(device, 0x6111f0 + (chid * 12));
 u32 data = nvkm_rd32(device, 0x6111f4 + (chid * 12));
 u32 unkn = nvkm_rd32(device, 0x6111f8 + (chid * 12));

 nvkm_error(subdev, "chid %d mthd %04x data %08x %08x %08x\n",
     chid, (mthd & 0x0000ffc), data, mthd, unkn);

 if (chid < ARRAY_SIZE(disp->chan)) {
  switch (mthd & 0xffc) {
  case 0x0080:
   nv50_disp_chan_mthd(disp->chan[chid], NV_DBG_ERROR);
   break;
  default:
   break;
  }
 }

 nvkm_wr32(device, 0x61009c, (1 << chid));
 nvkm_wr32(device, 0x6111f0 + (chid * 12), 0x90000000);
}
