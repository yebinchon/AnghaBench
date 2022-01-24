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
struct mpl3115_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/  active_scan_mask; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MPL3115_OUT_PRESS ; 
 int /*<<< orphan*/  MPL3115_OUT_TEMP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct mpl3115_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct mpl3115_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct mpl3115_data *data = FUNC2(indio_dev);
	u8 buffer[16]; /* 32-bit channel + 16-bit channel + padding + ts */
	int ret, pos = 0;

	FUNC7(&data->lock);
	ret = FUNC6(data);
	if (ret < 0) {
		FUNC8(&data->lock);
		goto done;
	}

	FUNC5(buffer, 0, sizeof(buffer));
	if (FUNC9(0, indio_dev->active_scan_mask)) {
		ret = FUNC0(data->client,
			MPL3115_OUT_PRESS, 3, &buffer[pos]);
		if (ret < 0) {
			FUNC8(&data->lock);
			goto done;
		}
		pos += 4;
	}

	if (FUNC9(1, indio_dev->active_scan_mask)) {
		ret = FUNC0(data->client,
			MPL3115_OUT_TEMP, 2, &buffer[pos]);
		if (ret < 0) {
			FUNC8(&data->lock);
			goto done;
		}
	}
	FUNC8(&data->lock);

	FUNC3(indio_dev, buffer,
		FUNC1(indio_dev));

done:
	FUNC4(indio_dev->trig);
	return IRQ_HANDLED;
}