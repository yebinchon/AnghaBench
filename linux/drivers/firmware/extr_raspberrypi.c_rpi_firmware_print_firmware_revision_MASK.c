#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tm {int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct rpi_firmware {TYPE_1__ cl; } ;
typedef  int /*<<< orphan*/  packet ;

/* Variables and functions */
 int /*<<< orphan*/  RPI_FIRMWARE_GET_FIRMWARE_REVISION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rpi_firmware*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tm*) ; 

__attribute__((used)) static void
FUNC3(struct rpi_firmware *fw)
{
	u32 packet;
	int ret = FUNC1(fw,
					RPI_FIRMWARE_GET_FIRMWARE_REVISION,
					&packet, sizeof(packet));

	if (ret == 0) {
		struct tm tm;

		FUNC2(packet, 0, &tm);

		FUNC0(fw->cl.dev,
			 "Attached to firmware from %04ld-%02d-%02d %02d:%02d\n",
			 tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday,
			 tm.tm_hour, tm.tm_min);
	}
}