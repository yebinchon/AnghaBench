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
struct stm32_dfsdm_adc {int /*<<< orphan*/  fl_id; TYPE_1__* dfsdm; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFSDM_CR1_CFG_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_dfsdm_adc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct stm32_dfsdm_adc *adc)
{
	struct regmap *regmap = adc->dfsdm->regmap;

	FUNC3(adc->dfsdm, adc->fl_id);

	FUNC1(regmap, FUNC0(adc->fl_id),
			   DFSDM_CR1_CFG_MASK, 0);

	FUNC2(adc);
}