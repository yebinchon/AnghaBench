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
struct iio_dev {int /*<<< orphan*/  info_exist_lock; int /*<<< orphan*/ * info; int /*<<< orphan*/  dev; int /*<<< orphan*/  chrdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct iio_dev *indio_dev)
{
	FUNC0(&indio_dev->chrdev, &indio_dev->dev);

	FUNC6(&indio_dev->info_exist_lock);

	FUNC3(indio_dev);

	FUNC5(indio_dev);

	indio_dev->info = NULL;

	FUNC4(indio_dev);
	FUNC2(indio_dev);

	FUNC7(&indio_dev->info_exist_lock);

	FUNC1(indio_dev);
}