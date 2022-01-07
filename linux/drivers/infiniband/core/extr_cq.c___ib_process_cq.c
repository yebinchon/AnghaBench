
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_wc {scalar_t__ status; TYPE_1__* wr_cqe; } ;
struct ib_cq {int dummy; } ;
struct TYPE_2__ {int (* done ) (struct ib_cq*,struct ib_wc*) ;} ;


 scalar_t__ IB_WC_SUCCESS ;
 int WARN_ON_ONCE (int) ;
 int ib_poll_cq (struct ib_cq*,int ,struct ib_wc*) ;
 int min_t (int ,int,int) ;
 int stub1 (struct ib_cq*,struct ib_wc*) ;
 int u32 ;

__attribute__((used)) static int __ib_process_cq(struct ib_cq *cq, int budget, struct ib_wc *wcs,
      int batch)
{
 int i, n, completed = 0;






 while ((n = ib_poll_cq(cq, min_t(u32, batch,
      budget - completed), wcs)) > 0) {
  for (i = 0; i < n; i++) {
   struct ib_wc *wc = &wcs[i];

   if (wc->wr_cqe)
    wc->wr_cqe->done(cq, wc);
   else
    WARN_ON_ONCE(wc->status == IB_WC_SUCCESS);
  }

  completed += n;

  if (n != batch || (budget != -1 && completed >= budget))
   break;
 }

 return completed;
}
