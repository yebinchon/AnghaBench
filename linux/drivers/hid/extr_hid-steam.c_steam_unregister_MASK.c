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
struct steam_device {scalar_t__* serial_no; int /*<<< orphan*/  list; int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct steam_device*) ; 
 int /*<<< orphan*/  steam_devices_lock ; 
 int /*<<< orphan*/  FUNC5 (struct steam_device*) ; 

__attribute__((used)) static void FUNC6(struct steam_device *steam)
{
	FUNC4(steam);
	FUNC5(steam);
	if (steam->serial_no[0]) {
		FUNC0(steam->hdev, "Steam Controller '%s' disconnected",
				steam->serial_no);
		FUNC2(&steam_devices_lock);
		FUNC1(&steam->list);
		FUNC3(&steam_devices_lock);
		steam->serial_no[0] = 0;
	}
}