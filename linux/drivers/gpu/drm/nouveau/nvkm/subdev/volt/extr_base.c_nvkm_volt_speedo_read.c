
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_volt {TYPE_1__* func; } ;
struct TYPE_2__ {int (* speedo_read ) (struct nvkm_volt*) ;} ;


 int EINVAL ;
 int stub1 (struct nvkm_volt*) ;

__attribute__((used)) static int
nvkm_volt_speedo_read(struct nvkm_volt *volt)
{
 if (volt->func->speedo_read)
  return volt->func->speedo_read(volt);
 return -EINVAL;
}
