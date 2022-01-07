
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_control {int dummy; } ;


 int EINVAL ;



 struct nvkm_control* nvkm_control (struct nvkm_object*) ;
 int nvkm_control_mthd_pstate_attr (struct nvkm_control*,void*,int) ;
 int nvkm_control_mthd_pstate_info (struct nvkm_control*,void*,int) ;
 int nvkm_control_mthd_pstate_user (struct nvkm_control*,void*,int) ;

__attribute__((used)) static int
nvkm_control_mthd(struct nvkm_object *object, u32 mthd, void *data, u32 size)
{
 struct nvkm_control *ctrl = nvkm_control(object);
 switch (mthd) {
 case 129:
  return nvkm_control_mthd_pstate_info(ctrl, data, size);
 case 130:
  return nvkm_control_mthd_pstate_attr(ctrl, data, size);
 case 128:
  return nvkm_control_mthd_pstate_user(ctrl, data, size);
 default:
  break;
 }
 return -EINVAL;
}
