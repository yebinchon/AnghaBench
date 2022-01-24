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
struct pxa_i2c {scalar_t__ msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_RETRY ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct pxa_i2c *i2c)
{
	if (i2c->msg)
		FUNC0(i2c, I2C_RETRY);
}