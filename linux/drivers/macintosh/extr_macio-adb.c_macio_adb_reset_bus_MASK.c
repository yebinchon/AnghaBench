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
struct TYPE_3__ {int /*<<< orphan*/  r; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;

/* Variables and functions */
 int ADB_RST ; 
 TYPE_2__* adb ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  macio_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(void)
{
	unsigned long flags;
	int timeout = 1000000;

	/* Hrm... we may want to not lock interrupts for so
	 * long ... oh well, who uses that chip anyway ? :)
	 * That function will be seldom used during boot
	 * on rare machines, so...
	 */
	FUNC2(&macio_lock, flags);
	FUNC1(&adb->ctrl.r, FUNC0(&adb->ctrl.r) | ADB_RST);
	while ((FUNC0(&adb->ctrl.r) & ADB_RST) != 0) {
		if (--timeout == 0) {
			FUNC1(&adb->ctrl.r, FUNC0(&adb->ctrl.r) & ~ADB_RST);
			FUNC3(&macio_lock, flags);
			return -1;
		}
	}
	FUNC3(&macio_lock, flags);
	return 0;
}