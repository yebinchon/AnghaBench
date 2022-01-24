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
struct sprd_i2c {scalar_t__ base; int /*<<< orphan*/  bus_freq; } ;

/* Variables and functions */
 scalar_t__ I2C_CTL ; 
 int I2C_DVD_OPT ; 
 int I2C_EN ; 
 int /*<<< orphan*/  I2C_FIFO_EMPTY_THLD ; 
 int /*<<< orphan*/  I2C_FIFO_FULL_THLD ; 
 int I2C_INT_EN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sprd_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct sprd_i2c *i2c_dev)
{
	u32 tmp = I2C_DVD_OPT;

	FUNC6(tmp, i2c_dev->base + I2C_CTL);

	FUNC5(i2c_dev, I2C_FIFO_FULL_THLD);
	FUNC4(i2c_dev, I2C_FIFO_EMPTY_THLD);

	FUNC3(i2c_dev, i2c_dev->bus_freq);
	FUNC2(i2c_dev);
	FUNC1(i2c_dev);

	tmp = FUNC0(i2c_dev->base + I2C_CTL);
	FUNC6(tmp | I2C_EN | I2C_INT_EN, i2c_dev->base + I2C_CTL);
}