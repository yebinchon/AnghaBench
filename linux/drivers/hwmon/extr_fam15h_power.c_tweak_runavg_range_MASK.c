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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_TDP_RUNNING_AVERAGE ; 
 int /*<<< orphan*/  affected_device ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pci_dev*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	u32 val;

	/*
	 * let this quirk apply only to the current version of the
	 * northbridge, since future versions may change the behavior
	 */
	if (!FUNC4(affected_device, pdev))
		return;

	FUNC2(pdev->bus,
		FUNC0(FUNC1(pdev->devfn), 5),
		REG_TDP_RUNNING_AVERAGE, &val);
	if ((val & 0xf) != 0xe)
		return;

	val &= ~0xf;
	val |=  0x9;
	FUNC3(pdev->bus,
		FUNC0(FUNC1(pdev->devfn), 5),
		REG_TDP_RUNNING_AVERAGE, val);
}