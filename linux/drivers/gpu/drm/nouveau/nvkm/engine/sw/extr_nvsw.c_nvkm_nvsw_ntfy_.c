
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_nvsw {TYPE_1__* chan; } ;
struct nvkm_event {int dummy; } ;
struct TYPE_2__ {struct nvkm_event event; } ;


 int EINVAL ;

 struct nvkm_nvsw* nvkm_nvsw (struct nvkm_object*) ;

__attribute__((used)) static int
nvkm_nvsw_ntfy_(struct nvkm_object *object, u32 mthd,
  struct nvkm_event **pevent)
{
 struct nvkm_nvsw *nvsw = nvkm_nvsw(object);
 switch (mthd) {
 case 128:
  *pevent = &nvsw->chan->event;
  return 0;
 default:
  break;
 }
 return -EINVAL;
}
