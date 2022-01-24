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
struct adis16460 {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16460_REG_DEC_RATE ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct adis16460* FUNC1 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev, int val, int val2)
{
	struct adis16460 *st = FUNC1(indio_dev);
	int t;

	t =  val * 1000 + val2 / 1000;
	if (t <= 0)
		return -EINVAL;

	t = 2048000 / t;
	if (t > 2048)
		t = 2048;

	if (t != 0)
		t--;

	return FUNC0(&st->adis, ADIS16460_REG_DEC_RATE, t);
}