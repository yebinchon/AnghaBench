
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t4_cq {scalar_t__ cidx_inc; int flags; } ;


 scalar_t__ CIDXINC_M ;
 int CIDXINC_V (scalar_t__) ;
 int CQ_ARMED ;
 int SEINTARM_V (int) ;
 int TIMERREG_V (int) ;
 int set_bit (int ,int *) ;
 int write_gts (struct t4_cq*,int) ;

__attribute__((used)) static inline int t4_arm_cq(struct t4_cq *cq, int se)
{
 u32 val;

 set_bit(CQ_ARMED, &cq->flags);
 while (cq->cidx_inc > CIDXINC_M) {
  val = SEINTARM_V(0) | CIDXINC_V(CIDXINC_M) | TIMERREG_V(7);
  write_gts(cq, val);
  cq->cidx_inc -= CIDXINC_M;
 }
 val = SEINTARM_V(se) | CIDXINC_V(cq->cidx_inc) | TIMERREG_V(6);
 write_gts(cq, val);
 cq->cidx_inc = 0;
 return 0;
}
