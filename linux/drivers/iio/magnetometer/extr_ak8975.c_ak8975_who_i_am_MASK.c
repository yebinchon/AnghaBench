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
typedef  scalar_t__ u8 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  enum asahi_compass_chipset { ____Placeholder_asahi_compass_chipset } asahi_compass_chipset ;

/* Variables and functions */
#define  AK09911 131 
 scalar_t__ AK09911_DEVICE_ID ; 
#define  AK09912 130 
 scalar_t__ AK09912_DEVICE_ID ; 
 int /*<<< orphan*/  AK09912_REG_WIA1 ; 
#define  AK8963 129 
#define  AK8975 128 
 scalar_t__ AK8975_DEVICE_ID ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
			   enum asahi_compass_chipset type)
{
	u8 wia_val[2];
	int ret;

	/*
	 * Signature for each device:
	 * Device   |  WIA1      |  WIA2
	 * AK09912  |  DEVICE_ID |  AK09912_DEVICE_ID
	 * AK09911  |  DEVICE_ID |  AK09911_DEVICE_ID
	 * AK8975   |  DEVICE_ID |  NA
	 * AK8963   |  DEVICE_ID |  NA
	 */
	ret = FUNC1(
			client, AK09912_REG_WIA1, 2, wia_val);
	if (ret < 0) {
		FUNC0(&client->dev, "Error reading WIA\n");
		return ret;
	}

	if (wia_val[0] != AK8975_DEVICE_ID)
		return -ENODEV;

	switch (type) {
	case AK8975:
	case AK8963:
		return 0;
	case AK09911:
		if (wia_val[1] == AK09911_DEVICE_ID)
			return 0;
		break;
	case AK09912:
		if (wia_val[1] == AK09912_DEVICE_ID)
			return 0;
		break;
	default:
		FUNC0(&client->dev, "Type %d unknown\n", type);
	}
	return -ENODEV;
}