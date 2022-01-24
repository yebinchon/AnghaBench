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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int UNIPHIER_I2C_DTRM_NACK ; 
 int UNIPHIER_I2C_DTRM_STA ; 
 int FUNC0 (struct i2c_adapter*,int) ; 

__attribute__((used)) static int FUNC1(struct i2c_adapter *adap, u16 addr, u16 len,
			   const u8 *buf)
{
	int ret;

	ret = FUNC0(adap, addr << 1 |
				     UNIPHIER_I2C_DTRM_STA |
				     UNIPHIER_I2C_DTRM_NACK);
	if (ret)
		return ret;

	while (len--) {
		ret = FUNC0(adap,
					     UNIPHIER_I2C_DTRM_NACK | *buf++);
		if (ret)
			return ret;
	}

	return 0;
}