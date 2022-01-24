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
struct hfcsusb {scalar_t__ protocol; } ;
struct dchannel {struct hfcsusb* hw; } ;

/* Variables and functions */
 scalar_t__ ISDN_P_NT_S0 ; 
 scalar_t__ ISDN_P_TE_S0 ; 
 int /*<<< orphan*/  FUNC0 (struct dchannel*) ; 
 int /*<<< orphan*/  FUNC1 (struct dchannel*) ; 

__attribute__((used)) static void
FUNC2(struct dchannel *dch)
{
	struct hfcsusb *hw = dch->hw;

	if (hw->protocol == ISDN_P_NT_S0)
		FUNC0(dch);
	else if (hw->protocol == ISDN_P_TE_S0)
		FUNC1(dch);
}