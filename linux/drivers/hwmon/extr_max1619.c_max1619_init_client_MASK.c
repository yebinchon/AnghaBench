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

/* Variables and functions */
 int /*<<< orphan*/  MAX1619_REG_R_CONFIG ; 
 int /*<<< orphan*/  MAX1619_REG_W_CONFIG ; 
 int /*<<< orphan*/  MAX1619_REG_W_CONVRATE ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	u8 config;

	/*
	 * Start the conversions.
	 */
	FUNC1(client, MAX1619_REG_W_CONVRATE,
				  5); /* 2 Hz */
	config = FUNC0(client, MAX1619_REG_R_CONFIG);
	if (config & 0x40)
		FUNC1(client, MAX1619_REG_W_CONFIG,
					  config & 0xBF); /* run */
}