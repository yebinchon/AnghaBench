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
struct m88ds3103_dev {int /*<<< orphan*/  regmap; TYPE_1__* cfg; int /*<<< orphan*/  warm; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct m88ds3103_dev* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int /*<<< orphan*/  msg; } ;
struct TYPE_2__ {int envelope_mode; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int SEND_MASTER_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned long jiffies ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (struct m88ds3103_dev*,int,int,int) ; 
 unsigned long FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct dvb_frontend *fe,
		struct dvb_diseqc_master_cmd *diseqc_cmd)
{
	struct m88ds3103_dev *dev = fe->demodulator_priv;
	struct i2c_client *client = dev->client;
	int ret;
	unsigned int utmp;
	unsigned long timeout;

	FUNC0(&client->dev, "msg=%*ph\n",
		diseqc_cmd->msg_len, diseqc_cmd->msg);

	if (!dev->warm) {
		ret = -EAGAIN;
		goto err;
	}

	if (diseqc_cmd->msg_len < 3 || diseqc_cmd->msg_len > 6) {
		ret = -EINVAL;
		goto err;
	}

	utmp = dev->cfg->envelope_mode << 5;
	ret = FUNC2(dev, 0xa2, 0xe0, utmp);
	if (ret)
		goto err;

	ret = FUNC4(dev->regmap, 0xa3, diseqc_cmd->msg,
			diseqc_cmd->msg_len);
	if (ret)
		goto err;

	ret = FUNC6(dev->regmap, 0xa1,
			(diseqc_cmd->msg_len - 1) << 3 | 0x07);
	if (ret)
		goto err;

	/* wait DiSEqC TX ready */
	#define SEND_MASTER_CMD_TIMEOUT 120
	timeout = jiffies + FUNC3(SEND_MASTER_CMD_TIMEOUT);

	/* DiSEqC message period is 13.5 ms per byte */
	utmp = diseqc_cmd->msg_len * 13500;
	FUNC8(utmp - 4000, utmp);

	for (utmp = 1; !FUNC7(jiffies, timeout) && utmp;) {
		ret = FUNC5(dev->regmap, 0xa1, &utmp);
		if (ret)
			goto err;
		utmp = (utmp >> 6) & 0x1;
	}

	if (utmp == 0) {
		FUNC0(&client->dev, "diseqc tx took %u ms\n",
			FUNC1(jiffies) -
			(FUNC1(timeout) - SEND_MASTER_CMD_TIMEOUT));
	} else {
		FUNC0(&client->dev, "diseqc tx timeout\n");

		ret = FUNC2(dev, 0xa1, 0xc0, 0x40);
		if (ret)
			goto err;
	}

	ret = FUNC2(dev, 0xa2, 0xc0, 0x80);
	if (ret)
		goto err;

	if (utmp == 1) {
		ret = -ETIMEDOUT;
		goto err;
	}

	return 0;
err:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}