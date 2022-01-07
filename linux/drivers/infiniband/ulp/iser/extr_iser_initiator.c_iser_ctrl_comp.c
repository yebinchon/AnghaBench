
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_tx_desc {int dummy; } ;
struct iscsi_task {TYPE_1__* hdr; } ;
struct ib_wc {scalar_t__ status; int wr_cqe; } ;
struct ib_cq {int dummy; } ;
struct TYPE_2__ {scalar_t__ itt; } ;


 scalar_t__ IB_WC_SUCCESS ;
 scalar_t__ RESERVED_ITT ;
 int iscsi_put_task (struct iscsi_task*) ;
 int iser_err_comp (struct ib_wc*,char*) ;
 struct iser_tx_desc* iser_tx (int ) ;
 scalar_t__ unlikely (int) ;

void iser_ctrl_comp(struct ib_cq *cq, struct ib_wc *wc)
{
 struct iser_tx_desc *desc = iser_tx(wc->wr_cqe);
 struct iscsi_task *task;

 if (unlikely(wc->status != IB_WC_SUCCESS)) {
  iser_err_comp(wc, "control");
  return;
 }


 task = (void *)desc - sizeof(struct iscsi_task);
 if (task->hdr->itt == RESERVED_ITT)
  iscsi_put_task(task);
}
