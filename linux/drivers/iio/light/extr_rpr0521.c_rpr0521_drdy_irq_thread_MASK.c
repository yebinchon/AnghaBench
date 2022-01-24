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
struct rpr0521_data {int /*<<< orphan*/  drdy_trigger0; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 struct rpr0521_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rpr0521_data*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct rpr0521_data *data = FUNC0(indio_dev);

	if (FUNC2(data)) {
		FUNC1(data->drdy_trigger0);
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}