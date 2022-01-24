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
struct usb_device {int dummy; } ;
struct powermate_device {int /*<<< orphan*/  configcr; int /*<<< orphan*/  data_dma; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWERMATE_PAYLOAD_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usb_device *udev, struct powermate_device *pm)
{
	FUNC1(udev, POWERMATE_PAYLOAD_SIZE_MAX,
			  pm->data, pm->data_dma);
	FUNC0(pm->configcr);
}