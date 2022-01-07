
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int dummy; } ;
struct hfi1_packet {int dummy; } ;


 int hfi1_may_ecn (struct hfi1_packet*) ;
 int hfi1_process_ecn_slowpath (struct rvt_qp*,struct hfi1_packet*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool process_ecn(struct rvt_qp *qp, struct hfi1_packet *pkt)
{
 bool do_work;

 do_work = hfi1_may_ecn(pkt);
 if (unlikely(do_work))
  return hfi1_process_ecn_slowpath(qp, pkt, 0);
 return 0;
}
