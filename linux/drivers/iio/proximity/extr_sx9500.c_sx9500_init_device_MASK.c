#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sx9500_data {int /*<<< orphan*/  regmap; scalar_t__ gpiod_rst; } ;
struct iio_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  def; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SX9500_REG_IRQ_MSK ; 
 int /*<<< orphan*/  SX9500_REG_IRQ_SRC ; 
 int /*<<< orphan*/  SX9500_REG_RESET ; 
 int /*<<< orphan*/  SX9500_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 struct sx9500_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* sx9500_default_regs ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev)
{
	struct sx9500_data *data = FUNC2(indio_dev);
	int ret, i;
	unsigned int val;

	if (data->gpiod_rst) {
		FUNC1(data->gpiod_rst, 0);
		FUNC6(1000, 2000);
		FUNC1(data->gpiod_rst, 1);
		FUNC6(1000, 2000);
	}

	ret = FUNC4(data->regmap, SX9500_REG_IRQ_MSK, 0);
	if (ret < 0)
		return ret;

	ret = FUNC4(data->regmap, SX9500_REG_RESET,
			   SX9500_SOFT_RESET);
	if (ret < 0)
		return ret;

	ret = FUNC3(data->regmap, SX9500_REG_IRQ_SRC, &val);
	if (ret < 0)
		return ret;

	for (i = 0; i < FUNC0(sx9500_default_regs); i++) {
		ret = FUNC4(data->regmap,
				   sx9500_default_regs[i].reg,
				   sx9500_default_regs[i].def);
		if (ret < 0)
			return ret;
	}

	return FUNC5(indio_dev);
}