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
struct hid_driver {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  __bus_removed_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct hid_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hid_bus_type ; 
 int /*<<< orphan*/  FUNC2 (struct hid_driver*) ; 

void FUNC3(struct hid_driver *hdrv)
{
	FUNC1(&hdrv->driver);
	FUNC2(hdrv);

	FUNC0(&hid_bus_type, NULL, hdrv, __bus_removed_driver);
}