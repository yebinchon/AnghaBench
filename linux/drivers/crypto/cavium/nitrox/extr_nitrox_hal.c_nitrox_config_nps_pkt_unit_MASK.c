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
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_device*) ; 

void FUNC3(struct nitrox_device *ndev)
{
	/* config input and solicit ports */
	FUNC1(ndev);
	FUNC2(ndev);

	/* enable nps packet interrupts */
	FUNC0(ndev);
}