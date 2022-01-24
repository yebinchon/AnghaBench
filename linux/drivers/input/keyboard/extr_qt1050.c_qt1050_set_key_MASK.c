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
struct regmap {int dummy; } ;
struct qt1050_key_regs {int /*<<< orphan*/  di_aks; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct qt1050_key_regs* FUNC1 (int) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct regmap *map, int number, int on)
{
	const struct qt1050_key_regs *key_regs;

	key_regs = FUNC1(number);

	return FUNC2(map, key_regs->di_aks, 0xfc,
				  on ? FUNC0(4) : 0x00);
}