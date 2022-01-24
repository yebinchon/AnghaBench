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
typedef  int u32 ;
struct brcmstb_i2c_dev {scalar_t__ irq; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int BSC_IIC_EN_INTRP_MASK ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  I2C_TIMEOUT ; 
 int /*<<< orphan*/  INT_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  iic_enable ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct brcmstb_i2c_dev *dev)
{
	int ret = 0;
	unsigned long timeout = FUNC3(I2C_TIMEOUT);

	if (dev->irq >= 0) {
		if (!FUNC5(&dev->done, timeout))
			ret = -ETIMEDOUT;
	} else {
		/* we are in polling mode */
		u32 bsc_intrp;
		unsigned long time_left = jiffies + timeout;

		do {
			bsc_intrp = FUNC1(dev, iic_enable) &
				BSC_IIC_EN_INTRP_MASK;
			if (FUNC4(jiffies, time_left)) {
				ret = -ETIMEDOUT;
				break;
			}
			FUNC2();
		} while (!bsc_intrp);
	}

	if (dev->irq < 0 || ret == -ETIMEDOUT)
		FUNC0(dev, INT_DISABLE);

	return ret;
}