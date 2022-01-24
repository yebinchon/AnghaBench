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
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iio_dev*) ; 
 struct iio_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC1(client);

	FUNC2(indio_dev);
	FUNC0(client->irq, indio_dev);
	FUNC4(indio_dev);
	FUNC5(FUNC3(indio_dev));

	return 0;
}