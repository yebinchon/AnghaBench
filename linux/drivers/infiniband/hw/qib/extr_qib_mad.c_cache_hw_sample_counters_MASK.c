#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* psxmitwait; void* psrcvpkts; void* psxmitpkts; void* psrcvdata; void* psxmitdata; } ;
struct TYPE_4__ {TYPE_1__ counter_cache; } ;
struct qib_ibport {int dummy; } ;
struct qib_pportdata {TYPE_2__ cong_stats; struct qib_ibport ibport_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_PMA_PORT_RCV_DATA ; 
 int /*<<< orphan*/  IB_PMA_PORT_RCV_PKTS ; 
 int /*<<< orphan*/  IB_PMA_PORT_XMIT_DATA ; 
 int /*<<< orphan*/  IB_PMA_PORT_XMIT_PKTS ; 
 int /*<<< orphan*/  IB_PMA_PORT_XMIT_WAIT ; 
 void* FUNC0 (struct qib_ibport*,struct qib_pportdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct qib_pportdata *ppd)
{
	struct qib_ibport *ibp = &ppd->ibport_data;

	ppd->cong_stats.counter_cache.psxmitdata =
		FUNC0(ibp, ppd, IB_PMA_PORT_XMIT_DATA);
	ppd->cong_stats.counter_cache.psrcvdata =
		FUNC0(ibp, ppd, IB_PMA_PORT_RCV_DATA);
	ppd->cong_stats.counter_cache.psxmitpkts =
		FUNC0(ibp, ppd, IB_PMA_PORT_XMIT_PKTS);
	ppd->cong_stats.counter_cache.psrcvpkts =
		FUNC0(ibp, ppd, IB_PMA_PORT_RCV_PKTS);
	ppd->cong_stats.counter_cache.psxmitwait =
		FUNC0(ibp, ppd, IB_PMA_PORT_XMIT_WAIT);
}