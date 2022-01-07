
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int engine; } ;
struct nvkm_event {int dummy; } ;
struct nvkm_disp {struct nvkm_event hpd; struct nvkm_event vblank; } ;


 int EINVAL ;


 struct nvkm_disp* nvkm_disp (int ) ;

int
nvkm_disp_ntfy(struct nvkm_object *object, u32 type, struct nvkm_event **event)
{
 struct nvkm_disp *disp = nvkm_disp(object->engine);
 switch (type) {
 case 128:
  *event = &disp->vblank;
  return 0;
 case 129:
  *event = &disp->hpd;
  return 0;
 default:
  break;
 }
 return -EINVAL;
}
