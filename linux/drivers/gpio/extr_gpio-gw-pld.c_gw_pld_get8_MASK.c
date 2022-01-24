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
struct gw_pld {int /*<<< orphan*/  client; } ;
struct gpio_chip {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 struct gw_pld* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset)
{
	struct gw_pld *gw = FUNC1(gc);
	s32 val;

	val = FUNC2(gw->client);

	return (val < 0) ? 0 : !!(val & FUNC0(offset));
}