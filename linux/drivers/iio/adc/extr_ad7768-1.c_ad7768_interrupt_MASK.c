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
struct ad7768_state {int /*<<< orphan*/  completion; int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct iio_dev*) ; 
 struct ad7768_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct iio_dev *indio_dev = dev_id;
	struct ad7768_state *st = FUNC2(indio_dev);

	if (FUNC1(indio_dev))
		FUNC3(st->trig);
	else
		FUNC0(&st->completion);

	return IRQ_HANDLED;
}