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
struct iio_dev {int dummy; } ;
struct ad799x_state {int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AD7998_ALERT_STAT_CLEAR ; 
 int /*<<< orphan*/  AD7998_ALERT_STAT_REG ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_VOLTAGE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct ad799x_state* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct ad799x_state *st = FUNC5(private);
	int i, ret;

	ret = FUNC2(st->client, AD7998_ALERT_STAT_REG);
	if (ret <= 0)
		goto done;

	if (FUNC3(st->client, AD7998_ALERT_STAT_REG,
		AD7998_ALERT_STAT_CLEAR) < 0)
		goto done;

	for (i = 0; i < 8; i++) {
		if (ret & FUNC0(i))
			FUNC6(indio_dev,
				       i & 0x1 ?
				       FUNC1(IIO_VOLTAGE,
							    (i >> 1),
							    IIO_EV_TYPE_THRESH,
							    IIO_EV_DIR_RISING) :
				       FUNC1(IIO_VOLTAGE,
							    (i >> 1),
							    IIO_EV_TYPE_THRESH,
							    IIO_EV_DIR_FALLING),
				       FUNC4(indio_dev));
	}

done:
	return IRQ_HANDLED;
}