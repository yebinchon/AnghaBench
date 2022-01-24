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
struct regmap {int dummy; } ;

/* Variables and functions */
 int MODE1_NORMAL_MODE ; 
 int MODE2_OCH_STOP ; 
 int /*<<< orphan*/  TLC591XX_REG_MODE1 ; 
 int /*<<< orphan*/  TLC591XX_REG_MODE2 ; 
 int FUNC0 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(struct regmap *regmap, u8 mode)
{
	int err;
	u8 val;

	err = FUNC0(regmap, TLC591XX_REG_MODE1, MODE1_NORMAL_MODE);
	if (err)
		return err;

	val = MODE2_OCH_STOP | mode;

	return FUNC0(regmap, TLC591XX_REG_MODE2, val);
}