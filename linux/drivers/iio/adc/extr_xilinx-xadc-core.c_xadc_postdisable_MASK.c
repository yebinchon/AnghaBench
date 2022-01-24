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
struct xadc {int dummy; } ;
struct iio_dev {int num_channels; TYPE_1__* channels; } ;
struct TYPE_2__ {int /*<<< orphan*/  scan_index; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XADC_CONF1_SEQ_CONTINUOUS ; 
 int /*<<< orphan*/  XADC_CONF1_SEQ_MASK ; 
 int /*<<< orphan*/  XADC_REG_CONF1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct xadc* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct xadc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xadc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xadc*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	struct xadc *xadc = FUNC2(indio_dev);
	unsigned long scan_mask;
	int ret;
	int i;

	scan_mask = 1; /* Run calibration as part of the sequence */
	for (i = 0; i < indio_dev->num_channels; i++)
		scan_mask |= FUNC0(indio_dev->channels[i].scan_index);

	/* Enable all channels and calibration */
	ret = FUNC5(xadc, FUNC1(0), scan_mask & 0xffff);
	if (ret)
		return ret;

	ret = FUNC5(xadc, FUNC1(1), scan_mask >> 16);
	if (ret)
		return ret;

	ret = FUNC4(xadc, XADC_REG_CONF1, XADC_CONF1_SEQ_MASK,
		XADC_CONF1_SEQ_CONTINUOUS);
	if (ret)
		return ret;

	return FUNC3(xadc, XADC_CONF1_SEQ_CONTINUOUS);
}