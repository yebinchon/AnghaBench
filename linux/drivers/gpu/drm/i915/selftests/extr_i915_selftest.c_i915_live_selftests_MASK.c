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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int live; } ;

/* Variables and functions */
 int ENOTTY ; 
 TYPE_1__ i915_selftest ; 
 int /*<<< orphan*/  live ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct pci_dev *pdev)
{
	int err;

	if (!i915_selftest.live)
		return 0;

	err = FUNC1(live, FUNC0(pdev));
	if (err) {
		i915_selftest.live = err;
		return err;
	}

	if (i915_selftest.live < 0) {
		i915_selftest.live = -ENOTTY;
		return 1;
	}

	return 0;
}