
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cons; scalar_t__ prod; } ;
struct bnxt_qplib_q {TYPE_1__ hwq; scalar_t__ q_full_delta; } ;


 scalar_t__ HWQ_CMP (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static inline bool bnxt_qplib_queue_full(struct bnxt_qplib_q *qplib_q)
{
 return HWQ_CMP((qplib_q->hwq.prod + qplib_q->q_full_delta),
         &qplib_q->hwq) == HWQ_CMP(qplib_q->hwq.cons,
       &qplib_q->hwq);
}
