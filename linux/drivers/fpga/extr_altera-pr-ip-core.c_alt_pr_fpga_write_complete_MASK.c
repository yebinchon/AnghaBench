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
typedef  scalar_t__ u32 ;
struct fpga_manager {int /*<<< orphan*/  dev; } ;
struct fpga_image_info {scalar_t__ config_complete_timeout_us; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
#define  FPGA_MGR_STATE_OPERATING 129 
#define  FPGA_MGR_STATE_WRITE_ERR 128 
 int FUNC0 (struct fpga_manager*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct fpga_manager *mgr,
				      struct fpga_image_info *info)
{
	u32 i = 0;

	do {
		switch (FUNC0(mgr)) {
		case FPGA_MGR_STATE_WRITE_ERR:
			return -EIO;

		case FPGA_MGR_STATE_OPERATING:
			FUNC2(&mgr->dev,
				 "successful partial reconfiguration\n");
			return 0;

		default:
			break;
		}
		FUNC3(1);
	} while (info->config_complete_timeout_us > i++);

	FUNC1(&mgr->dev, "timed out waiting for write to complete\n");
	return -ETIMEDOUT;
}