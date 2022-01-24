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
typedef  int /*<<< orphan*/  u_long ;
struct hfc_multi {int /*<<< orphan*/  lock; TYPE_1__* chan; } ;
struct bchannel {size_t slot; struct hfc_multi* hw; } ;
struct TYPE_2__ {int conf; scalar_t__ rx_off; scalar_t__ coeff_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISDN_P_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct bchannel*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfc_multi*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bchannel *bch)
{
	struct hfc_multi	*hc = bch->hw;
	u_long			flags;

	FUNC2(&hc->lock, flags);
	FUNC0(bch);
	hc->chan[bch->slot].coeff_count = 0;
	hc->chan[bch->slot].rx_off = 0;
	hc->chan[bch->slot].conf = -1;
	FUNC1(hc, bch->slot, ISDN_P_NONE, -1, 0, -1, 0);
	FUNC3(&hc->lock, flags);
}