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
struct i2c_client {int dummy; } ;
struct cm32181_chip {unsigned long calibscale; struct i2c_client* client; } ;

/* Variables and functions */
 unsigned long CM32181_CALIBSCALE_RESOLUTION ; 
 unsigned long CM32181_MLUX_PER_BIT ; 
 unsigned long CM32181_MLUX_PER_BIT_BASE_IT ; 
 int /*<<< orphan*/  CM32181_REG_ADDR_ALS ; 
 int EINVAL ; 
 unsigned long MLUX_PER_LUX ; 
 int FUNC0 (struct cm32181_chip*,int*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cm32181_chip *cm32181)
{
	struct i2c_client *client = cm32181->client;
	int ret;
	int als_it;
	unsigned long lux;

	ret = FUNC0(cm32181, &als_it);
	if (ret < 0)
		return -EINVAL;

	lux = CM32181_MLUX_PER_BIT;
	lux *= CM32181_MLUX_PER_BIT_BASE_IT;
	lux /= als_it;

	ret = FUNC1(client, CM32181_REG_ADDR_ALS);
	if (ret < 0)
		return ret;

	lux *= ret;
	lux *= cm32181->calibscale;
	lux /= CM32181_CALIBSCALE_RESOLUTION;
	lux /= MLUX_PER_LUX;

	if (lux > 0xFFFF)
		lux = 0xFFFF;

	return lux;
}