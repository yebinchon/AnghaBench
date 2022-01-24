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
struct kxcjk1013_data {int /*<<< orphan*/  timestamp; scalar_t__ buffer; int /*<<< orphan*/  mutex; int /*<<< orphan*/  client; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AXIS_MAX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KXCJK1013_REG_XOUT_L ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct kxcjk1013_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct kxcjk1013_data *data = FUNC1(indio_dev);
	int ret;

	FUNC4(&data->mutex);
	ret = FUNC0(data->client,
							KXCJK1013_REG_XOUT_L,
							AXIS_MAX * 2,
							(u8 *)data->buffer);
	FUNC5(&data->mutex);
	if (ret < 0)
		goto err;

	FUNC2(indio_dev, data->buffer,
					   data->timestamp);
err:
	FUNC3(indio_dev->trig);

	return IRQ_HANDLED;
}