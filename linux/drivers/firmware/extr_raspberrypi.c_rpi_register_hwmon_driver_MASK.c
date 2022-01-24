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
typedef  int /*<<< orphan*/  u32 ;
struct rpi_firmware {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  packet ;

/* Variables and functions */
 int /*<<< orphan*/  RPI_FIRMWARE_GET_THROTTLED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rpi_firmware*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rpi_hwmon ; 

__attribute__((used)) static void
FUNC2(struct device *dev, struct rpi_firmware *fw)
{
	u32 packet;
	int ret = FUNC1(fw, RPI_FIRMWARE_GET_THROTTLED,
					&packet, sizeof(packet));

	if (ret)
		return;

	rpi_hwmon = FUNC0(dev, "raspberrypi-hwmon",
						  -1, NULL, 0);
}