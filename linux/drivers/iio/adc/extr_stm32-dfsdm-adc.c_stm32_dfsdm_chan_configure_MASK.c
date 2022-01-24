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
struct stm32_dfsdm_channel {unsigned int id; int /*<<< orphan*/  alt_si; int /*<<< orphan*/  src; int /*<<< orphan*/  type; } ;
struct stm32_dfsdm {struct regmap* regmap; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFSDM_CHCFGR1_CHINSEL_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFSDM_CHCFGR1_SITP_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFSDM_CHCFGR1_SPICKSEL_MASK ; 
 int FUNC4 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct stm32_dfsdm *dfsdm,
				      struct stm32_dfsdm_channel *ch)
{
	unsigned int id = ch->id;
	struct regmap *regmap = dfsdm->regmap;
	int ret;

	ret = FUNC4(regmap, FUNC0(id),
				 DFSDM_CHCFGR1_SITP_MASK,
				 FUNC2(ch->type));
	if (ret < 0)
		return ret;
	ret = FUNC4(regmap, FUNC0(id),
				 DFSDM_CHCFGR1_SPICKSEL_MASK,
				 FUNC3(ch->src));
	if (ret < 0)
		return ret;
	return FUNC4(regmap, FUNC0(id),
				  DFSDM_CHCFGR1_CHINSEL_MASK,
				  FUNC1(ch->alt_si));
}