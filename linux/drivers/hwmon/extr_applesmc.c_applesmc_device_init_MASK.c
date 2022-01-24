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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  has_accelerometer; } ;

/* Variables and functions */
 int INIT_TIMEOUT_MSECS ; 
 scalar_t__ INIT_WAIT_MSECS ; 
 int /*<<< orphan*/  MOTION_SENSOR_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ smcreg ; 

__attribute__((used)) static void FUNC4(void)
{
	int total;
	u8 buffer[2];

	if (!smcreg.has_accelerometer)
		return;

	for (total = INIT_TIMEOUT_MSECS; total > 0; total -= INIT_WAIT_MSECS) {
		if (!FUNC0(MOTION_SENSOR_KEY, buffer, 2) &&
				(buffer[0] != 0x00 || buffer[1] != 0x00))
			return;
		buffer[0] = 0xe0;
		buffer[1] = 0x00;
		FUNC1(MOTION_SENSOR_KEY, buffer, 2);
		FUNC2(INIT_WAIT_MSECS);
	}

	FUNC3("failed to init the device\n");
}