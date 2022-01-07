
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ flags; int counter; } ;
struct qib_pportdata {TYPE_1__ cong_stats; } ;
struct TYPE_4__ {scalar_t__ pma_tag; int lock; int * pma_counter_select; } ;
struct qib_ibport {TYPE_2__ rvp; } ;
struct qib_ibdev {int dummy; } ;
struct qib_devdata {scalar_t__ (* f_portcntr ) (struct qib_pportdata*,int ) ;int (* f_set_cntr_sample ) (struct qib_pportdata*,int ,int ) ;} ;
struct ib_smp {int dummy; } ;
struct ib_pma_portsamplesresult_ext {int * counter; int extended_width; void* sample_status; void* tag; } ;
struct ib_pma_mad {scalar_t__ data; } ;
struct ib_device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IB_PMA_CONG_HW_CONTROL_TIMER ;
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ;
 int QIBPORTCNTR_PSSTAT ;
 int QIB_CONG_TIMER_PSINTERVAL ;
 int cache_hw_sample_counters (struct qib_pportdata*) ;
 void* cpu_to_be16 (scalar_t__) ;
 int cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 struct qib_devdata* dd_from_dev (struct qib_ibdev*) ;
 int get_cache_hw_sample_counters (struct qib_pportdata*,int ) ;
 int memset (scalar_t__,int ,int) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int reply (struct ib_smp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (struct qib_pportdata*,int ) ;
 int stub2 (struct qib_pportdata*,int ,int ) ;
 struct qib_ibdev* to_idev (struct ib_device*) ;
 struct qib_ibport* to_iport (struct ib_device*,scalar_t__) ;
 int xmit_wait_get_value_delta (struct qib_pportdata*) ;

__attribute__((used)) static int pma_get_portsamplesresult_ext(struct ib_pma_mad *pmp,
      struct ib_device *ibdev, u8 port)
{
 struct ib_pma_portsamplesresult_ext *p =
  (struct ib_pma_portsamplesresult_ext *)pmp->data;
 struct qib_ibdev *dev = to_idev(ibdev);
 struct qib_devdata *dd = dd_from_dev(dev);
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 unsigned long flags;
 u8 status;
 int i;


 memset(pmp->data, 0, sizeof(pmp->data));
 spin_lock_irqsave(&ibp->rvp.lock, flags);
 p->tag = cpu_to_be16(ibp->rvp.pma_tag);
 if (ppd->cong_stats.flags == IB_PMA_CONG_HW_CONTROL_TIMER)
  p->sample_status = IB_PMA_SAMPLE_STATUS_DONE;
 else {
  status = dd->f_portcntr(ppd, QIBPORTCNTR_PSSTAT);
  p->sample_status = cpu_to_be16(status);

  p->extended_width = cpu_to_be32(0x80000000);
  if (status == IB_PMA_SAMPLE_STATUS_DONE) {
   cache_hw_sample_counters(ppd);
   ppd->cong_stats.counter =
    xmit_wait_get_value_delta(ppd);
   dd->f_set_cntr_sample(ppd,
           QIB_CONG_TIMER_PSINTERVAL, 0);
   ppd->cong_stats.flags = IB_PMA_CONG_HW_CONTROL_TIMER;
  }
 }
 for (i = 0; i < ARRAY_SIZE(ibp->rvp.pma_counter_select); i++)
  p->counter[i] = cpu_to_be64(
   get_cache_hw_sample_counters(
    ppd, ibp->rvp.pma_counter_select[i]));
 spin_unlock_irqrestore(&ibp->rvp.lock, flags);

 return reply((struct ib_smp *) pmp);
}
