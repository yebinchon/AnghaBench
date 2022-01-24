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
typedef  int uint32_t ;
struct ishtp_device {int recvd_hw_ready; int /*<<< orphan*/  wait_hw_ready; int /*<<< orphan*/  resume_wait; int /*<<< orphan*/  resume_flag; int /*<<< orphan*/  suspend_wait; int /*<<< orphan*/  suspend_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
#define  MNG_RESET_NOTIFY 130 
#define  MNG_RESET_NOTIFY_ACK 129 
#define  MNG_RX_CMPL_INDICATION 128 
 int /*<<< orphan*/  fw_reset_work ; 
 int /*<<< orphan*/  fw_reset_work_fn ; 
 struct ishtp_device* ishtp_dev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ishtp_device*) ; 

__attribute__((used)) static void	FUNC5(struct ishtp_device *dev, uint32_t doorbell_val)
{
	uint32_t	mng_cmd;

	mng_cmd = FUNC1(doorbell_val);

	switch (mng_cmd) {
	default:
		break;

	case MNG_RX_CMPL_INDICATION:
		if (dev->suspend_flag) {
			dev->suspend_flag = 0;
			FUNC3(&dev->suspend_wait);
		}
		if (dev->resume_flag) {
			dev->resume_flag = 0;
			FUNC3(&dev->resume_wait);
		}

		FUNC4(dev);
		break;

	case MNG_RESET_NOTIFY:
		if (!ishtp_dev) {
			ishtp_dev = dev;
			FUNC0(&fw_reset_work, fw_reset_work_fn);
		}
		FUNC2(&fw_reset_work);
		break;

	case MNG_RESET_NOTIFY_ACK:
		dev->recvd_hw_ready = 1;
		FUNC3(&dev->wait_hw_ready);
		break;
	}
}