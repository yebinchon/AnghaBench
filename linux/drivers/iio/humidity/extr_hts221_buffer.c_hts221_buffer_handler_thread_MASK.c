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
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {struct iio_chan_spec* channels; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;
struct hts221_hw {int /*<<< orphan*/  trig; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int HTS221_DATA_SIZE ; 
 size_t HTS221_SENSOR_H ; 
 size_t HTS221_SENSOR_T ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct hts221_hw* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *p)
{
	u8 buffer[FUNC0(2 * HTS221_DATA_SIZE, sizeof(s64)) + sizeof(s64)];
	struct iio_poll_func *pf = p;
	struct iio_dev *iio_dev = pf->indio_dev;
	struct hts221_hw *hw = FUNC2(iio_dev);
	struct iio_chan_spec const *ch;
	int err;

	/* humidity data */
	ch = &iio_dev->channels[HTS221_SENSOR_H];
	err = FUNC5(hw->regmap, ch->address,
			       buffer, HTS221_DATA_SIZE);
	if (err < 0)
		goto out;

	/* temperature data */
	ch = &iio_dev->channels[HTS221_SENSOR_T];
	err = FUNC5(hw->regmap, ch->address,
			       buffer + HTS221_DATA_SIZE, HTS221_DATA_SIZE);
	if (err < 0)
		goto out;

	FUNC3(iio_dev, buffer,
					   FUNC1(iio_dev));

out:
	FUNC4(hw->trig);

	return IRQ_HANDLED;
}