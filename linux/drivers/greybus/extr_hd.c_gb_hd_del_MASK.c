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
struct gb_host_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  svc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_host_device*) ; 

void FUNC3(struct gb_host_device *hd)
{
	FUNC2(hd);

	/*
	 * Tear down the svc and flush any on-going hotplug processing before
	 * removing the remaining interfaces.
	 */
	FUNC1(hd->svc);

	FUNC0(&hd->dev);
}