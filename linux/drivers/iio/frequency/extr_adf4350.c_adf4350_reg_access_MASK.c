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
struct adf4350_state {unsigned int* regs; unsigned int* regs_hw; } ;

/* Variables and functions */
 unsigned int ADF4350_REG5 ; 
 unsigned int FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (struct adf4350_state*) ; 
 struct adf4350_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			      unsigned reg, unsigned writeval,
			      unsigned *readval)
{
	struct adf4350_state *st = FUNC2(indio_dev);
	int ret;

	if (reg > ADF4350_REG5)
		return -EINVAL;

	FUNC3(&indio_dev->mlock);
	if (readval == NULL) {
		st->regs[reg] = writeval & ~(FUNC0(0) | FUNC0(1) | FUNC0(2));
		ret = FUNC1(st);
	} else {
		*readval =  st->regs_hw[reg];
		ret = 0;
	}
	FUNC4(&indio_dev->mlock);

	return ret;
}