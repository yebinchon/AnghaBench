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
struct octeon_i2c {int hlc_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWSI_CTL_ENAB ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct octeon_i2c *i2c)
{
	if (!i2c->hlc_enabled)
		return;

	i2c->hlc_enabled = false;
	FUNC0(i2c, TWSI_CTL_ENAB);
}