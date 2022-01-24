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
typedef  int uint8_t ;
struct resource_pool {int dummy; } ;
struct i2c_payload {int dummy; } ;
struct i2c_command {int number_of_payloads; struct i2c_payload* payloads; int /*<<< orphan*/  speed; } ;
struct ddc {int dummy; } ;
struct dce_i2c_sw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dce_i2c_sw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dce_i2c_sw*,struct i2c_payload*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct resource_pool*,struct dce_i2c_sw*) ; 

bool FUNC3(
	struct resource_pool *pool,
	struct ddc *ddc,
	struct i2c_command *cmd,
	struct dce_i2c_sw *dce_i2c_sw)
{
	uint8_t index_of_payload = 0;
	bool result;

	FUNC0(dce_i2c_sw, cmd->speed);

	result = true;

	while (index_of_payload < cmd->number_of_payloads) {
		bool mot = (index_of_payload != cmd->number_of_payloads - 1);

		struct i2c_payload *payload = cmd->payloads + index_of_payload;

		if (!FUNC1(
			dce_i2c_sw, payload, mot)) {
			result = false;
			break;
		}

		++index_of_payload;
	}

	FUNC2(pool, dce_i2c_sw);

	return result;
}