
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct nv50_disp_chan {int head; TYPE_4__* disp; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct TYPE_8__ {TYPE_3__ base; } ;


 int nvkm_mask (struct nvkm_device*,int,int const,int const) ;

__attribute__((used)) static void
gv100_disp_wimm_intr(struct nv50_disp_chan *chan, bool en)
{
 struct nvkm_device *device = chan->disp->base.engine.subdev.device;
 const u32 mask = 0x00000001 << chan->head;
 const u32 data = en ? mask : 0;
 nvkm_mask(device, 0x611da8, mask, data);
}
