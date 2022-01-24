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
struct synquacer_i2c {int /*<<< orphan*/  pclkrate; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SYNQUACER_I2C_REG_CCR ; 
 scalar_t__ SYNQUACER_I2C_REG_CSR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct synquacer_i2c *i2c)
{
	/* Disable clock */
	FUNC1(0, i2c->base + SYNQUACER_I2C_REG_CCR);
	FUNC1(0, i2c->base + SYNQUACER_I2C_REG_CSR);

	FUNC0(100, i2c->pclkrate);
}