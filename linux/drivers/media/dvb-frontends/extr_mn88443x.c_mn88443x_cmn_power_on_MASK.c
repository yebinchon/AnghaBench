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
struct regmap {int dummy; } ;
struct mn88443x_priv {TYPE_1__* spec; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  mclk; struct regmap* regmap_t; } ;
struct TYPE_2__ {scalar_t__ primary; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIZSET1 ; 
 int /*<<< orphan*/  HIZSET2 ; 
 int /*<<< orphan*/  HIZSET3 ; 
 int /*<<< orphan*/  OUTCSET ; 
 int OUTCSET_CHDRV_8MA ; 
 int /*<<< orphan*/  PLDWSET ; 
 int PLDWSET_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct mn88443x_priv *chip)
{
	struct regmap *r_t = chip->regmap_t;

	FUNC0(chip->mclk);

	FUNC1(chip->reset_gpio, 1);
	FUNC3(100, 1000);
	FUNC1(chip->reset_gpio, 0);

	if (chip->spec->primary) {
		FUNC2(r_t, OUTCSET, OUTCSET_CHDRV_8MA);
		FUNC2(r_t, PLDWSET, PLDWSET_NORMAL);
		FUNC2(r_t, HIZSET1, 0x80);
		FUNC2(r_t, HIZSET2, 0xe0);
	} else {
		FUNC2(r_t, HIZSET3, 0x8f);
	}
}