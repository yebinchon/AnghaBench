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
struct gpio_desc {int dummy; } ;
struct gpio_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct gpio_desc**,struct gpio_array*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 

__attribute__((used)) static void FUNC5(unsigned int ndescs,
						  struct gpio_desc **desc,
						  struct gpio_array *info,
						  int value)
{
	unsigned long *values;

	values = FUNC0(ndescs, GFP_KERNEL);
	if (!values)
		return;

	if (value)
		FUNC1(values, ndescs);
	else
		FUNC2(values, ndescs);

	FUNC3(ndescs, desc, info, values);
	FUNC4(values);
}