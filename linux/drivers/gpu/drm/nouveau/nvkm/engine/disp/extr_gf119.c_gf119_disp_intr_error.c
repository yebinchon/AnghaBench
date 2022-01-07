
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_enum {char* name; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct nv50_disp {int * chan; TYPE_2__ base; } ;


 int ARRAY_SIZE (int *) ;
 int NV_DBG_ERROR ;
 int nv50_disp_chan_mthd (int ,int ) ;
 int nv50_disp_intr_error_type ;
 struct nvkm_enum* nvkm_enum_find (int ,int) ;
 int nvkm_error (struct nvkm_subdev*,char*,int,int,int,char*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
gf119_disp_intr_error(struct nv50_disp *disp, int chid)
{
 struct nvkm_subdev *subdev = &disp->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 u32 stat = nvkm_rd32(device, 0x6101f0 + (chid * 12));
 u32 type = (stat & 0x00007000) >> 12;
 u32 mthd = (stat & 0x00000ffc);
 u32 data = nvkm_rd32(device, 0x6101f4 + (chid * 12));
 u32 code = nvkm_rd32(device, 0x6101f8 + (chid * 12));
 const struct nvkm_enum *reason =
  nvkm_enum_find(nv50_disp_intr_error_type, type);

 nvkm_error(subdev, "chid %d stat %08x reason %d [%s] mthd %04x "
      "data %08x code %08x\n",
     chid, stat, type, reason ? reason->name : "",
     mthd, data, code);

 if (chid < ARRAY_SIZE(disp->chan)) {
  switch (mthd) {
  case 0x0080:
   nv50_disp_chan_mthd(disp->chan[chid], NV_DBG_ERROR);
   break;
  default:
   break;
  }
 }

 nvkm_wr32(device, 0x61009c, (1 << chid));
 nvkm_wr32(device, 0x6101f0 + (chid * 12), 0x90000000);
}
