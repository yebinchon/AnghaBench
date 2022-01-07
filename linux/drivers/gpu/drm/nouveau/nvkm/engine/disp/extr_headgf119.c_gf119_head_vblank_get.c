
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_head {int id; TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;


 int nvkm_mask (struct nvkm_device*,int const,int,int) ;

__attribute__((used)) static void
gf119_head_vblank_get(struct nvkm_head *head)
{
 struct nvkm_device *device = head->disp->engine.subdev.device;
 const u32 hoff = head->id * 0x800;
 nvkm_mask(device, 0x6100c0 + hoff, 0x00000001, 0x00000001);
}
