
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct nv50_disp {TYPE_2__ base; } ;


 int nvkm_disp_vblank (TYPE_2__*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_warn (struct nvkm_subdev*,char*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gv100_disp_intr_head_timing(struct nv50_disp *disp, int head)
{
 struct nvkm_subdev *subdev = &disp->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 u32 stat = nvkm_rd32(device, 0x611800 + (head * 0x04));


 if (stat & 0x00000003) {
  nvkm_wr32(device, 0x611800 + (head * 0x04), stat & 0x00000003);
  stat &= ~0x00000003;
 }

 if (stat & 0x00000004) {
  nvkm_disp_vblank(&disp->base, head);
  nvkm_wr32(device, 0x611800 + (head * 0x04), 0x00000004);
  stat &= ~0x00000004;
 }

 if (stat) {
  nvkm_warn(subdev, "head %08x\n", stat);
  nvkm_wr32(device, 0x611800 + (head * 0x04), stat);
 }
}
