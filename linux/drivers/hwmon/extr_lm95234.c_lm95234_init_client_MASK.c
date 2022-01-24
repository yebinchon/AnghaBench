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

/* Variables and functions */
 int /*<<< orphan*/  LM95234_REG_CONFIG ; 
 int /*<<< orphan*/  LM95234_REG_REM_MODEL ; 
 int /*<<< orphan*/  LM95234_REG_REM_MODEL_STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	int val, model;

	/* start conversion if necessary */
	val = FUNC1(client, LM95234_REG_CONFIG);
	if (val < 0)
		return val;
	if (val & 0x40)
		FUNC2(client, LM95234_REG_CONFIG,
					  val & ~0x40);

	/* If diode type status reports an error, try to fix it */
	val = FUNC1(client, LM95234_REG_REM_MODEL_STS);
	if (val < 0)
		return val;
	model = FUNC1(client, LM95234_REG_REM_MODEL);
	if (model < 0)
		return model;
	if (model & val) {
		FUNC0(&client->dev,
			   "Fixing remote diode type misconfiguration (0x%x)\n",
			   val);
		FUNC2(client, LM95234_REG_REM_MODEL,
					  model & ~val);
	}
	return 0;
}