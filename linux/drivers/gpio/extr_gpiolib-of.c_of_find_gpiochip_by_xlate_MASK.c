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
struct of_phandle_args {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct gpio_chip* FUNC0 (struct of_phandle_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_gpiochip_match_node_and_xlate ; 

__attribute__((used)) static struct gpio_chip *FUNC1(
					struct of_phandle_args *gpiospec)
{
	return FUNC0(gpiospec, of_gpiochip_match_node_and_xlate);
}