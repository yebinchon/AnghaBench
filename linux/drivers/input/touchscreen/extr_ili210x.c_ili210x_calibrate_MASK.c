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
struct ili210x {int /*<<< orphan*/  client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 int /*<<< orphan*/  REG_CALIBRATE ; 
 struct ili210x* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct i2c_client *client = FUNC3(dev);
	struct ili210x *priv = FUNC0(client);
	unsigned long calibrate;
	int rc;
	u8 cmd = REG_CALIBRATE;

	if (FUNC2(buf, 10, &calibrate))
		return -EINVAL;

	if (calibrate > 1)
		return -EINVAL;

	if (calibrate) {
		rc = FUNC1(priv->client, &cmd, sizeof(cmd));
		if (rc != sizeof(cmd))
			return -EIO;
	}

	return count;
}