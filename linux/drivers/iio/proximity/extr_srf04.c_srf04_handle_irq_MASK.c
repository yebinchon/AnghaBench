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
struct srf04_data {int /*<<< orphan*/  falling; void* ts_falling; int /*<<< orphan*/  rising; void* ts_rising; int /*<<< orphan*/  gpiod_echo; } ;
struct iio_dev {int dummy; } ;
typedef  void* ktime_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct srf04_data* FUNC2 (struct iio_dev*) ; 
 void* FUNC3 () ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct iio_dev *indio_dev = dev_id;
	struct srf04_data *data = FUNC2(indio_dev);
	ktime_t now = FUNC3();

	if (FUNC1(data->gpiod_echo)) {
		data->ts_rising = now;
		FUNC0(&data->rising);
	} else {
		data->ts_falling = now;
		FUNC0(&data->falling);
	}

	return IRQ_HANDLED;
}