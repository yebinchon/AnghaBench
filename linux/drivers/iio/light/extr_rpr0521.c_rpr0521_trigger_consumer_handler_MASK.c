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
struct rpr0521_data {TYPE_1__* client; int /*<<< orphan*/  regmap; scalar_t__ irq_timestamp; } ;
struct iio_poll_func {scalar_t__ timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RPR0521_REG_PXS_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct iio_dev*) ; 
 struct rpr0521_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct iio_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct rpr0521_data *data = FUNC2(indio_dev);
	int err;

	u8 buffer[16]; /* 3 16-bit channels + padding + ts */

	/* Use irq timestamp when reasonable. */
	if (FUNC5(indio_dev) && data->irq_timestamp) {
		pf->timestamp = data->irq_timestamp;
		data->irq_timestamp = 0;
	}
	/* Other chained trigger polls get timestamp only here. */
	if (!pf->timestamp)
		pf->timestamp = FUNC1(indio_dev);

	err = FUNC6(data->regmap, RPR0521_REG_PXS_DATA,
		&buffer,
		(3 * 2) + 1);	/* 3 * 16-bit + (discarded) int clear reg. */
	if (!err)
		FUNC3(indio_dev,
						   buffer, pf->timestamp);
	else
		FUNC0(&data->client->dev,
			"Trigger consumer can't read from sensor.\n");
	pf->timestamp = 0;

	FUNC4(indio_dev->trig);

	return IRQ_HANDLED;
}