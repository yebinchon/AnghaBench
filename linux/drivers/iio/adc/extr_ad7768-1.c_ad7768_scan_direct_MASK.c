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
struct ad7768_state {int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7768_CONTINUOUS ; 
 int /*<<< orphan*/  AD7768_ONE_SHOT ; 
 int /*<<< orphan*/  AD7768_REG_ADC_DATA ; 
 int ETIMEDOUT ; 
 int FUNC0 (struct ad7768_state*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ad7768_state*,int /*<<< orphan*/ ,int) ; 
 struct ad7768_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	struct ad7768_state *st = FUNC2(indio_dev);
	int readval, ret;

	FUNC4(&st->completion);

	ret = FUNC0(st, AD7768_ONE_SHOT);
	if (ret < 0)
		return ret;

	ret = FUNC5(&st->completion,
					  FUNC3(1000));
	if (!ret)
		return -ETIMEDOUT;

	readval = FUNC1(st, AD7768_REG_ADC_DATA, 3);
	if (readval < 0)
		return readval;
	/*
	 * Any SPI configuration of the AD7768-1 can only be
	 * performed in continuous conversion mode.
	 */
	ret = FUNC0(st, AD7768_CONTINUOUS);
	if (ret < 0)
		return ret;

	return readval;
}