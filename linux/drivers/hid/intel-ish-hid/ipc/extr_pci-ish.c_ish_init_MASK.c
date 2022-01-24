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
struct ishtp_device {int /*<<< orphan*/  devc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ishtp_device*) ; 
 int FUNC2 (struct ishtp_device*) ; 

__attribute__((used)) static int FUNC3(struct ishtp_device *dev)
{
	int ret;

	/* Set the state of ISH HW to start */
	ret = FUNC1(dev);
	if (ret) {
		FUNC0(dev->devc, "ISH: hw start failed.\n");
		return ret;
	}

	/* Start the inter process communication to ISH processor */
	ret = FUNC2(dev);
	if (ret) {
		FUNC0(dev->devc, "ISHTP: Protocol init failed.\n");
		return ret;
	}

	return 0;
}