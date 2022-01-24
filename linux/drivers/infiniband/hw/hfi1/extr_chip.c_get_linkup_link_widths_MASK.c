#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct hfi1_pportdata {int /*<<< orphan*/  current_egress_rate; int /*<<< orphan*/  link_width_downgrade_supported; int /*<<< orphan*/  link_width_downgrade_enabled; int /*<<< orphan*/  link_width_active; int /*<<< orphan*/  link_width_downgrade_rx_active; int /*<<< orphan*/  link_width_downgrade_tx_active; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct hfi1_pportdata *ppd)
{
	u16 tx_width, rx_width;

	/* get end-of-LNI link widths */
	FUNC1(ppd->dd, &tx_width, &rx_width);

	/* use tx_width as the link is supposed to be symmetric on link up */
	ppd->link_width_active = tx_width;
	/* link width downgrade active (LWD.A) starts out matching LW.A */
	ppd->link_width_downgrade_tx_active = ppd->link_width_active;
	ppd->link_width_downgrade_rx_active = ppd->link_width_active;
	/* per OPA spec, on link up LWD.E resets to LWD.S */
	ppd->link_width_downgrade_enabled = ppd->link_width_downgrade_supported;
	/* cache the active egress rate (units {10^6 bits/sec]) */
	ppd->current_egress_rate = FUNC0(ppd);
}