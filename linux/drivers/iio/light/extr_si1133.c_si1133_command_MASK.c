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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct si1133_data {int rsp_seq; int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; int /*<<< orphan*/  completion; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int SI1133_CMD_ERR_MASK ; 
 int /*<<< orphan*/  SI1133_CMD_FORCE ; 
 int /*<<< orphan*/  SI1133_CMD_MINSLEEP_US_LOW ; 
 int SI1133_CMD_SEQ_MASK ; 
 int SI1133_CMD_TIMEOUT_MS ; 
 int /*<<< orphan*/  SI1133_COMPLETION_TIMEOUT_MS ; 
 int SI1133_MAX_CMD_CTR ; 
 int /*<<< orphan*/  SI1133_REG_COMMAND ; 
 int /*<<< orphan*/  SI1133_REG_RESPONSE0 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct si1133_data*) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct si1133_data *data, u8 cmd)
{
	struct device *dev = &data->client->dev;
	u32 resp;
	int err;
	int expected_seq;

	FUNC2(&data->mutex);

	expected_seq = (data->rsp_seq + 1) & SI1133_MAX_CMD_CTR;

	if (cmd == SI1133_CMD_FORCE)
		FUNC7(&data->completion);

	err = FUNC6(data->regmap, SI1133_REG_COMMAND, cmd);
	if (err) {
		FUNC0(dev, "Failed to write command %#02hhx, ret=%d\n", cmd,
			 err);
		goto out;
	}

	if (cmd == SI1133_CMD_FORCE) {
		/* wait for irq */
		if (!FUNC10(&data->completion,
			FUNC1(SI1133_COMPLETION_TIMEOUT_MS))) {
			err = -ETIMEDOUT;
			goto out;
		}
		err = FUNC4(data->regmap, SI1133_REG_RESPONSE0, &resp);
		if (err)
			goto out;
	} else {
		err = FUNC5(data->regmap,
					       SI1133_REG_RESPONSE0, resp,
					       (resp & SI1133_CMD_SEQ_MASK) ==
					       expected_seq ||
					       (resp & SI1133_CMD_ERR_MASK),
					       SI1133_CMD_MINSLEEP_US_LOW,
					       SI1133_CMD_TIMEOUT_MS * 1000);
		if (err) {
			FUNC0(dev,
				 "Failed to read command %#02hhx, ret=%d\n",
				 cmd, err);
			goto out;
		}
	}

	if (resp & SI1133_CMD_ERR_MASK) {
		err = FUNC9(dev, resp, cmd);
		FUNC8(data);
	} else {
		data->rsp_seq = expected_seq;
	}

out:
	FUNC3(&data->mutex);

	return err;
}