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
struct netxbig_gpio_ext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netxbig_gpio_ext*) ; 
 int /*<<< orphan*/  gpio_ext_lock ; 
 int /*<<< orphan*/  FUNC1 (struct netxbig_gpio_ext*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct netxbig_gpio_ext*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct netxbig_gpio_ext *gpio_ext,
			       int addr, int value)
{
	unsigned long flags;

	FUNC3(&gpio_ext_lock, flags);
	FUNC1(gpio_ext, addr);
	FUNC2(gpio_ext, value);
	FUNC0(gpio_ext);
	FUNC4(&gpio_ext_lock, flags);
}