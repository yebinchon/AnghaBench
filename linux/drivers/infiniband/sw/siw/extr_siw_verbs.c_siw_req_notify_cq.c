
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_cq {int cq_put; int cq_get; TYPE_1__* notify; } ;
struct ib_cq {int dummy; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_2__ {int flags; } ;


 int IB_CQ_REPORT_MISSED_EVENTS ;
 int IB_CQ_SOLICITED ;
 int IB_CQ_SOLICITED_MASK ;
 int SIW_NOTIFY_ALL ;
 int SIW_NOTIFY_SOLICITED ;
 int siw_dbg_cq (struct siw_cq*,char*,int) ;
 int smp_store_mb (int ,int ) ;
 struct siw_cq* to_siw_cq (struct ib_cq*) ;

int siw_req_notify_cq(struct ib_cq *base_cq, enum ib_cq_notify_flags flags)
{
 struct siw_cq *cq = to_siw_cq(base_cq);

 siw_dbg_cq(cq, "flags: 0x%02x\n", flags);

 if ((flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED)




  smp_store_mb(cq->notify->flags, SIW_NOTIFY_SOLICITED);
 else




  smp_store_mb(cq->notify->flags, SIW_NOTIFY_ALL);

 if (flags & IB_CQ_REPORT_MISSED_EVENTS)
  return cq->cq_put - cq->cq_get;

 return 0;
}
