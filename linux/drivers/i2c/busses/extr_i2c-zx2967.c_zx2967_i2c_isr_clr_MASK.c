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
typedef  int /*<<< orphan*/  u32 ;
struct zx2967_i2c {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_IRQ_ACK_CLEAR ; 
 int /*<<< orphan*/  REG_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct zx2967_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zx2967_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct zx2967_i2c *i2c)
{
	u32 status;

	status = FUNC0(i2c, REG_STAT);
	status |= I2C_IRQ_ACK_CLEAR;
	FUNC1(i2c, status, REG_STAT);
}