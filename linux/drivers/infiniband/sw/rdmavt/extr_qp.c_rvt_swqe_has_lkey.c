
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_sge; } ;
struct rvt_swqe {struct rvt_sge* sg_list; TYPE_1__ wr; } ;
struct rvt_sge {int mr; } ;


 scalar_t__ rvt_mr_has_lkey (int ,int ) ;

__attribute__((used)) static bool rvt_swqe_has_lkey(struct rvt_swqe *wqe, u32 lkey)
{
 int i;

 for (i = 0; i < wqe->wr.num_sge; i++) {
  struct rvt_sge *sge = &wqe->sg_list[i];

  if (rvt_mr_has_lkey(sge->mr, lkey))
   return 1;
 }
 return 0;
}
