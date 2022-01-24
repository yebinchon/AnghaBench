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
struct ishtp_device {int /*<<< orphan*/  devc; int /*<<< orphan*/  recvd_hw_ready; int /*<<< orphan*/  wait_hw_ready; } ;

/* Variables and functions */
 int ENODEV ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct ishtp_device *dev)
{
	FUNC1(dev);

	FUNC3(dev);

	/* After that we can enable ISH DMA operation and wakeup ISHFW */
	FUNC2(dev);

	/* wait for FW-initiated reset flow */
	if (!dev->recvd_hw_ready)
		FUNC4(dev->wait_hw_ready,
						 dev->recvd_hw_ready,
						 10 * HZ);

	if (!dev->recvd_hw_ready) {
		FUNC0(dev->devc,
			"[ishtp-ish]: Timed out waiting for FW-initiated reset\n");
		return	-ENODEV;
	}

	return 0;
}