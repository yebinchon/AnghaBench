
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_pm {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_perfmon {struct nvkm_pm* pm; struct nvkm_object object; } ;
struct nvkm_perfdom {int name; } ;
struct nvif_perfmon_query_domain_v0 {int iter; int id; int counter_nr; int name; int signal_nr; int version; } ;


 int EINVAL ;
 int ENOSYS ;
 int nvif_ioctl (struct nvkm_object*,char*,int ,...) ;
 int nvif_unpack (int,void**,int *,struct nvif_perfmon_query_domain_v0,int ,int ,int) ;
 int nvkm_perfdom_count_perfsig (struct nvkm_perfdom*) ;
 struct nvkm_perfdom* nvkm_perfdom_find (struct nvkm_pm*,int) ;
 int nvkm_pm_count_perfdom (struct nvkm_pm*) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int
nvkm_perfmon_mthd_query_domain(struct nvkm_perfmon *perfmon,
          void *data, u32 size)
{
 union {
  struct nvif_perfmon_query_domain_v0 v0;
 } *args = data;
 struct nvkm_object *object = &perfmon->object;
 struct nvkm_pm *pm = perfmon->pm;
 struct nvkm_perfdom *dom;
 u8 domain_nr;
 int di, ret = -ENOSYS;

 nvif_ioctl(object, "perfmon query domain size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  nvif_ioctl(object, "perfmon domain vers %d iter %02x\n",
      args->v0.version, args->v0.iter);
  di = (args->v0.iter & 0xff) - 1;
 } else
  return ret;

 domain_nr = nvkm_pm_count_perfdom(pm);
 if (di >= (int)domain_nr)
  return -EINVAL;

 if (di >= 0) {
  dom = nvkm_perfdom_find(pm, di);
  if (dom == ((void*)0))
   return -EINVAL;

  args->v0.id = di;
  args->v0.signal_nr = nvkm_perfdom_count_perfsig(dom);
  strncpy(args->v0.name, dom->name, sizeof(args->v0.name) - 1);



  args->v0.counter_nr = 4;
 }

 if (++di < domain_nr) {
  args->v0.iter = ++di;
  return 0;
 }

 args->v0.iter = 0xff;
 return 0;
}
