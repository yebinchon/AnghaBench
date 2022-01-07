
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_perfdom {int dummy; } ;
struct nvkm_object {int dummy; } ;


 int EINVAL ;



 struct nvkm_perfdom* nvkm_perfdom (struct nvkm_object*) ;
 int nvkm_perfdom_init (struct nvkm_perfdom*,void*,int) ;
 int nvkm_perfdom_read (struct nvkm_perfdom*,void*,int) ;
 int nvkm_perfdom_sample (struct nvkm_perfdom*,void*,int) ;

__attribute__((used)) static int
nvkm_perfdom_mthd(struct nvkm_object *object, u32 mthd, void *data, u32 size)
{
 struct nvkm_perfdom *dom = nvkm_perfdom(object);
 switch (mthd) {
 case 130:
  return nvkm_perfdom_init(dom, data, size);
 case 128:
  return nvkm_perfdom_sample(dom, data, size);
 case 129:
  return nvkm_perfdom_read(dom, data, size);
 default:
  break;
 }
 return -EINVAL;
}
