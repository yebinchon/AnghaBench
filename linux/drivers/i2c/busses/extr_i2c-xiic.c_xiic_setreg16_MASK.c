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
typedef  int /*<<< orphan*/  u16 ;
struct xiic_i2c {scalar_t__ endianness; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ LITTLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct xiic_i2c *i2c, int reg, u16 value)
{
	if (i2c->endianness == LITTLE)
		FUNC0(value, i2c->base + reg);
	else
		FUNC1(value, i2c->base + reg + 2);
}