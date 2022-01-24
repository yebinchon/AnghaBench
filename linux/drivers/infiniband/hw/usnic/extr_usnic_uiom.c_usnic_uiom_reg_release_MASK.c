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
struct usnic_uiom_reg {TYPE_1__* owning_mm; int /*<<< orphan*/  pd; } ;
struct TYPE_2__ {int /*<<< orphan*/  pinned_vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct usnic_uiom_reg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usnic_uiom_reg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usnic_uiom_reg*) ; 

void FUNC4(struct usnic_uiom_reg *uiomr)
{
	FUNC0(uiomr->pd, uiomr, 1);

	FUNC2(FUNC3(uiomr), &uiomr->owning_mm->pinned_vm);
	FUNC1(uiomr);
}