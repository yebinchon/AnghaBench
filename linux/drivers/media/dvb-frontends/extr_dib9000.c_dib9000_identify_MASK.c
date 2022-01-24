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
typedef  int u16 ;
struct i2c_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static u16 FUNC2(struct i2c_device *client)
{
	u16 value;

	value = FUNC0(client, 896);
	if (value != 0x01b3) {
		FUNC1("wrong Vendor ID (0x%x)\n", value);
		return 0;
	}

	value = FUNC0(client, 897);
	if (value != 0x4000 && value != 0x4001 && value != 0x4002 && value != 0x4003 && value != 0x4004 && value != 0x4005) {
		FUNC1("wrong Device ID (0x%x)\n", value);
		return 0;
	}

	/* protect this driver to be used with 7000PC */
	if (value == 0x4000 && FUNC0(client, 769) == 0x4000) {
		FUNC1("this driver does not work with DiB7000PC\n");
		return 0;
	}

	switch (value) {
	case 0x4000:
		FUNC1("found DiB7000MA/PA/MB/PB\n");
		break;
	case 0x4001:
		FUNC1("found DiB7000HC\n");
		break;
	case 0x4002:
		FUNC1("found DiB7000MC\n");
		break;
	case 0x4003:
		FUNC1("found DiB9000A\n");
		break;
	case 0x4004:
		FUNC1("found DiB9000H\n");
		break;
	case 0x4005:
		FUNC1("found DiB9000M\n");
		break;
	}

	return value;
}