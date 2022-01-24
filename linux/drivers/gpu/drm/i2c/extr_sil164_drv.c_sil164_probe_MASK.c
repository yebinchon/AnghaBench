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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SIL164_DEVICE_HI ; 
 int /*<<< orphan*/  SIL164_DEVICE_LO ; 
 int /*<<< orphan*/  SIL164_REVISION ; 
 int /*<<< orphan*/  SIL164_VENDOR_HI ; 
 int /*<<< orphan*/  SIL164_VENDOR_LO ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,char*,int,int,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct i2c_client *client, const struct i2c_device_id *id)
{
	int vendor = FUNC2(client, SIL164_VENDOR_HI) << 8 |
		FUNC2(client, SIL164_VENDOR_LO);
	int device = FUNC2(client, SIL164_DEVICE_HI) << 8 |
		FUNC2(client, SIL164_DEVICE_LO);
	int rev = FUNC2(client, SIL164_REVISION);

	if (vendor != 0x1 || device != 0x6) {
		FUNC0(client, "Unknown device %x:%x.%x\n",
			   vendor, device, rev);
		return -ENODEV;
	}

	FUNC1(client, "Detected device %x:%x.%x\n",
		    vendor, device, rev);

	return 0;
}