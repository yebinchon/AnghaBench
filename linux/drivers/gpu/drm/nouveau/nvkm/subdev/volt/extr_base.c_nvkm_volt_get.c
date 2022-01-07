
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_volt {int vid_nr; TYPE_1__* vid; TYPE_2__* func; } ;
struct TYPE_4__ {int (* volt_get ) (struct nvkm_volt*) ;int (* vid_get ) (struct nvkm_volt*) ;} ;
struct TYPE_3__ {int vid; int uv; } ;


 int EINVAL ;
 int stub1 (struct nvkm_volt*) ;
 int stub2 (struct nvkm_volt*) ;

int
nvkm_volt_get(struct nvkm_volt *volt)
{
 int ret, i;

 if (volt->func->volt_get)
  return volt->func->volt_get(volt);

 ret = volt->func->vid_get(volt);
 if (ret >= 0) {
  for (i = 0; i < volt->vid_nr; i++) {
   if (volt->vid[i].vid == ret)
    return volt->vid[i].uv;
  }
  ret = -EINVAL;
 }
 return ret;
}
