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
struct i7core_pvt {int /*<<< orphan*/  i7core_pci; TYPE_2__* i7core_dev; } ;
struct TYPE_4__ {TYPE_1__** pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_MOD_STR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct i7core_pvt *pvt)
{
	pvt->i7core_pci = FUNC0(
						&pvt->i7core_dev->pdev[0]->dev,
						EDAC_MOD_STR);
	if (FUNC2(!pvt->i7core_pci))
		FUNC1(KERN_WARNING,
			      "Unable to setup PCI error report via EDAC\n");
}