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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsg_ring_led ; 
 int /*<<< orphan*/  fsg_sata_led ; 
 int /*<<< orphan*/  fsg_sync_led ; 
 int /*<<< orphan*/  fsg_usb_led ; 
 int /*<<< orphan*/  fsg_wan_led ; 
 int /*<<< orphan*/  fsg_wlan_led ; 
 int* latch_address ; 
 int latch_value ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int ret;

	/* Map the LED chip select address space */
	latch_address = (unsigned short *) FUNC1(&pdev->dev,
						FUNC0(2), 512);
	if (!latch_address)
		return -ENOMEM;

	latch_value = 0xffff;
	*latch_address = latch_value;

	ret = FUNC2(&pdev->dev, &fsg_wlan_led);
	if (ret < 0)
		return ret;

	ret = FUNC2(&pdev->dev, &fsg_wan_led);
	if (ret < 0)
		return ret;

	ret = FUNC2(&pdev->dev, &fsg_sata_led);
	if (ret < 0)
		return ret;

	ret = FUNC2(&pdev->dev, &fsg_usb_led);
	if (ret < 0)
		return ret;

	ret = FUNC2(&pdev->dev, &fsg_sync_led);
	if (ret < 0)
		return ret;

	ret = FUNC2(&pdev->dev, &fsg_ring_led);
	if (ret < 0)
		return ret;

	return ret;
}