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
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct hts221_hw {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HTS221_REG_DRDY_EN_ADDR ; 
 int /*<<< orphan*/  HTS221_REG_DRDY_EN_MASK ; 
 struct hts221_hw* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iio_trigger *trig, bool state)
{
	struct iio_dev *iio_dev = FUNC2(trig);
	struct hts221_hw *hw = FUNC1(iio_dev);

	return FUNC3(hw->regmap, HTS221_REG_DRDY_EN_ADDR,
				  HTS221_REG_DRDY_EN_MASK,
				  FUNC0(HTS221_REG_DRDY_EN_MASK, state));
}