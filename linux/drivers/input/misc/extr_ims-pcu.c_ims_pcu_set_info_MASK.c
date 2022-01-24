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
struct ims_pcu {int /*<<< orphan*/  dev; int /*<<< orphan*/ * cmd_buf; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  date_of_manufacturing; int /*<<< orphan*/  part_number; } ;

/* Variables and functions */
 size_t IMS_PCU_DATA_OFFSET ; 
 size_t IMS_PCU_INFO_DOM_OFFSET ; 
 size_t IMS_PCU_INFO_PART_OFFSET ; 
 size_t IMS_PCU_INFO_SERIAL_OFFSET ; 
 int /*<<< orphan*/  IMS_PCU_SET_INFO_SIZE ; 
 int /*<<< orphan*/  SET_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct ims_pcu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ims_pcu *pcu)
{
	int error;

	FUNC2(&pcu->cmd_buf[IMS_PCU_INFO_PART_OFFSET],
	       pcu->part_number, sizeof(pcu->part_number));
	FUNC2(&pcu->cmd_buf[IMS_PCU_INFO_DOM_OFFSET],
	       pcu->date_of_manufacturing, sizeof(pcu->date_of_manufacturing));
	FUNC2(&pcu->cmd_buf[IMS_PCU_INFO_SERIAL_OFFSET],
	       pcu->serial_number, sizeof(pcu->serial_number));

	error = FUNC1(pcu, SET_INFO,
					&pcu->cmd_buf[IMS_PCU_DATA_OFFSET],
					IMS_PCU_SET_INFO_SIZE);
	if (error) {
		FUNC0(pcu->dev,
			"Failed to update device information, error: %d\n",
			error);
		return error;
	}

	return 0;
}