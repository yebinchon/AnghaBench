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
struct i2c_tiny_usb {int /*<<< orphan*/  usb_dev; } ;
struct i2c_adapter {scalar_t__ algo_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *adapter, int cmd,
		     int value, int index, void *data, int len)
{
	struct i2c_tiny_usb *dev = (struct i2c_tiny_usb *)adapter->algo_data;
	void *dmadata = FUNC1(data, len, GFP_KERNEL);
	int ret;

	if (!dmadata)
		return -ENOMEM;

	/* do control transfer */
	ret = FUNC2(dev->usb_dev, FUNC3(dev->usb_dev, 0),
			       cmd, USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
			       value, index, dmadata, len, 2000);

	FUNC0(dmadata);
	return ret;
}