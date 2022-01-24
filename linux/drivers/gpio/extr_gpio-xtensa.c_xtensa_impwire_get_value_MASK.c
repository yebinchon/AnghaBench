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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 unsigned long FUNC2 (unsigned long*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset)
{
	unsigned long flags, saved_cpenable;
	u32 impwire;

	flags = FUNC2(&saved_cpenable);
	__asm__ __volatile__("read_impwire %0" : "=a" (impwire));
	FUNC1(flags, saved_cpenable);

	return !!(impwire & FUNC0(offset));
}