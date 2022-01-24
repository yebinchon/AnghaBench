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
typedef  int /*<<< orphan*/  u8 ;
struct silead_ts_data {int /*<<< orphan*/  fw_name; } ;
struct silead_fw_data {int /*<<< orphan*/  val; int /*<<< orphan*/  offset; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct firmware {int size; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct silead_ts_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct firmware const**,int /*<<< orphan*/ ,struct device*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct silead_ts_data *data = FUNC2(client);
	unsigned int fw_size, i;
	const struct firmware *fw;
	struct silead_fw_data *fw_data;
	int error;

	FUNC0(dev, "Firmware file name: %s", data->fw_name);

	error = FUNC5(&fw, data->fw_name, dev);
	if (error) {
		FUNC1(dev, "Firmware request error %d\n", error);
		return error;
	}

	fw_size = fw->size / sizeof(*fw_data);
	fw_data = (struct silead_fw_data *)fw->data;

	for (i = 0; i < fw_size; i++) {
		error = FUNC3(client,
						       fw_data[i].offset,
						       4,
						       (u8 *)&fw_data[i].val);
		if (error) {
			FUNC1(dev, "Firmware load error %d\n", error);
			break;
		}
	}

	FUNC4(fw);
	return error ?: 0;
}