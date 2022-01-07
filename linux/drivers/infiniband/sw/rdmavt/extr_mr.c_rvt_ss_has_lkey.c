
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int mr; } ;
struct rvt_sge_state {int num_sge; TYPE_2__* sg_list; TYPE_1__ sge; } ;
struct TYPE_4__ {int mr; } ;


 int rvt_mr_has_lkey (int ,int ) ;

bool rvt_ss_has_lkey(struct rvt_sge_state *ss, u32 lkey)
{
 int i;
 bool rval = 0;

 if (!ss->num_sge)
  return rval;

 rval = rvt_mr_has_lkey(ss->sge.mr, lkey);

 for (i = 0; !rval && i < ss->num_sge - 1; i++)
  rval = rvt_mr_has_lkey(ss->sg_list[i].mr, lkey);
 return rval;
}
