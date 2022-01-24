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
struct img_i2c {int /*<<< orphan*/  int_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_GEN_START ; 
 int /*<<< orphan*/  MODE_ATOMIC ; 
 int /*<<< orphan*/  SCB_INT_MASK_REG ; 
 int /*<<< orphan*/  FUNC0 (struct img_i2c*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct img_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct img_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct img_i2c *i2c)
{
	FUNC1(i2c, MODE_ATOMIC);
	FUNC2(i2c, SCB_INT_MASK_REG, i2c->int_enable);
	FUNC0(i2c, CMD_GEN_START, 0x00);
}