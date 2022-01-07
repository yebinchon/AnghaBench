
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rvt_swqe {int psn; } ;
struct rvt_sge_state {int dummy; } ;


 int QIB_PSN_MASK ;
 int rvt_restart_sge (struct rvt_sge_state*,struct rvt_swqe*,int) ;

__attribute__((used)) static u32 restart_sge(struct rvt_sge_state *ss, struct rvt_swqe *wqe,
         u32 psn, u32 pmtu)
{
 u32 len;

 len = ((psn - wqe->psn) & QIB_PSN_MASK) * pmtu;
 return rvt_restart_sge(ss, wqe, len);
}
