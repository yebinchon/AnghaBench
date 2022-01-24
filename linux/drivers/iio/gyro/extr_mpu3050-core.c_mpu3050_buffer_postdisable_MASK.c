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
struct mpu3050 {int /*<<< orphan*/  dev; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 struct mpu3050* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	struct mpu3050 *mpu3050 = FUNC0(indio_dev);

	FUNC1(mpu3050->dev);
	FUNC2(mpu3050->dev);

	return 0;
}