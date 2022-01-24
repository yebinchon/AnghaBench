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
struct s3c24xx_i2c {scalar_t__ regs; int /*<<< orphan*/  dev; struct s3c2410_platform_i2c* pdata; } ;
struct s3c2410_platform_i2c {unsigned int slave_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S3C2410_IICADD ; 
 scalar_t__ S3C2410_IICCON ; 
 scalar_t__ S3C2410_IICSTAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct s3c24xx_i2c*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct s3c24xx_i2c *i2c)
{
	struct s3c2410_platform_i2c *pdata;
	unsigned int freq;

	/* get the plafrom data */

	pdata = i2c->pdata;

	/* write slave address */

	FUNC5(pdata->slave_addr, i2c->regs + S3C2410_IICADD);

	FUNC2(i2c->dev, "slave address 0x%02x\n", pdata->slave_addr);

	FUNC6(0, i2c->regs + S3C2410_IICCON);
	FUNC6(0, i2c->regs + S3C2410_IICSTAT);

	/* we need to work out the divisors for the clock... */

	if (FUNC4(i2c, &freq) != 0) {
		FUNC1(i2c->dev, "cannot meet bus frequency required\n");
		return -EINVAL;
	}

	/* todo - check that the i2c lines aren't being dragged anywhere */

	FUNC2(i2c->dev, "bus frequency set to %d KHz\n", freq);
	FUNC0(i2c->dev, "S3C2410_IICCON=0x%02x\n",
		FUNC3(i2c->regs + S3C2410_IICCON));

	return 0;
}