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
typedef  int uint16_t ;
struct adv7511 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ADV7511_CSC_UPDATE_MODE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static void FUNC4(struct adv7511 *adv7511, bool enable,
				 const uint16_t *coeff,
				 unsigned int scaling_factor)
{
	unsigned int i;

	FUNC2(adv7511->regmap, FUNC1(1),
			   ADV7511_CSC_UPDATE_MODE, ADV7511_CSC_UPDATE_MODE);

	if (enable) {
		for (i = 0; i < 12; ++i) {
			FUNC2(adv7511->regmap,
					   FUNC1(i),
					   0x1f, coeff[i] >> 8);
			FUNC3(adv7511->regmap,
				     FUNC0(i),
				     coeff[i] & 0xff);
		}
	}

	if (enable)
		FUNC2(adv7511->regmap, FUNC1(0),
				   0xe0, 0x80 | (scaling_factor << 5));
	else
		FUNC2(adv7511->regmap, FUNC1(0),
				   0x80, 0x00);

	FUNC2(adv7511->regmap, FUNC1(1),
			   ADV7511_CSC_UPDATE_MODE, 0);
}