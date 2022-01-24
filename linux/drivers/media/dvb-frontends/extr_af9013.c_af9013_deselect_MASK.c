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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct af9013_state {scalar_t__ ts_mode; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;

/* Variables and functions */
 scalar_t__ AF9013_TS_MODE_USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct af9013_state* FUNC1 (struct i2c_mux_core*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_mux_core *muxc, u32 chan)
{
	struct af9013_state *state = FUNC1(muxc);
	struct i2c_client *client = state->client;
	int ret;

	FUNC0(&client->dev, "\n");

	if (state->ts_mode == AF9013_TS_MODE_USB)
		ret = FUNC2(state->regmap, 0x1d417, 0x08, 0x00);
	else
		ret = FUNC2(state->regmap, 0x1d607, 0x04, 0x00);
	if (ret)
		goto err;

	return 0;
err:
	FUNC0(&client->dev, "failed %d\n", ret);
	return ret;
}