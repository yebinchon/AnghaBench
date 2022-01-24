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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct lpi2c_imx_struct {TYPE_1__ adapter; scalar_t__ base; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 scalar_t__ LPI2C_MFSR ; 
 scalar_t__ LPI2C_MSR ; 
 int MSR_NDF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct lpi2c_imx_struct *lpi2c_imx)
{
	unsigned long orig_jiffies = jiffies;
	u32 txcnt;

	do {
		txcnt = FUNC2(lpi2c_imx->base + LPI2C_MFSR) & 0xff;

		if (FUNC2(lpi2c_imx->base + LPI2C_MSR) & MSR_NDF) {
			FUNC0(&lpi2c_imx->adapter.dev, "NDF detected\n");
			return -EIO;
		}

		if (FUNC4(jiffies, orig_jiffies + FUNC1(500))) {
			FUNC0(&lpi2c_imx->adapter.dev, "txfifo empty timeout\n");
			return -ETIMEDOUT;
		}
		FUNC3();

	} while (txcnt);

	return 0;
}