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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int /*<<< orphan*/  state_sync_lock; int /*<<< orphan*/ * input; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int NAME_MAX ; 
 int FUNC0 (struct cyapa*,char*) ; 
 int FUNC1 (struct cyapa*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct cyapa* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct cyapa *cyapa = FUNC4(dev);
	char fw_name[NAME_MAX];
	int ret, error;

	if (count >= NAME_MAX) {
		FUNC3(dev, "File name too long\n");
		return -EINVAL;
	}

	FUNC6(fw_name, buf, count);
	if (fw_name[count - 1] == '\n')
		fw_name[count - 1] = '\0';
	else
		fw_name[count] = '\0';

	if (cyapa->input) {
		/*
		 * Force the input device to be registered after the firmware
		 * image is updated, so if the corresponding parameters updated
		 * in the new firmware image can taken effect immediately.
		 */
		FUNC5(cyapa->input);
		cyapa->input = NULL;
	}

	error = FUNC7(&cyapa->state_sync_lock);
	if (error) {
		/*
		 * Whatever, do reinitialize to try to recover TP state to
		 * previous state just as it entered fw update entrance.
		 */
		FUNC1(cyapa);
		return error;
	}

	error = FUNC0(cyapa, fw_name);
	if (error)
		FUNC3(dev, "firmware update failed: %d\n", error);
	else
		FUNC2(dev, "firmware update successfully done.\n");

	/*
	 * Re-detect trackpad device states because firmware update process
	 * will reset trackpad device into bootloader mode.
	 */
	ret = FUNC1(cyapa);
	if (ret) {
		FUNC3(dev, "failed to re-detect after updated: %d\n", ret);
		error = error ? error : ret;
	}

	FUNC8(&cyapa->state_sync_lock);

	return error ? error : count;
}