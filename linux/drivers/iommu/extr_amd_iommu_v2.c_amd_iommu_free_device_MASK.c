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
struct pci_dev {int dummy; } ;
struct device_state {int /*<<< orphan*/  count; int /*<<< orphan*/  wq; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 struct device_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device_state*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  state_lock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void FUNC11(struct pci_dev *pdev)
{
	struct device_state *dev_state;
	unsigned long flags;
	u16 devid;

	if (!FUNC1())
		return;

	devid = FUNC3(pdev);

	FUNC8(&state_lock, flags);

	dev_state = FUNC0(devid);
	if (dev_state == NULL) {
		FUNC9(&state_lock, flags);
		return;
	}

	FUNC6(&dev_state->list);

	FUNC9(&state_lock, flags);

	/* Get rid of any remaining pasid states */
	FUNC5(dev_state);

	FUNC7(dev_state);
	/*
	 * Wait until the last reference is dropped before freeing
	 * the device state.
	 */
	FUNC10(dev_state->wq, !FUNC2(&dev_state->count));
	FUNC4(dev_state);
}