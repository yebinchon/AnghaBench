
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct TYPE_4__ {int user; } ;
struct nv50_disp_chan {TYPE_2__ chid; TYPE_1__* disp; } ;
struct TYPE_3__ {int ramht; } ;


 int nvkm_ramht_insert (int ,struct nvkm_object*,int,int,int ,int) ;

int
nv50_disp_dmac_bind(struct nv50_disp_chan *chan,
      struct nvkm_object *object, u32 handle)
{
 return nvkm_ramht_insert(chan->disp->ramht, object,
     chan->chid.user, -10, handle,
     chan->chid.user << 28 |
     chan->chid.user);
}
