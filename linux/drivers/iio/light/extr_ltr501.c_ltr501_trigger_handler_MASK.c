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
typedef  int u8 ;
typedef  int u16 ;
struct ltr501_data {int /*<<< orphan*/  regmap; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/  active_scan_mask; } ;
typedef  int irqreturn_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  als_buf ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int /*<<< orphan*/  LTR501_ALS_DATA1 ; 
 int /*<<< orphan*/  LTR501_PS_DATA ; 
 int LTR501_PS_DATA_MASK ; 
 int LTR501_STATUS_ALS_RDY ; 
 int LTR501_STATUS_PS_RDY ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct ltr501_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ltr501_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct ltr501_data *data = FUNC1(indio_dev);
	u16 buf[8];
	__le16 als_buf[2];
	u8 mask = 0;
	int j = 0;
	int ret, psdata;

	FUNC6(buf, 0, sizeof(buf));

	/* figure out which data needs to be ready */
	if (FUNC8(0, indio_dev->active_scan_mask) ||
	    FUNC8(1, indio_dev->active_scan_mask))
		mask |= LTR501_STATUS_ALS_RDY;
	if (FUNC8(2, indio_dev->active_scan_mask))
		mask |= LTR501_STATUS_PS_RDY;

	ret = FUNC5(data, mask);
	if (ret < 0)
		goto done;

	if (mask & LTR501_STATUS_ALS_RDY) {
		ret = FUNC7(data->regmap, LTR501_ALS_DATA1,
				       (u8 *)als_buf, sizeof(als_buf));
		if (ret < 0)
			return ret;
		if (FUNC8(0, indio_dev->active_scan_mask))
			buf[j++] = FUNC4(als_buf[1]);
		if (FUNC8(1, indio_dev->active_scan_mask))
			buf[j++] = FUNC4(als_buf[0]);
	}

	if (mask & LTR501_STATUS_PS_RDY) {
		ret = FUNC7(data->regmap, LTR501_PS_DATA,
				       &psdata, 2);
		if (ret < 0)
			goto done;
		buf[j++] = psdata & LTR501_PS_DATA_MASK;
	}

	FUNC2(indio_dev, buf,
					   FUNC0(indio_dev));

done:
	FUNC3(indio_dev->trig);

	return IRQ_HANDLED;
}