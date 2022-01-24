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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1029_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	u8 config;

	config = FUNC1(client, ADM1029_REG_CONFIG);
	if ((config & 0x10) == 0) {
		FUNC2(client, ADM1029_REG_CONFIG,
					  config | 0x10);
	}
	/* recheck config */
	config = FUNC1(client, ADM1029_REG_CONFIG);
	if ((config & 0x10) == 0) {
		FUNC0(&client->dev, "Initialization failed!\n");
		return 0;
	}
	return 1;
}