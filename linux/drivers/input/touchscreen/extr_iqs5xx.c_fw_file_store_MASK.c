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
struct iqs5xx_private {int /*<<< orphan*/  input; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int IQS5XX_FW_FILE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct iqs5xx_private* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct iqs5xx_private *iqs5xx = FUNC1(dev);
	struct i2c_client *client = iqs5xx->client;
	size_t len = count;
	bool input_reg = !iqs5xx->input;
	char fw_file[IQS5XX_FW_FILE_LEN + 1];
	int error;

	if (!len)
		return -EINVAL;

	if (buf[len - 1] == '\n')
		len--;

	if (len > IQS5XX_FW_FILE_LEN)
		return -ENAMETOOLONG;

	FUNC4(fw_file, buf, len);
	fw_file[len] = '\0';

	error = FUNC3(client, fw_file);
	if (error)
		return error;

	/*
	 * If the input device was not allocated already, it is guaranteed to
	 * be allocated by this point and can finally be registered.
	 */
	if (input_reg) {
		error = FUNC2(iqs5xx->input);
		if (error) {
			FUNC0(&client->dev,
				"Failed to register device: %d\n",
				error);
			return error;
		}
	}

	return count;
}