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
struct sx9500_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  completion; TYPE_1__* client; int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int SX9500_CLOSE_IRQ ; 
 unsigned int SX9500_CONVDONE_IRQ ; 
 unsigned int SX9500_FAR_IRQ ; 
 int /*<<< orphan*/  SX9500_REG_IRQ_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct sx9500_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct sx9500_data *data = FUNC2(indio_dev);
	int ret;
	unsigned int val;

	FUNC3(&data->mutex);

	ret = FUNC5(data->regmap, SX9500_REG_IRQ_SRC, &val);
	if (ret < 0) {
		FUNC1(&data->client->dev, "i2c transfer error in irq\n");
		goto out;
	}

	if (val & (SX9500_CLOSE_IRQ | SX9500_FAR_IRQ))
		FUNC6(indio_dev);

	if (val & SX9500_CONVDONE_IRQ)
		FUNC0(&data->completion);

out:
	FUNC4(&data->mutex);

	return IRQ_HANDLED;
}