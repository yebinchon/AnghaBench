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
struct TYPE_2__ {int /*<<< orphan*/  version; } ;
struct stratix10_rsu_priv {TYPE_1__ status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_RSU_NOTIFY ; 
 int /*<<< orphan*/  COMMAND_RSU_RETRY ; 
 int /*<<< orphan*/  COMMAND_RSU_STATUS ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSU_FW_VERSION_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct stratix10_rsu_priv* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  rsu_command_callback ; 
 int /*<<< orphan*/  rsu_retry_callback ; 
 int FUNC4 (struct stratix10_rsu_priv*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rsu_status_callback ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			    struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct stratix10_rsu_priv *priv = FUNC2(dev);
	unsigned long status;
	int ret;

	if (priv == 0)
		return -ENODEV;

	ret = FUNC3(buf, 0, &status);
	if (ret)
		return ret;

	ret = FUNC4(priv, COMMAND_RSU_NOTIFY,
			   status, rsu_command_callback);
	if (ret) {
		FUNC1(dev, "Error, RSU notify returned %i\n", ret);
		return ret;
	}

	/* to get the updated state */
	ret = FUNC4(priv, COMMAND_RSU_STATUS,
			   0, rsu_status_callback);
	if (ret) {
		FUNC1(dev, "Error, getting RSU status %i\n", ret);
		return ret;
	}

	/* only 19.3 or late version FW supports retry counter feature */
	if (FUNC0(RSU_FW_VERSION_MASK, priv->status.version)) {
		ret = FUNC4(priv, COMMAND_RSU_RETRY,
				   0, rsu_retry_callback);
		if (ret) {
			FUNC1(dev,
				"Error, getting RSU retry %i\n", ret);
			return ret;
		}
	}

	return count;
}