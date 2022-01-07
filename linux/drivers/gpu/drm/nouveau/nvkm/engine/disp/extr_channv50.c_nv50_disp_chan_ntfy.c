
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_event {int dummy; } ;
struct nv50_disp_chan {struct nv50_disp* disp; } ;
struct nv50_disp {struct nvkm_event uevent; } ;


 int EINVAL ;

 struct nv50_disp_chan* nv50_disp_chan (struct nvkm_object*) ;

__attribute__((used)) static int
nv50_disp_chan_ntfy(struct nvkm_object *object, u32 type,
      struct nvkm_event **pevent)
{
 struct nv50_disp_chan *chan = nv50_disp_chan(object);
 struct nv50_disp *disp = chan->disp;
 switch (type) {
 case 128:
  *pevent = &disp->uevent;
  return 0;
 default:
  break;
 }
 return -EINVAL;
}
