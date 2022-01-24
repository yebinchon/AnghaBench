#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mip4_ts {TYPE_2__* client; TYPE_1__* input; int /*<<< orphan*/  fw_name; } ;
struct i2c_client {int dummy; } ;
struct firmware {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct mip4_ts* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct mip4_ts*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,int /*<<< orphan*/ ,struct device*) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf, size_t count)
{
	struct i2c_client *client = FUNC7(dev);
	struct mip4_ts *ts = FUNC1(client);
	const struct firmware *fw;
	int error;

	error = FUNC6(&fw, ts->fw_name, dev);
	if (error) {
		FUNC0(&ts->client->dev,
			"Failed to retrieve firmware %s: %d\n",
			ts->fw_name, error);
		return error;
	}

	/*
	 * Take input mutex to prevent racing with itself and also with
	 * userspace opening and closing the device and also suspend/resume
	 * transitions.
	 */
	FUNC3(&ts->input->mutex);

	error = FUNC2(ts, fw);

	FUNC4(&ts->input->mutex);

	FUNC5(fw);

	if (error) {
		FUNC0(&ts->client->dev,
			"Firmware update failed: %d\n", error);
		return error;
	}

	return count;
}