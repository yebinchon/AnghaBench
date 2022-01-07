
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
 int nv50_disp_intr_error_code ;
 int nv50_disp_intr_error_type ;
 struct nvkm_enum* nvkm_enum_find (int ,int) ;
 int nvkm_error (struct nvkm_subdev*,char*,int,char*,int,char*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
nv50_disp_intr_error(struct nv50_disp *disp, int chid)
{
 struct nvkm_subdev *subdev = &disp->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 u32 data = nvkm_rd32(device, 0x610084 + (chid * 0x08));
 u32 addr = nvkm_rd32(device, 0x610080 + (chid * 0x08));
 u32 code = (addr & 0x00ff0000) >> 16;
 u32 type = (addr & 0x00007000) >> 12;
 u32 mthd = (addr & 0x00000ffc);
 const struct nvkm_enum *ec, *et;

 et = nvkm_enum_find(nv50_disp_intr_error_type, type);
 ec = nvkm_enum_find(nv50_disp_intr_error_code, code);

 nvkm_error(subdev,
     "ERROR %d [%s] %02x [%s] chid %d mthd %04x data %08x\n",
     type, et ? et->name : "", code, ec ? ec->name : "",
     chid, mthd, data);

 if (chid < ARRAY_SIZE(disp->chan)) {
  switch (mthd) {
  case 0x0080:
   nv50_disp_chan_mthd(disp->chan[chid], NV_DBG_ERROR);
   break;
  default:
   break;
  }
 }

 nvkm_wr32(device, 0x610020, 0x00010000 << chid);
 nvkm_wr32(device, 0x610080 + (chid * 0x08), 0x90000000);
}
