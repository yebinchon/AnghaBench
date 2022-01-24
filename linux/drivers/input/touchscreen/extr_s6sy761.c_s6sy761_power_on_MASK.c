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
struct s6sy761_data {int /*<<< orphan*/  client; int /*<<< orphan*/  regulators; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  S6SY761_BOOT_STATUS ; 
 int S6SY761_BS_APPLICATION ; 
 int S6SY761_EVENT_INFO ; 
 int S6SY761_EVENT_SIZE ; 
 int S6SY761_EVENT_VENDOR_INFO ; 
 int S6SY761_INFO_BOOT_COMPLETE ; 
 int /*<<< orphan*/  S6SY761_MASK_TOUCH ; 
 int /*<<< orphan*/  S6SY761_READ_ONE_EVENT ; 
 int /*<<< orphan*/  S6SY761_TOUCH_FUNCTION ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct s6sy761_data *sdata)
{
	u8 buffer[S6SY761_EVENT_SIZE];
	u8 event;
	int ret;

	ret = FUNC5(FUNC0(sdata->regulators),
				    sdata->regulators);
	if (ret)
		return ret;

	FUNC4(140);

	/* double check whether the touch is functional */
	ret = FUNC2(sdata->client,
					    S6SY761_READ_ONE_EVENT,
					    S6SY761_EVENT_SIZE,
					    buffer);
	if (ret < 0)
		return ret;

	event = (buffer[0] >> 2) & 0xf;

	if ((event != S6SY761_EVENT_INFO &&
	     event != S6SY761_EVENT_VENDOR_INFO) ||
	    buffer[1] != S6SY761_INFO_BOOT_COMPLETE) {
		return -ENODEV;
	}

	ret = FUNC1(sdata->client, S6SY761_BOOT_STATUS);
	if (ret < 0)
		return ret;

	/* for some reasons the device might be stuck in the bootloader */
	if (ret != S6SY761_BS_APPLICATION)
		return -ENODEV;

	/* enable touch functionality */
	ret = FUNC3(sdata->client,
					S6SY761_TOUCH_FUNCTION,
					S6SY761_MASK_TOUCH);
	if (ret)
		return ret;

	return 0;
}