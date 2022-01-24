#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_6__ {scalar_t__ num_log_addrs; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  fhs; scalar_t__ unregistered; } ;
struct cec_adapter {scalar_t__ phys_addr; int transmit_in_progress; int last_initiator; TYPE_3__ log_addrs; TYPE_2__ devnode; TYPE_1__* ops; scalar_t__ needs_hpd; scalar_t__ monitor_all_cnt; int /*<<< orphan*/  kthread_waitq; } ;
struct TYPE_4__ {scalar_t__ (* adap_enable ) (struct cec_adapter*,int) ;} ;

/* Variables and functions */
 scalar_t__ CEC_PHYS_ADDR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  adap_monitor_all_enable ; 
 scalar_t__ FUNC1 (struct cec_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct cec_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct cec_adapter*,int) ; 
 scalar_t__ FUNC11 (struct cec_adapter*,int) ; 
 scalar_t__ FUNC12 (struct cec_adapter*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(struct cec_adapter *adap, u16 phys_addr, bool block)
{
	if (phys_addr == adap->phys_addr)
		return;
	if (phys_addr != CEC_PHYS_ADDR_INVALID && adap->devnode.unregistered)
		return;

	FUNC6(1, "new physical address %x.%x.%x.%x\n",
		FUNC4(phys_addr));
	if (phys_addr == CEC_PHYS_ADDR_INVALID ||
	    adap->phys_addr != CEC_PHYS_ADDR_INVALID) {
		adap->phys_addr = CEC_PHYS_ADDR_INVALID;
		FUNC5(adap);
		FUNC2(adap);
		/* Disabling monitor all mode should always succeed */
		if (adap->monitor_all_cnt)
			FUNC0(FUNC1(adap, adap_monitor_all_enable, false));
		FUNC8(&adap->devnode.lock);
		if (adap->needs_hpd || FUNC7(&adap->devnode.fhs)) {
			FUNC0(adap->ops->adap_enable(adap, false));
			adap->transmit_in_progress = false;
			FUNC13(&adap->kthread_waitq);
		}
		FUNC9(&adap->devnode.lock);
		if (phys_addr == CEC_PHYS_ADDR_INVALID)
			return;
	}

	FUNC8(&adap->devnode.lock);
	adap->last_initiator = 0xff;
	adap->transmit_in_progress = false;

	if ((adap->needs_hpd || FUNC7(&adap->devnode.fhs)) &&
	    adap->ops->adap_enable(adap, true)) {
		FUNC9(&adap->devnode.lock);
		return;
	}

	if (adap->monitor_all_cnt &&
	    FUNC1(adap, adap_monitor_all_enable, true)) {
		if (adap->needs_hpd || FUNC7(&adap->devnode.fhs))
			FUNC0(adap->ops->adap_enable(adap, false));
		FUNC9(&adap->devnode.lock);
		return;
	}
	FUNC9(&adap->devnode.lock);

	adap->phys_addr = phys_addr;
	FUNC5(adap);
	if (adap->log_addrs.num_log_addrs)
		FUNC3(adap, block);
}