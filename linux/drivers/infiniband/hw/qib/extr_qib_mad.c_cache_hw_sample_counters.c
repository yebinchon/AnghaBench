
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* psxmitwait; void* psrcvpkts; void* psxmitpkts; void* psrcvdata; void* psxmitdata; } ;
struct TYPE_4__ {TYPE_1__ counter_cache; } ;
struct qib_ibport {int dummy; } ;
struct qib_pportdata {TYPE_2__ cong_stats; struct qib_ibport ibport_data; } ;


 int IB_PMA_PORT_RCV_DATA ;
 int IB_PMA_PORT_RCV_PKTS ;
 int IB_PMA_PORT_XMIT_DATA ;
 int IB_PMA_PORT_XMIT_PKTS ;
 int IB_PMA_PORT_XMIT_WAIT ;
 void* get_counter (struct qib_ibport*,struct qib_pportdata*,int ) ;

__attribute__((used)) static void cache_hw_sample_counters(struct qib_pportdata *ppd)
{
 struct qib_ibport *ibp = &ppd->ibport_data;

 ppd->cong_stats.counter_cache.psxmitdata =
  get_counter(ibp, ppd, IB_PMA_PORT_XMIT_DATA);
 ppd->cong_stats.counter_cache.psrcvdata =
  get_counter(ibp, ppd, IB_PMA_PORT_RCV_DATA);
 ppd->cong_stats.counter_cache.psxmitpkts =
  get_counter(ibp, ppd, IB_PMA_PORT_XMIT_PKTS);
 ppd->cong_stats.counter_cache.psrcvpkts =
  get_counter(ibp, ppd, IB_PMA_PORT_RCV_PKTS);
 ppd->cong_stats.counter_cache.psxmitwait =
  get_counter(ibp, ppd, IB_PMA_PORT_XMIT_WAIT);
}
