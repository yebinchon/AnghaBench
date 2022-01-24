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
struct sprd_i2c {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ I2C_CTL ; 
 int I2C_MODE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct sprd_i2c *i2c_dev, int rw)
{
	u32 cmd = FUNC0(i2c_dev->base + I2C_CTL) & ~I2C_MODE;

	FUNC1(cmd | rw << 3, i2c_dev->base + I2C_CTL);
}