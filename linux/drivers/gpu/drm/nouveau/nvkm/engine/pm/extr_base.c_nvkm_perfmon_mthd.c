
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_perfmon {int dummy; } ;
struct nvkm_object {int dummy; } ;


 int EINVAL ;



 struct nvkm_perfmon* nvkm_perfmon (struct nvkm_object*) ;
 int nvkm_perfmon_mthd_query_domain (struct nvkm_perfmon*,void*,int) ;
 int nvkm_perfmon_mthd_query_signal (struct nvkm_perfmon*,void*,int) ;
 int nvkm_perfmon_mthd_query_source (struct nvkm_perfmon*,void*,int) ;

__attribute__((used)) static int
nvkm_perfmon_mthd(struct nvkm_object *object, u32 mthd, void *data, u32 size)
{
 struct nvkm_perfmon *perfmon = nvkm_perfmon(object);
 switch (mthd) {
 case 130:
  return nvkm_perfmon_mthd_query_domain(perfmon, data, size);
 case 129:
  return nvkm_perfmon_mthd_query_signal(perfmon, data, size);
 case 128:
  return nvkm_perfmon_mthd_query_source(perfmon, data, size);
 default:
  break;
 }
 return -EINVAL;
}
