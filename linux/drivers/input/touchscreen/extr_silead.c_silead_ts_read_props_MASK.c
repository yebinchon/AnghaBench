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
struct silead_ts_data {int max_fingers; int /*<<< orphan*/  fw_name; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct device*,char*,char const**) ; 
 int FUNC2 (struct device*,char*,int*) ; 
 struct silead_ts_data* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char const*) ; 

__attribute__((used)) static void FUNC5(struct i2c_client *client)
{
	struct silead_ts_data *data = FUNC3(client);
	struct device *dev = &client->dev;
	const char *str;
	int error;

	error = FUNC2(dev, "silead,max-fingers",
					 &data->max_fingers);
	if (error) {
		FUNC0(dev, "Max fingers read error %d\n", error);
		data->max_fingers = 5; /* Most devices handle up-to 5 fingers */
	}

	error = FUNC1(dev, "firmware-name", &str);
	if (!error)
		FUNC4(data->fw_name, sizeof(data->fw_name),
			 "silead/%s", str);
	else
		FUNC0(dev, "Firmware file name read error. Using default.");
}