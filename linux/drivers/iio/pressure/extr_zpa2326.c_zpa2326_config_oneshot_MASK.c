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
typedef  int /*<<< orphan*/  u8 ;
struct zpa2326_private {struct regmap* regmap; } ;
struct zpa2326_frequency {int /*<<< orphan*/  hz; int /*<<< orphan*/  odr; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ ZPA2326_CTRL_REG1_MASK_DATA_READY ; 
 int /*<<< orphan*/  ZPA2326_CTRL_REG1_REG ; 
 int /*<<< orphan*/  ZPA2326_CTRL_REG3_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (struct iio_dev const*) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev const*,char*,int /*<<< orphan*/ ) ; 
 struct zpa2326_frequency* FUNC4 () ; 

__attribute__((used)) static int FUNC5(const struct iio_dev *indio_dev,
				  int                   irq)
{
	struct regmap                  *regs = ((struct zpa2326_private *)
						FUNC1(indio_dev))->regmap;
	const struct zpa2326_frequency *freq = FUNC4();
	int                             err;

	/* Setup highest available Output Data Rate for one shot mode. */
	err = FUNC2(regs, ZPA2326_CTRL_REG3_REG, freq->odr);
	if (err)
		return err;

	if (irq > 0) {
		/* Request interrupt when new sample is available. */
		err = FUNC2(regs, ZPA2326_CTRL_REG1_REG,
				   (u8)~ZPA2326_CTRL_REG1_MASK_DATA_READY);

		if (err) {
			FUNC0(indio_dev->dev.parent,
				"failed to setup one shot mode (%d)", err);
			return err;
		}
	}

	FUNC3(indio_dev, "one shot mode setup @%dHz", freq->hz);

	return 0;
}