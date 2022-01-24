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
typedef  int uint16_t ;
struct xadc {unsigned int alarm_mask; int /*<<< orphan*/  mutex; TYPE_1__* ops; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
struct TYPE_2__ {int /*<<< orphan*/  (* update_alarm ) (struct xadc*,unsigned int) ;} ;

/* Variables and functions */
 int XADC_CONF1_ALARM_MASK ; 
 int /*<<< orphan*/  XADC_REG_CONF1 ; 
 int FUNC0 (struct xadc*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct xadc*,int /*<<< orphan*/ ,int) ; 
 struct xadc* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xadc*,unsigned int) ; 
 unsigned int FUNC6 (struct iio_chan_spec const*) ; 

int FUNC7(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, enum iio_event_type type,
	enum iio_event_direction dir, int state)
{
	unsigned int alarm = FUNC6(chan);
	struct xadc *xadc = FUNC2(indio_dev);
	uint16_t cfg, old_cfg;
	int ret;

	FUNC3(&xadc->mutex);

	if (state)
		xadc->alarm_mask |= alarm;
	else
		xadc->alarm_mask &= ~alarm;

	xadc->ops->update_alarm(xadc, xadc->alarm_mask);

	ret = FUNC0(xadc, XADC_REG_CONF1, &cfg);
	if (ret)
		goto err_out;

	old_cfg = cfg;
	cfg |= XADC_CONF1_ALARM_MASK;
	cfg &= ~((xadc->alarm_mask & 0xf0) << 4); /* bram, pint, paux, ddr */
	cfg &= ~((xadc->alarm_mask & 0x08) >> 3); /* ot */
	cfg &= ~((xadc->alarm_mask & 0x07) << 1); /* temp, vccint, vccaux */
	if (old_cfg != cfg)
		ret = FUNC1(xadc, XADC_REG_CONF1, cfg);

err_out:
	FUNC4(&xadc->mutex);

	return ret;
}