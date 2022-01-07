
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {scalar_t__ s_last; scalar_t__ s_acked; scalar_t__ s_cur; scalar_t__ s_tail; scalar_t__ s_head; } ;



__attribute__((used)) static int qp_idle(struct rvt_qp *qp)
{
 return
  qp->s_last == qp->s_acked &&
  qp->s_acked == qp->s_cur &&
  qp->s_cur == qp->s_tail &&
  qp->s_tail == qp->s_head;
}
