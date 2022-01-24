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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct cm36651_data {int* cs_ctrl_regs; int* ps_ctrl_regs; int /*<<< orphan*/  flags; struct i2c_client* ps_client; struct i2c_client* client; } ;

/* Variables and functions */
#define  CM36651_CMD_PROX_EV_DIS 131 
#define  CM36651_CMD_PROX_EV_EN 130 
#define  CM36651_CMD_READ_RAW_LIGHT 129 
#define  CM36651_CMD_READ_RAW_PROXIMITY 128 
 size_t CM36651_CS_CONF1 ; 
 int CM36651_PROXIMITY_EV_EN ; 
 size_t CM36651_PS_CONF1 ; 
 int CM36651_PS_DISABLE ; 
 int CM36651_PS_INT_EN ; 
 int CM36651_PS_IT2 ; 
 int CM36651_PS_PERS2 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 size_t* cm36651_ps_reg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_client*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cm36651_data *cm36651, int cmd)
{
	struct i2c_client *client = cm36651->client;
	struct i2c_client *ps_client = cm36651->ps_client;
	int ret = -EINVAL;

	switch (cmd) {
	case CM36651_CMD_READ_RAW_LIGHT:
		ret = FUNC2(client, CM36651_CS_CONF1,
				cm36651->cs_ctrl_regs[CM36651_CS_CONF1]);
		break;
	case CM36651_CMD_READ_RAW_PROXIMITY:
		if (FUNC4(CM36651_PROXIMITY_EV_EN, &cm36651->flags))
			return CM36651_PROXIMITY_EV_EN;

		ret = FUNC2(ps_client, CM36651_PS_CONF1,
				cm36651->ps_ctrl_regs[CM36651_PS_CONF1]);
		break;
	case CM36651_CMD_PROX_EV_EN:
		if (FUNC4(CM36651_PROXIMITY_EV_EN, &cm36651->flags)) {
			FUNC1(&client->dev,
				"Already proximity event enable state\n");
			return ret;
		}
		FUNC3(CM36651_PROXIMITY_EV_EN, &cm36651->flags);

		ret = FUNC2(ps_client,
			cm36651_ps_reg[CM36651_PS_CONF1],
			CM36651_PS_INT_EN | CM36651_PS_PERS2 | CM36651_PS_IT2);

		if (ret < 0) {
			FUNC1(&client->dev, "Proximity enable event failed\n");
			return ret;
		}
		break;
	case CM36651_CMD_PROX_EV_DIS:
		if (!FUNC4(CM36651_PROXIMITY_EV_EN, &cm36651->flags)) {
			FUNC1(&client->dev,
				"Already proximity event disable state\n");
			return ret;
		}
		FUNC0(CM36651_PROXIMITY_EV_EN, &cm36651->flags);
		ret = FUNC2(ps_client,
					CM36651_PS_CONF1, CM36651_PS_DISABLE);
		break;
	}

	if (ret < 0)
		FUNC1(&client->dev, "Write register failed\n");

	return ret;
}