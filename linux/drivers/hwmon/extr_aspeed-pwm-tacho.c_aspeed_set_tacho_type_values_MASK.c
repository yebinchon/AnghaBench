#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  size_t u32 ;
typedef  size_t u16 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl_reg1; int /*<<< orphan*/  ctrl_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_CTRL_FAN1_MASK ; 
 size_t TYPE_CTRL_FAN_DIVISION ; 
 int /*<<< orphan*/  TYPE_CTRL_FAN_MASK ; 
 size_t TYPE_CTRL_FAN_MODE ; 
 size_t TYPE_CTRL_FAN_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* type_params ; 

__attribute__((used)) static void FUNC1(struct regmap *regmap, u8 type,
					 u8 mode, u16 unit, u8 division)
{
	u32 reg_value = ((mode << TYPE_CTRL_FAN_MODE) |
			 (unit << TYPE_CTRL_FAN_PERIOD) |
			 (division << TYPE_CTRL_FAN_DIVISION));

	FUNC0(regmap, type_params[type].ctrl_reg,
			   TYPE_CTRL_FAN_MASK, reg_value);
	FUNC0(regmap, type_params[type].ctrl_reg1,
			   TYPE_CTRL_FAN1_MASK, unit << 16);
}