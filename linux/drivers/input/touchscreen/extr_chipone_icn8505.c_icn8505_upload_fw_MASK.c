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
struct icn8505_data {int /*<<< orphan*/  firmware_name; TYPE_1__* client; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int MAX_FW_UPLOAD_TRIES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int FUNC1 (struct icn8505_data*,int) ; 
 int FUNC2 (struct icn8505_data*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct icn8505_data *icn8505)
{
	struct device *dev = &icn8505->client->dev;
	const struct firmware *fw;
	int i, error;

	/*
	 * Always load the firmware, even if we don't need it at boot, we
	 * we may need it at resume. Having loaded it once will make the
	 * firmware class code cache it at suspend/resume.
	 */
	error = FUNC4(&fw, icn8505->firmware_name, dev);
	if (error) {
		FUNC0(dev, "Firmware request error %d\n", error);
		return error;
	}

	/* Check if the controller is not already up and running */
	if (FUNC1(icn8505, 0x000a) == 0x85)
		goto success;

	for (i = 1; i <= MAX_FW_UPLOAD_TRIES; i++) {
		error = FUNC2(icn8505, fw);
		if (!error)
			goto success;

		FUNC0(dev, "Failed to upload firmware: %d (attempt %d/%d)\n",
			error, i, MAX_FW_UPLOAD_TRIES);
		FUNC5(2000, 5000);
	}

success:
	FUNC3(fw);
	return error;
}