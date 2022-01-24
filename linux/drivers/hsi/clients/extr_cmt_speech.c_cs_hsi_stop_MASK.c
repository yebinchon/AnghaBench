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
struct cs_hsi_iface {int /*<<< orphan*/  lock; int /*<<< orphan*/  pm_qos_req; int /*<<< orphan*/  data_state; int /*<<< orphan*/  control_state; TYPE_1__* cl; int /*<<< orphan*/  iface_state; int /*<<< orphan*/  master; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct cs_hsi_iface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct cs_hsi_iface *hi)
{
	FUNC5(&hi->cl->device, "cs_hsi_stop\n");
	FUNC3(hi, 0);
	FUNC12(hi->master);

	/* hsi_release_port() needs to be called with CS_STATE_CLOSED */
	hi->iface_state = CS_STATE_CLOSED;
	FUNC6(hi->cl);

	/*
	 * hsi_release_port() should flush out all the pending
	 * messages, so cs_state_idle() should be true for both
	 * control and data channels.
	 */
	FUNC0(!FUNC4(hi->control_state));
	FUNC0(!FUNC4(hi->data_state));

	if (FUNC9(&hi->pm_qos_req))
		FUNC8(&hi->pm_qos_req);

	FUNC10(&hi->lock);
	FUNC2(hi);
	FUNC1(hi);
	FUNC11(&hi->lock);
	FUNC7(hi);
}