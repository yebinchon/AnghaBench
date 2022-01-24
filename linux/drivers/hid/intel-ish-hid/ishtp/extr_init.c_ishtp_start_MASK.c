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
struct ishtp_device {int /*<<< orphan*/  dev_state; int /*<<< orphan*/  devc; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ISHTP_DEV_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_device*) ; 

int FUNC3(struct ishtp_device *dev)
{
	if (FUNC1(dev)) {
		FUNC0(dev->devc, "HBM haven't started");
		goto err;
	}

	/* suspend & resume notification - send QUERY_SUBSCRIBERS msg */
	FUNC2(dev);

	return 0;
err:
	FUNC0(dev->devc, "link layer initialization failed.\n");
	dev->dev_state = ISHTP_DEV_DISABLED;
	return -ENODEV;
}