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
struct ti_ads7950_state {int single_tx; int single_rx; int /*<<< orphan*/  slock; int /*<<< orphan*/  scan_single_msg; int /*<<< orphan*/  spi; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct ti_ads7950_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev, unsigned int ch)
{
	struct ti_ads7950_state *st = FUNC2(indio_dev);
	int ret, cmd;

	FUNC3(&st->slock);
	cmd = FUNC1(FUNC0(ch));
	st->single_tx = cmd;

	ret = FUNC5(st->spi, &st->scan_single_msg);
	if (ret)
		goto out;

	ret = st->single_rx;

out:
	FUNC4(&st->slock);

	return ret;
}