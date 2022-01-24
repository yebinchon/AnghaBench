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
typedef  int /*<<< orphan*/  u_long ;
struct hfc_pci {int /*<<< orphan*/  lock; } ;
struct bchannel {int /*<<< orphan*/  nr; struct hfc_pci* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISDN_P_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct bchannel*) ; 
 int /*<<< orphan*/  FUNC1 (struct bchannel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bchannel *bch)
{
	struct hfc_pci	*hc = bch->hw;
	u_long		flags;

	FUNC2(&hc->lock, flags);
	FUNC0(bch);
	FUNC1(bch, bch->nr, ISDN_P_NONE);
	FUNC3(&hc->lock, flags);
}