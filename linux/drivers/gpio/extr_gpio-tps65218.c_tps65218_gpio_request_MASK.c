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
struct tps65218_gpio {struct tps65218* tps65218; } ;
struct tps65218 {int dummy; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TPS65218_CONFIG1_IO1_SEL ; 
 int /*<<< orphan*/  TPS65218_CONFIG2_DC12_RST ; 
 int /*<<< orphan*/  TPS65218_PROTECT_L1 ; 
 int /*<<< orphan*/  TPS65218_REG_CONFIG1 ; 
 int /*<<< orphan*/  TPS65218_REG_CONFIG2 ; 
 int /*<<< orphan*/  TPS65218_REG_SEQ7 ; 
 int /*<<< orphan*/  TPS65218_SEQ7_GPO1_SEQ_MASK ; 
 int /*<<< orphan*/  TPS65218_SEQ7_GPO3_SEQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct tps65218_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*,unsigned int) ; 
 scalar_t__ FUNC3 (struct gpio_chip*,unsigned int) ; 
 int FUNC4 (struct tps65218*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned offset)
{
	struct tps65218_gpio *tps65218_gpio = FUNC1(gc);
	struct tps65218 *tps65218 = tps65218_gpio->tps65218;
	int ret;

	if (FUNC3(gc, offset)) {
		FUNC0(gc->parent, "can't work as open source\n");
		return -EINVAL;
	}

	switch (offset) {
	case 0:
		if (!FUNC2(gc, offset)) {
			FUNC0(gc->parent, "GPO1 works only as open drain\n");
			return -EINVAL;
		}

		/* Disable sequencer for GPO1 */
		ret = FUNC4(tps65218, TPS65218_REG_SEQ7,
					  TPS65218_SEQ7_GPO1_SEQ_MASK,
					  TPS65218_PROTECT_L1);
		if (ret)
			return ret;

		/* Setup GPO1 */
		ret = FUNC4(tps65218, TPS65218_REG_CONFIG1,
					  TPS65218_CONFIG1_IO1_SEL,
					  TPS65218_PROTECT_L1);
		if (ret)
			return ret;

		break;
	case 1:
		/* Setup GPO2 */
		ret = FUNC4(tps65218, TPS65218_REG_CONFIG1,
					  TPS65218_CONFIG1_IO1_SEL,
					  TPS65218_PROTECT_L1);
		if (ret)
			return ret;

		break;

	case 2:
		if (!FUNC2(gc, offset)) {
			FUNC0(gc->parent, "GPO3 works only as open drain\n");
			return -EINVAL;
		}

		/* Disable sequencer for GPO3 */
		ret = FUNC4(tps65218, TPS65218_REG_SEQ7,
					  TPS65218_SEQ7_GPO3_SEQ_MASK,
					  TPS65218_PROTECT_L1);
		if (ret)
			return ret;

		/* Setup GPO3 */
		ret = FUNC4(tps65218, TPS65218_REG_CONFIG2,
					  TPS65218_CONFIG2_DC12_RST,
					  TPS65218_PROTECT_L1);
		if (ret)
			return ret;

		break;
	default:
		return -EINVAL;
	}

	return 0;
}