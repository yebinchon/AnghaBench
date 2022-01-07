
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int num_sge; } ;
struct rvt_swqe {scalar_t__ length; TYPE_1__ wr; int * sg_list; } ;
struct rvt_sge_state {scalar_t__ total_len; int num_sge; int * sg_list; int sge; } ;


 int rvt_skip_sge (struct rvt_sge_state*,scalar_t__,int) ;

u32 rvt_restart_sge(struct rvt_sge_state *ss, struct rvt_swqe *wqe, u32 len)
{
 ss->sge = wqe->sg_list[0];
 ss->sg_list = wqe->sg_list + 1;
 ss->num_sge = wqe->wr.num_sge;
 ss->total_len = wqe->length;
 rvt_skip_sge(ss, len, 0);
 return wqe->length - len;
}
