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
 int /*<<< orphan*/  __NDEV_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_device*) ; 

__attribute__((used)) static void FUNC4(struct nitrox_device *ndev)
{
	 /* PF has no queues in SR-IOV mode */
	FUNC0(&ndev->state, __NDEV_NOT_READY);
	/* unregister crypto algorithms */
	FUNC2();

	/* cleanup PF resources */
	FUNC3(ndev);
	FUNC1(ndev);
}