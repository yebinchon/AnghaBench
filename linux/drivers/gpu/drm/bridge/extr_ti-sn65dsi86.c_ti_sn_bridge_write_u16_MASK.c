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
typedef  int u16 ;
struct ti_sn_bridge {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static void FUNC1(struct ti_sn_bridge *pdata,
				   unsigned int reg, u16 val)
{
	FUNC0(pdata->regmap, reg, val & 0xFF);
	FUNC0(pdata->regmap, reg + 1, val >> 8);
}