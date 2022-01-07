
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_10__ {int user; } ;
struct nv50_disp_chan {TYPE_5__ chid; TYPE_4__* disp; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_1__ subdev; } ;
struct TYPE_8__ {TYPE_2__ engine; } ;
struct TYPE_9__ {TYPE_3__ base; } ;


 int nvkm_mask (struct nvkm_device*,int,int const,int const) ;

void
nv50_disp_chan_intr(struct nv50_disp_chan *chan, bool en)
{
 struct nvkm_device *device = chan->disp->base.engine.subdev.device;
 const u32 mask = 0x00010001 << chan->chid.user;
 const u32 data = en ? 0x00010000 << chan->chid.user : 0x00000000;
 nvkm_mask(device, 0x610028, mask, data);
}
