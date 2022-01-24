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
struct pxa_i2c {int highmode_enter; int master_code; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int HZ ; 
 int I2C_RETRY ; 
 int ICR_ALDIE ; 
 int ICR_GPIOEN ; 
 int ICR_ITEIE ; 
 int ICR_START ; 
 int ICR_STOP ; 
 int ICR_TB ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_i2c*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pxa_i2c *i2c)
{
	u32 icr;
	long timeout;

	FUNC3(&i2c->lock);
	i2c->highmode_enter = true;
	FUNC6(i2c->master_code, FUNC1(i2c));

	icr = FUNC2(FUNC0(i2c)) & ~(ICR_STOP | ICR_ALDIE);
	icr |= ICR_GPIOEN | ICR_START | ICR_TB | ICR_ITEIE;
	FUNC6(icr, FUNC0(i2c));

	FUNC4(&i2c->lock);
	timeout = FUNC5(i2c->wait,
			i2c->highmode_enter == false, HZ * 1);

	i2c->highmode_enter = false;

	return (timeout == 0) ? I2C_RETRY : 0;
}