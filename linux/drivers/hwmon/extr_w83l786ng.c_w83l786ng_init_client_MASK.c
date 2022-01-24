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
 int /*<<< orphan*/  W83L786NG_REG_CONFIG ; 
 scalar_t__ reset ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	u8 tmp;

	if (reset)
		FUNC1(client, W83L786NG_REG_CONFIG, 0x80);

	/* Start monitoring */
	tmp = FUNC0(client, W83L786NG_REG_CONFIG);
	if (!(tmp & 0x01))
		FUNC1(client, W83L786NG_REG_CONFIG, tmp | 0x01);
}