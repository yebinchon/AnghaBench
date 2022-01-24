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
typedef  int /*<<< orphan*/  u64 ;
struct us5182d_data {TYPE_1__* client; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IIO_EV_DIR_FALLING ; 
 int IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_PROXIMITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int US5182D_CFG0_PROX ; 
 int US5182D_CFG0_PX_IRQ ; 
 int /*<<< orphan*/  US5182D_REG_CFG0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct us5182d_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct us5182d_data *data = FUNC5(indio_dev);
	enum iio_event_direction dir;
	int ret;
	u64 ev;

	ret = FUNC2(data->client, US5182D_REG_CFG0);
	if (ret < 0) {
		FUNC1(&data->client->dev, "i2c transfer error in irq\n");
		return IRQ_HANDLED;
	}

	dir = ret & US5182D_CFG0_PROX ? IIO_EV_DIR_RISING : IIO_EV_DIR_FALLING;
	ev = FUNC0(IIO_PROXIMITY, 1, IIO_EV_TYPE_THRESH, dir);

	FUNC6(indio_dev, ev, FUNC4(indio_dev));

	ret = FUNC3(data->client, US5182D_REG_CFG0,
					ret & ~US5182D_CFG0_PX_IRQ);
	if (ret < 0)
		FUNC1(&data->client->dev, "i2c transfer error in irq\n");

	return IRQ_HANDLED;
}