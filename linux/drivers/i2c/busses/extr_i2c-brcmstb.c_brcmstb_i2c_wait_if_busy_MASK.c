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
struct brcmstb_i2c_dev {int dummy; } ;

/* Variables and functions */
 int BSC_IIC_EN_INTRP_MASK ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  I2C_TIMEOUT ; 
 int FUNC0 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  iic_enable ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct brcmstb_i2c_dev *dev)
{
	unsigned long timeout = jiffies + FUNC2(I2C_TIMEOUT);

	while ((FUNC0(dev, iic_enable) & BSC_IIC_EN_INTRP_MASK)) {
		if (FUNC3(jiffies, timeout))
			return -ETIMEDOUT;
		FUNC1();
	}
	return 0;
}