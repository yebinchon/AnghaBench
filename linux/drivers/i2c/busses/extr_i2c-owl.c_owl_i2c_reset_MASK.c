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
struct owl_i2c_dev {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  OWL_I2C_CTL_EN ; 
 scalar_t__ OWL_I2C_REG_CTL ; 
 scalar_t__ OWL_I2C_REG_STAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct owl_i2c_dev *i2c_dev)
{
	FUNC1(i2c_dev->base + OWL_I2C_REG_CTL,
			   OWL_I2C_CTL_EN, false);
	FUNC0(1);
	FUNC1(i2c_dev->base + OWL_I2C_REG_CTL,
			   OWL_I2C_CTL_EN, true);

	/* Clear status registers */
	FUNC2(0, i2c_dev->base + OWL_I2C_REG_STAT);
}