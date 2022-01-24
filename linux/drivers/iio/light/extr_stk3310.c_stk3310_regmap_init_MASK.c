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
struct stk3310_data {struct regmap* regmap; struct i2c_client* client; } ;
struct regmap {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  als_gain ; 
 int /*<<< orphan*/  als_it ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct regmap* FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flag_nf ; 
 int /*<<< orphan*/  flag_psint ; 
 int /*<<< orphan*/  int_ps ; 
 int /*<<< orphan*/  ps_gain ; 
 int /*<<< orphan*/  ps_it ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  stk3310_regmap_config ; 

__attribute__((used)) static int FUNC5(struct stk3310_data *data)
{
	struct regmap *regmap;
	struct i2c_client *client;

	client = data->client;
	regmap = FUNC4(client, &stk3310_regmap_config);
	if (FUNC0(regmap)) {
		FUNC3(&client->dev, "regmap initialization failed.\n");
		return FUNC1(regmap);
	}
	data->regmap = regmap;

	FUNC2(state);
	FUNC2(als_gain);
	FUNC2(ps_gain);
	FUNC2(als_it);
	FUNC2(ps_it);
	FUNC2(int_ps);
	FUNC2(flag_psint);
	FUNC2(flag_nf);

	return 0;
}