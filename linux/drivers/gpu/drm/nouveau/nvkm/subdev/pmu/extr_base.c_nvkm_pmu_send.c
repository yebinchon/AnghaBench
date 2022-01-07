
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_pmu {TYPE_1__* func; } ;
struct TYPE_2__ {int (* send ) (struct nvkm_pmu*,int *,int ,int ,int ,int ) ;} ;


 int ENODEV ;
 int stub1 (struct nvkm_pmu*,int *,int ,int ,int ,int ) ;

int
nvkm_pmu_send(struct nvkm_pmu *pmu, u32 reply[2],
       u32 process, u32 message, u32 data0, u32 data1)
{
 if (!pmu || !pmu->func->send)
  return -ENODEV;
 return pmu->func->send(pmu, reply, process, message, data0, data1);
}
