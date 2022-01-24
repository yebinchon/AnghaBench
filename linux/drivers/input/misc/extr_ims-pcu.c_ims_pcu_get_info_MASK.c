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
struct ims_pcu {int /*<<< orphan*/ * cmd_buf; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  date_of_manufacturing; int /*<<< orphan*/  part_number; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GET_INFO ; 
 size_t IMS_PCU_INFO_DOM_OFFSET ; 
 size_t IMS_PCU_INFO_PART_OFFSET ; 
 size_t IMS_PCU_INFO_SERIAL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct ims_pcu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct ims_pcu *pcu)
{
	int error;

	error = FUNC1(pcu, GET_INFO);
	if (error) {
		FUNC0(pcu->dev,
			"GET_INFO command failed, error: %d\n", error);
		return error;
	}

	FUNC2(pcu->part_number,
	       &pcu->cmd_buf[IMS_PCU_INFO_PART_OFFSET],
	       sizeof(pcu->part_number));
	FUNC2(pcu->date_of_manufacturing,
	       &pcu->cmd_buf[IMS_PCU_INFO_DOM_OFFSET],
	       sizeof(pcu->date_of_manufacturing));
	FUNC2(pcu->serial_number,
	       &pcu->cmd_buf[IMS_PCU_INFO_SERIAL_OFFSET],
	       sizeof(pcu->serial_number));

	return 0;
}