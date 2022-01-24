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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct ak8974 {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK8974_PWR_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ak8974*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct ak8974* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c)
{
	struct iio_dev *indio_dev = FUNC2(i2c);
	struct ak8974 *ak8974 = FUNC4(indio_dev);

	FUNC3(indio_dev);
	FUNC5(indio_dev);
	FUNC7(&i2c->dev);
	FUNC8(&i2c->dev);
	FUNC6(&i2c->dev);
	FUNC1(ak8974, AK8974_PWR_OFF);
	FUNC9(FUNC0(ak8974->regs), ak8974->regs);

	return 0;
}