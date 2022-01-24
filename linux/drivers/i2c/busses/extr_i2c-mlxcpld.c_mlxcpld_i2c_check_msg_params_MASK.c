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
struct mlxcpld_i2c_priv {int /*<<< orphan*/  dev; } ;
struct i2c_msg {int addr; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct mlxcpld_i2c_priv *priv,
					struct i2c_msg *msgs, int num)
{
	int i;

	if (!num) {
		FUNC0(priv->dev, "Incorrect 0 num of messages\n");
		return -EINVAL;
	}

	if (FUNC1(msgs[0].addr > 0x7f)) {
		FUNC0(priv->dev, "Invalid address 0x%03x\n",
			msgs[0].addr);
		return -EINVAL;
	}

	for (i = 0; i < num; ++i) {
		if (FUNC1(!msgs[i].buf)) {
			FUNC0(priv->dev, "Invalid buf in msg[%d]\n",
				i);
			return -EINVAL;
		}
		if (FUNC1(msgs[0].addr != msgs[i].addr)) {
			FUNC0(priv->dev, "Invalid addr in msg[%d]\n",
				i);
			return -EINVAL;
		}
	}

	return 0;
}