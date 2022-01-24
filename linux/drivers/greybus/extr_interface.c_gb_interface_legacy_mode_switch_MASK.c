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
struct gb_interface {int disconnected; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_interface*) ; 
 int FUNC4 (struct gb_interface*) ; 

__attribute__((used)) static int FUNC5(struct gb_interface *intf)
{
	int ret;

	FUNC1(&intf->dev, "legacy mode switch detected\n");

	/* Mark as disconnected to prevent I/O during disable. */
	intf->disconnected = true;
	FUNC3(intf);
	intf->disconnected = false;

	ret = FUNC4(intf);
	if (ret) {
		FUNC0(&intf->dev, "failed to re-enable interface: %d\n", ret);
		FUNC2(intf);
	}

	return ret;
}