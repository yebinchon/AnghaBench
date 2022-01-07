
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_ummu {int dummy; } ;
struct nvkm_object {int dummy; } ;


 int EINVAL ;



 struct nvkm_ummu* nvkm_ummu (struct nvkm_object*) ;
 int nvkm_ummu_heap (struct nvkm_ummu*,void*,int) ;
 int nvkm_ummu_kind (struct nvkm_ummu*,void*,int) ;
 int nvkm_ummu_type (struct nvkm_ummu*,void*,int) ;

__attribute__((used)) static int
nvkm_ummu_mthd(struct nvkm_object *object, u32 mthd, void *argv, u32 argc)
{
 struct nvkm_ummu *ummu = nvkm_ummu(object);
 switch (mthd) {
 case 130: return nvkm_ummu_heap(ummu, argv, argc);
 case 128: return nvkm_ummu_type(ummu, argv, argc);
 case 129: return nvkm_ummu_kind(ummu, argv, argc);
 default:
  break;
 }
 return -EINVAL;
}
