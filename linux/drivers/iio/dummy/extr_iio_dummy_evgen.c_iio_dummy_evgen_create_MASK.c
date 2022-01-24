#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_sim; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IIO_EVENTGEN_NO ; 
 TYPE_1__* iio_evgen ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret;

	iio_evgen = FUNC3(sizeof(*iio_evgen), GFP_KERNEL);
	if (!iio_evgen)
		return -ENOMEM;

	ret = FUNC0(&iio_evgen->irq_sim, IIO_EVENTGEN_NO);
	if (ret < 0) {
		FUNC2(iio_evgen);
		return ret;
	}

	iio_evgen->base = FUNC1(&iio_evgen->irq_sim, 0);
	FUNC4(&iio_evgen->lock);

	return 0;
}