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
struct ad7766 {int /*<<< orphan*/  reg; int /*<<< orphan*/  mclk; int /*<<< orphan*/  pd_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct ad7766* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	struct ad7766 *ad7766 = FUNC3(indio_dev);

	FUNC2(ad7766->pd_gpio, 1);

	/*
	 * The PD pin is synchronous to the clock, so give it some time to
	 * notice the change before we disable the clock.
	 */
	FUNC4(20);

	FUNC1(ad7766->mclk);
	FUNC5(FUNC0(ad7766->reg), ad7766->reg);

	return 0;
}