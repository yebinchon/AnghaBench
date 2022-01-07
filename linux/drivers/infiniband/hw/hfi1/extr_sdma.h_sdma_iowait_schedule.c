
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_engine {int cpu; TYPE_1__* dd; } ;
struct iowait {int dummy; } ;
struct hfi1_pportdata {int hfi1_wq; } ;
struct TYPE_2__ {struct hfi1_pportdata* pport; } ;


 int iowait_schedule (struct iowait*,int ,int ) ;

__attribute__((used)) static inline void sdma_iowait_schedule(
 struct sdma_engine *sde,
 struct iowait *wait)
{
 struct hfi1_pportdata *ppd = sde->dd->pport;

 iowait_schedule(wait, ppd->hfi1_wq, sde->cpu);
}
