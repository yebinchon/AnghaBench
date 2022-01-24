#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct lpi2c_imx_struct {TYPE_1__ adapter; scalar_t__ base; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ETIMEDOUT ; 
 scalar_t__ LPI2C_MSR ; 
 unsigned int MSR_ALF ; 
 unsigned int MSR_BBF ; 
 unsigned int MSR_MBF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct lpi2c_imx_struct *lpi2c_imx)
{
	unsigned long orig_jiffies = jiffies;
	unsigned int temp;

	while (1) {
		temp = FUNC2(lpi2c_imx->base + LPI2C_MSR);

		/* check for arbitration lost, clear if set */
		if (temp & MSR_ALF) {
			FUNC5(temp, lpi2c_imx->base + LPI2C_MSR);
			return -EAGAIN;
		}

		if (temp & (MSR_BBF | MSR_MBF))
			break;

		if (FUNC4(jiffies, orig_jiffies + FUNC1(500))) {
			FUNC0(&lpi2c_imx->adapter.dev, "bus not work\n");
			return -ETIMEDOUT;
		}
		FUNC3();
	}

	return 0;
}