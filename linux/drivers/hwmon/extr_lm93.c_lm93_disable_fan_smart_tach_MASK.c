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
struct lm93_data {int sfc2; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM93_REG_SFC2 ; 
 int /*<<< orphan*/  LM93_REG_SF_TACH_TO_PWM ; 
 void* FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client,
	struct lm93_data *data, int pwm)
{
	int mapping = FUNC0(client, LM93_REG_SF_TACH_TO_PWM);
	int mask;

	/* collapse the mapping into a mask of enable bits */
	mapping = (mapping >> pwm) & 0x55;
	mask = mapping & 0x01;
	mask |= (mapping & 0x04) >> 1;
	mask |= (mapping & 0x10) >> 2;
	mask |= (mapping & 0x40) >> 3;

	/* disable smart tach according to the mask */
	data->sfc2 = FUNC0(client, LM93_REG_SFC2);
	data->sfc2 &= ~mask;
	FUNC1(client, LM93_REG_SFC2, data->sfc2);
}