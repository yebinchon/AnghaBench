
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_volt {TYPE_1__* func; } ;
struct TYPE_2__ {int (* set_id ) (struct nvkm_volt*,int ,int) ;} ;


 int max (int,int) ;
 int nvkm_volt_get (struct nvkm_volt*) ;
 int nvkm_volt_map (struct nvkm_volt*,int ,int ) ;
 int nvkm_volt_set (struct nvkm_volt*,int) ;
 int stub1 (struct nvkm_volt*,int ,int) ;

int
nvkm_volt_set_id(struct nvkm_volt *volt, u8 id, u8 min_id, u8 temp,
   int condition)
{
 int ret;

 if (volt->func->set_id)
  return volt->func->set_id(volt, id, condition);

 ret = nvkm_volt_map(volt, id, temp);
 if (ret >= 0) {
  int prev = nvkm_volt_get(volt);
  if (!condition || prev < 0 ||
      (condition < 0 && ret < prev) ||
      (condition > 0 && ret > prev)) {
   int min = nvkm_volt_map(volt, min_id, temp);
   if (min >= 0)
    ret = max(min, ret);
   ret = nvkm_volt_set(volt, ret);
  } else {
   ret = 0;
  }
 }
 return ret;
}
