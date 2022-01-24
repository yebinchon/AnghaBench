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
typedef  enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;
struct TYPE_2__ {int envelope_mode; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
#define  SEC_MINI_A 129 
#define  SEC_MINI_B 128 
 int SEND_BURST_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned long jiffies ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (struct m88ds3103_dev*,int,int,int) ; 
 unsigned long FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct dvb_frontend *fe,
	enum fe_sec_mini_cmd fe_sec_mini_cmd)
{
	struct m88ds3103_dev *dev = fe->demodulator_priv;
	struct i2c_client *client = dev->client;
	int ret;
	unsigned int utmp, burst;
	unsigned long timeout;

	FUNC0(&client->dev, "fe_sec_mini_cmd=%d\n", fe_sec_mini_cmd);

	if (!dev->warm) {
		ret = -EAGAIN;
		goto err;
	}

	utmp = dev->cfg->envelope_mode << 5;
	ret = FUNC2(dev, 0xa2, 0xe0, utmp);
	if (ret)
		goto err;

	switch (fe_sec_mini_cmd) {
	case SEC_MINI_A:
		burst = 0x02;
		break;
	case SEC_MINI_B:
		burst = 0x01;
		break;
	default:
		FUNC0(&client->dev, "invalid fe_sec_mini_cmd\n");
		ret = -EINVAL;
		goto err;
	}

	ret = FUNC5(dev->regmap, 0xa1, burst);
	if (ret)
		goto err;

	/* wait DiSEqC TX ready */
	#define SEND_BURST_TIMEOUT 40
	timeout = jiffies + FUNC3(SEND_BURST_TIMEOUT);

	/* DiSEqC ToneBurst period is 12.5 ms */
	FUNC7(8500, 12500);

	for (utmp = 1; !FUNC6(jiffies, timeout) && utmp;) {
		ret = FUNC4(dev->regmap, 0xa1, &utmp);
		if (ret)
			goto err;
		utmp = (utmp >> 6) & 0x1;
	}

	if (utmp == 0) {
		FUNC0(&client->dev, "diseqc tx took %u ms\n",
			FUNC1(jiffies) -
			(FUNC1(timeout) - SEND_BURST_TIMEOUT));
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