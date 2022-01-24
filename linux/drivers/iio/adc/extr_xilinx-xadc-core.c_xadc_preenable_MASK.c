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
struct xadc {int dummy; } ;
struct iio_dev {unsigned long* active_scan_mask; } ;

/* Variables and functions */
 int XADC_CONF1_SEQ_DEFAULT ; 
 int /*<<< orphan*/  XADC_CONF1_SEQ_MASK ; 
 int /*<<< orphan*/  XADC_REG_CONF1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct xadc* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct xadc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct xadc*,int) ; 
 int FUNC5 (struct xadc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct xadc*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev)
{
	struct xadc *xadc = FUNC1(indio_dev);
	unsigned long scan_mask;
	int seq_mode;
	int ret;

	ret = FUNC5(xadc, XADC_REG_CONF1, XADC_CONF1_SEQ_MASK,
		XADC_CONF1_SEQ_DEFAULT);
	if (ret)
		goto err;

	scan_mask = *indio_dev->active_scan_mask;
	seq_mode = FUNC2(xadc, scan_mask);

	ret = FUNC6(xadc, FUNC0(0), scan_mask & 0xffff);
	if (ret)
		goto err;

	ret = FUNC6(xadc, FUNC0(1), scan_mask >> 16);
	if (ret)
		goto err;

	ret = FUNC4(xadc, seq_mode);
	if (ret)
		goto err;

	ret = FUNC5(xadc, XADC_REG_CONF1, XADC_CONF1_SEQ_MASK,
		seq_mode);
	if (ret)
		goto err;

	return 0;
err:
	FUNC3(indio_dev);
	return ret;
}