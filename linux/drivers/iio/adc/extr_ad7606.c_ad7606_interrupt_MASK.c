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
struct ad7606_state {int /*<<< orphan*/  completion; int /*<<< orphan*/  trig; int /*<<< orphan*/  gpio_convst; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct iio_dev*) ; 
 struct ad7606_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct iio_dev *indio_dev = dev_id;
	struct ad7606_state *st = FUNC3(indio_dev);

	if (FUNC2(indio_dev)) {
		FUNC1(st->gpio_convst, 0);
		FUNC4(st->trig);
	} else {
		FUNC0(&st->completion);
	}

	return IRQ_HANDLED;
}