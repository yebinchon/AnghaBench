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
struct fxas21002c_data {int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct fxas21002c_data* FUNC1 (struct iio_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct fxas21002c_data *data = FUNC1(indio_dev);

	data->timestamp = FUNC0(indio_dev);

	return IRQ_WAKE_THREAD;
}