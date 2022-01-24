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
struct nitrox_device {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __NDEV_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_device*) ; 
 int FUNC2 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*) ; 
 int FUNC6 () ; 
 int FUNC7 (struct nitrox_device*) ; 

__attribute__((used)) static int FUNC8(struct nitrox_device *ndev)
{
	int err;

	/* allocate resources for PF */
	err = FUNC2(ndev);
	if (err)
		return err;

	err = FUNC7(ndev);
	if (err) {
		FUNC1(ndev);
		return err;
	}

	/* configure the AQM queues */
	FUNC3(ndev);

	/* configure the packet queues */
	FUNC4(ndev);
	FUNC5(ndev);

	/* set device to ready state */
	FUNC0(&ndev->state, __NDEV_READY);

	/* register crypto algorithms */
	return FUNC6();
}