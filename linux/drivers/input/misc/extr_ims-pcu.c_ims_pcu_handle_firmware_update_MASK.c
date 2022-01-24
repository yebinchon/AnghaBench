#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ims_pcu {int update_firmware_status; TYPE_1__* dev; } ;
struct firmware {int /*<<< orphan*/  size; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMS_PCU_FIRMWARE_NAME ; 
 int /*<<< orphan*/  LAUNCH_APP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct ims_pcu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ims_pcu*,struct firmware const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(struct ims_pcu *pcu,
					  const struct firmware *fw)
{
	unsigned int n_fw_records;
	int retval;

	FUNC1(pcu->dev, "Updating firmware %s, size: %zu\n",
		 IMS_PCU_FIRMWARE_NAME, fw->size);

	n_fw_records = FUNC2(fw);

	retval = FUNC4(pcu, fw, n_fw_records);
	if (retval)
		goto out;

	retval = FUNC3(pcu, LAUNCH_APP, NULL, 0, 0);
	if (retval)
		FUNC0(pcu->dev,
			"Failed to start application image, error: %d\n",
			retval);

out:
	pcu->update_firmware_status = retval;
	FUNC5(&pcu->dev->kobj, NULL, "update_firmware_status");
	return retval;
}