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
typedef  int u8 ;
struct i2c_client {int dummy; } ;
struct adm1025_data {int /*<<< orphan*/  vrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1025_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct adm1025_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct i2c_client *client)
{
	u8 reg;
	struct adm1025_data *data = FUNC2(client);
	int i;

	data->vrm = FUNC5();

	/*
	 * Set high limits
	 * Usually we avoid setting limits on driver init, but it happens
	 * that the ADM1025 comes with stupid default limits (all registers
	 * set to 0). In case the chip has not gone through any limit
	 * setting yet, we better set the high limits to the max so that
	 * no alarm triggers.
	 */
	for (i = 0; i < 6; i++) {
		reg = FUNC3(client,
					       FUNC0(i));
		if (reg == 0)
			FUNC4(client,
						  FUNC0(i),
						  0xFF);
	}
	for (i = 0; i < 2; i++) {
		reg = FUNC3(client,
					       FUNC1(i));
		if (reg == 0)
			FUNC4(client,
						  FUNC1(i),
						  0x7F);
	}

	/*
	 * Start the conversions
	 */
	reg = FUNC3(client, ADM1025_REG_CONFIG);
	if (!(reg & 0x01))
		FUNC4(client, ADM1025_REG_CONFIG,
					  (reg&0x7E)|0x01);
}