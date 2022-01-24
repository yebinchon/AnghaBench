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
struct i2c_client {int dummy; } ;
struct afe4404_data {scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  regulator; int /*<<< orphan*/  trig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct iio_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct afe4404_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC1(client);
	struct afe4404_data *afe = FUNC3(indio_dev);
	int ret;

	FUNC2(indio_dev);

	FUNC5(indio_dev);

	if (afe->irq > 0)
		FUNC4(afe->trig);

	ret = FUNC6(afe->regulator);
	if (ret) {
		FUNC0(afe->dev, "Unable to disable regulator\n");
		return ret;
	}

	return 0;
}