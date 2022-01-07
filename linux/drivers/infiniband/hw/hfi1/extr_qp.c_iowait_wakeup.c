
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int dummy; } ;
struct iowait {int dummy; } ;


 int RVT_S_WAIT_DMA_DESC ;
 int SDMA_AVAIL_REASON ;
 int WARN_ON (int) ;
 int hfi1_qp_wakeup (struct rvt_qp*,int ) ;
 struct rvt_qp* iowait_to_qp (struct iowait*) ;

__attribute__((used)) static void iowait_wakeup(struct iowait *wait, int reason)
{
 struct rvt_qp *qp = iowait_to_qp(wait);

 WARN_ON(reason != SDMA_AVAIL_REASON);
 hfi1_qp_wakeup(qp, RVT_S_WAIT_DMA_DESC);
}
