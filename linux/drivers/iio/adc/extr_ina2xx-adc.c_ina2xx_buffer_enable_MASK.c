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
struct task_struct {int dummy; } ;
struct ina2xx_chip_info {unsigned int allow_async_readout; struct task_struct* task; int /*<<< orphan*/  avg; } ;
struct iio_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; scalar_t__* active_scan_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 unsigned int FUNC2 (struct ina2xx_chip_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 struct ina2xx_chip_info* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  ina2xx_capture_thread ; 
 struct task_struct* FUNC6 (int /*<<< orphan*/ ,void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev)
{
	struct ina2xx_chip_info *chip = FUNC5(indio_dev);
	unsigned int sampling_us = FUNC2(chip);
	struct task_struct *task;

	FUNC3(&indio_dev->dev, "Enabling buffer w/ scan_mask %02x, freq = %d, avg =%u\n",
		(unsigned int)(*indio_dev->active_scan_mask),
		1000000 / sampling_us, chip->avg);

	FUNC3(&indio_dev->dev, "Expected work period: %u us\n", sampling_us);
	FUNC3(&indio_dev->dev, "Async readout mode: %d\n",
		chip->allow_async_readout);

	task = FUNC6(ina2xx_capture_thread, (void *)indio_dev,
			      "%s:%d-%uus", indio_dev->name, indio_dev->id,
			      sampling_us);
	if (FUNC0(task))
		return FUNC1(task);

	FUNC4(task);
	FUNC7(task);
	chip->task = task;

	return 0;
}