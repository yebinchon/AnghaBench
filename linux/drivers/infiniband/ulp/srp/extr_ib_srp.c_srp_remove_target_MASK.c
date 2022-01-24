#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct srp_target_port {scalar_t__ state; int ch_count; int /*<<< orphan*/  scsi_host; TYPE_1__* srp_host; int /*<<< orphan*/  list; struct srp_rdma_ch* ch; int /*<<< orphan*/  rport; int /*<<< orphan*/  tl_err_work; int /*<<< orphan*/  net; } ;
struct srp_rdma_ch {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  target_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_NS_TYPE_NET ; 
 scalar_t__ SRP_TARGET_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct srp_rdma_ch*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct srp_target_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct srp_target_port*,struct srp_rdma_ch*) ; 
 int /*<<< orphan*/  FUNC12 (struct srp_target_port*,struct srp_rdma_ch*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct srp_target_port *target)
{
	struct srp_rdma_ch *ch;
	int i;

	FUNC0(target->state != SRP_TARGET_REMOVED);

	FUNC9(target->scsi_host);
	FUNC14(target->rport);
	FUNC13(target->scsi_host);
	FUNC6(target->scsi_host);
	FUNC16(target->rport);
	FUNC10(target);
	FUNC3(KOBJ_NS_TYPE_NET, target->net);
	for (i = 0; i < target->ch_count; i++) {
		ch = &target->ch[i];
		FUNC11(target, ch);
	}
	FUNC1(&target->tl_err_work);
	FUNC15(target->rport);
	for (i = 0; i < target->ch_count; i++) {
		ch = &target->ch[i];
		FUNC12(target, ch);
	}
	FUNC2(target->ch);
	target->ch = NULL;

	FUNC7(&target->srp_host->target_lock);
	FUNC4(&target->list);
	FUNC8(&target->srp_host->target_lock);

	FUNC5(target->scsi_host);
}