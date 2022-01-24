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
typedef  unsigned int u8 ;
struct mxt_data {int /*<<< orphan*/  bl_completion; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MXT_APP_CRC_FAIL 131 
 unsigned int MXT_BOOT_STATUS_MASK ; 
 unsigned int MXT_FRAME_CRC_CHECK ; 
 unsigned int MXT_FRAME_CRC_FAIL ; 
#define  MXT_FRAME_CRC_PASS 130 
 int /*<<< orphan*/  MXT_FW_CHG_TIMEOUT ; 
#define  MXT_WAITING_BOOTLOAD_CMD 129 
#define  MXT_WAITING_FRAME_DATA 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct mxt_data*,unsigned int*,int) ; 
 unsigned int FUNC2 (struct mxt_data*,unsigned int) ; 
 int FUNC3 (struct mxt_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mxt_data *data, unsigned int state,
				bool wait)
{
	struct device *dev = &data->client->dev;
	u8 val;
	int ret;

recheck:
	if (wait) {
		/*
		 * In application update mode, the interrupt
		 * line signals state transitions. We must wait for the
		 * CHG assertion before reading the status byte.
		 * Once the status byte has been read, the line is deasserted.
		 */
		ret = FUNC3(data, &data->bl_completion,
					      MXT_FW_CHG_TIMEOUT);
		if (ret) {
			/*
			 * TODO: handle -ERESTARTSYS better by terminating
			 * fw update process before returning to userspace
			 * by writing length 0x000 to device (iff we are in
			 * WAITING_FRAME_DATA state).
			 */
			FUNC0(dev, "Update wait error %d\n", ret);
			return ret;
		}
	}

	ret = FUNC1(data, &val, 1);
	if (ret)
		return ret;

	if (state == MXT_WAITING_BOOTLOAD_CMD)
		val = FUNC2(data, val);

	switch (state) {
	case MXT_WAITING_BOOTLOAD_CMD:
	case MXT_WAITING_FRAME_DATA:
	case MXT_APP_CRC_FAIL:
		val &= ~MXT_BOOT_STATUS_MASK;
		break;
	case MXT_FRAME_CRC_PASS:
		if (val == MXT_FRAME_CRC_CHECK) {
			goto recheck;
		} else if (val == MXT_FRAME_CRC_FAIL) {
			FUNC0(dev, "Bootloader CRC fail\n");
			return -EINVAL;
		}
		break;
	default:
		return -EINVAL;
	}

	if (val != state) {
		FUNC0(dev, "Invalid bootloader state %02X != %02X\n",
			val, state);
		return -EINVAL;
	}

	return 0;
}