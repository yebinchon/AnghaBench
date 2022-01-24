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
struct lmp91000_data {int* buffer; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  LMP91000_REG_MODECN_3LEAD ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct lmp91000_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lmp91000_data*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *private)
{
	struct iio_poll_func *pf = private;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct lmp91000_data *data = FUNC1(indio_dev);
	int ret, val;

	FUNC5(data->buffer, 0, sizeof(data->buffer));

	ret = FUNC4(data, LMP91000_REG_MODECN_3LEAD, &val);
	if (!ret) {
		data->buffer[0] = val;
		FUNC2(indio_dev, data->buffer,
						   FUNC0(indio_dev));
	}

	FUNC3(indio_dev->trig);

	return IRQ_HANDLED;
}