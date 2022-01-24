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
struct ims_pcu {int /*<<< orphan*/  async_firmware_done; int /*<<< orphan*/  cmd_mutex; int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMS_PCU_FIRMWARE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ims_pcu*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 

__attribute__((used)) static void FUNC7(const struct firmware *fw,
					   void *context)
{
	struct ims_pcu *pcu = context;
	int error;

	if (!fw) {
		FUNC1(pcu->dev, "Failed to get firmware %s\n",
			IMS_PCU_FIRMWARE_NAME);
		goto out;
	}

	error = FUNC2(fw);
	if (error) {
		FUNC1(pcu->dev, "Firmware %s is invalid\n",
			IMS_PCU_FIRMWARE_NAME);
		goto out;
	}

	FUNC4(&pcu->cmd_mutex);
	FUNC3(pcu, fw);
	FUNC5(&pcu->cmd_mutex);

	FUNC6(fw);

out:
	FUNC0(&pcu->async_firmware_done);
}