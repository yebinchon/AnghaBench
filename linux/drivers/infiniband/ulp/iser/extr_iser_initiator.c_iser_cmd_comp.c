
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wc {scalar_t__ status; } ;
struct ib_cq {int dummy; } ;


 scalar_t__ IB_WC_SUCCESS ;
 int iser_err_comp (struct ib_wc*,char*) ;
 scalar_t__ unlikely (int) ;

void iser_cmd_comp(struct ib_cq *cq, struct ib_wc *wc)
{
 if (unlikely(wc->status != IB_WC_SUCCESS))
  iser_err_comp(wc, "command");
}
