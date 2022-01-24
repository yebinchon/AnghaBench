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
typedef  int /*<<< orphan*/  u8 ;
struct st_uvis25_hw {int /*<<< orphan*/  trig; int /*<<< orphan*/  regmap; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ST_UVIS25_REG_OUT_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct st_uvis25_hw* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *p)
{
	u8 buffer[FUNC0(sizeof(u8), sizeof(s64)) + sizeof(s64)];
	struct iio_poll_func *pf = p;
	struct iio_dev *iio_dev = pf->indio_dev;
	struct st_uvis25_hw *hw = FUNC2(iio_dev);
	int err;

	err = FUNC5(hw->regmap, ST_UVIS25_REG_OUT_ADDR, (int *)buffer);
	if (err < 0)
		goto out;

	FUNC3(iio_dev, buffer,
					   FUNC1(iio_dev));

out:
	FUNC4(hw->trig);

	return IRQ_HANDLED;
}