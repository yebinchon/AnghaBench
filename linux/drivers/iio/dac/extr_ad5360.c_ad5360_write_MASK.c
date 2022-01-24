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
struct iio_dev {int /*<<< orphan*/  mlock; } ;

/* Variables and functions */
 int FUNC0 (struct iio_dev*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev, unsigned int cmd,
	unsigned int addr, unsigned int val, unsigned int shift)
{
	int ret;

	FUNC1(&indio_dev->mlock);
	ret = FUNC0(indio_dev, cmd, addr, val, shift);
	FUNC2(&indio_dev->mlock);

	return ret;
}