
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nvkm_head {int id; TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;


 int nvkm_rd32 (struct nvkm_device*,int const) ;

__attribute__((used)) static void
gv100_head_rgpos(struct nvkm_head *head, u16 *hline, u16 *vline)
{
 struct nvkm_device *device = head->disp->engine.subdev.device;
 const u32 hoff = head->id * 0x800;

 *vline = nvkm_rd32(device, 0x616330 + hoff) & 0x0000ffff;
 *hline = nvkm_rd32(device, 0x616334 + hoff) & 0x0000ffff;
}
