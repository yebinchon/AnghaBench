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
typedef  int u8 ;
struct mc9s08dz60 {int /*<<< orphan*/  client; } ;
struct gpio_chip {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 struct mc9s08dz60* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int*,int*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset)
{
	u8 reg, bit;
	s32 value;
	struct mc9s08dz60 *mc9s = FUNC0(gc);

	FUNC2(offset, &reg, &bit);
	value = FUNC1(mc9s->client, reg);

	return (value >= 0) ? (value >> bit) & 0x1 : 0;
}