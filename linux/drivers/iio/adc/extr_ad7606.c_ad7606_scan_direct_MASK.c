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
struct ad7606_state {int* data; int /*<<< orphan*/  gpio_convst; int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (struct ad7606_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct ad7606_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev, unsigned int ch)
{
	struct ad7606_state *st = FUNC2(indio_dev);
	int ret;

	FUNC1(st->gpio_convst, 1);
	ret = FUNC4(&st->completion,
					  FUNC3(1000));
	if (!ret) {
		ret = -ETIMEDOUT;
		goto error_ret;
	}

	ret = FUNC0(st);
	if (ret == 0)
		ret = st->data[ch];

error_ret:
	FUNC1(st->gpio_convst, 0);

	return ret;
}