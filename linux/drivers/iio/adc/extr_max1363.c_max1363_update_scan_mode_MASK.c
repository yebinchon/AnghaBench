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
struct max1363_state {int /*<<< orphan*/  current_mode; int /*<<< orphan*/  chip_info; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct max1363_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct max1363_state*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
				    const unsigned long *scan_mask)
{
	struct max1363_state *st = FUNC0(indio_dev);

	/*
	 * Need to figure out the current mode based upon the requested
	 * scan mask in iio_dev
	 */
	st->current_mode = FUNC1(scan_mask, st->chip_info);
	if (!st->current_mode)
		return -EINVAL;
	FUNC2(st);
	return 0;
}