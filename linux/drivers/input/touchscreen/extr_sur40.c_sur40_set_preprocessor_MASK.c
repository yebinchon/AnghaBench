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
typedef  int u8 ;
struct sur40_state {int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  SUR40_POKE ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sur40_state *dev, u8 value)
{
	u8 setting_07[2] = { 0x01, 0x00 };
	u8 setting_17[2] = { 0x85, 0x80 };
	int result;

	if (value > 1)
		return -ERANGE;

	result = FUNC1(dev->usbdev, FUNC2(dev->usbdev, 0),
		SUR40_POKE, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
		0x07, setting_07[value], NULL, 0, 1000);
	if (result < 0)
		goto error;
	FUNC0(5);

	result = FUNC1(dev->usbdev, FUNC2(dev->usbdev, 0),
		SUR40_POKE, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
		0x17, setting_17[value], NULL, 0, 1000);
	if (result < 0)
		goto error;
	FUNC0(5);

error:
	return result;
}