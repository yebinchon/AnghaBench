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
struct ims_pcu {int /*<<< orphan*/  async_firmware_done; int /*<<< orphan*/  dev; void* fw_end_addr; void* fw_start_addr; int /*<<< orphan*/ * cmd_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMS_PCU_CMD_RESPONSE_TIMEOUT ; 
 int IMS_PCU_DATA_OFFSET ; 
 int /*<<< orphan*/  IMS_PCU_FIRMWARE_NAME ; 
 int /*<<< orphan*/  QUERY_DEVICE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ims_pcu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ims_pcu_process_async_firmware ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ims_pcu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ims_pcu *pcu)
{
	int error;

	error = FUNC4(pcu, QUERY_DEVICE, NULL, 0,
					   IMS_PCU_CMD_RESPONSE_TIMEOUT);
	if (error) {
		FUNC1(pcu->dev, "Bootloader does not respond, aborting\n");
		return error;
	}

	pcu->fw_start_addr =
		FUNC3(&pcu->cmd_buf[IMS_PCU_DATA_OFFSET + 11]);
	pcu->fw_end_addr =
		FUNC3(&pcu->cmd_buf[IMS_PCU_DATA_OFFSET + 15]);

	FUNC2(pcu->dev,
		 "Device is in bootloader mode (addr 0x%08x-0x%08x), requesting firmware\n",
		 pcu->fw_start_addr, pcu->fw_end_addr);

	error = FUNC5(THIS_MODULE, true,
					IMS_PCU_FIRMWARE_NAME,
					pcu->dev, GFP_KERNEL, pcu,
					ims_pcu_process_async_firmware);
	if (error) {
		/* This error is not fatal, let userspace have another chance */
		FUNC0(&pcu->async_firmware_done);
	}

	return 0;
}