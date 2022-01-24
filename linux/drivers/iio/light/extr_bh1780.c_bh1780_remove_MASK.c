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
struct bh1780_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH1780_POFF ; 
 int /*<<< orphan*/  BH1780_REG_CONTROL ; 
 int FUNC0 (struct bh1780_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct bh1780_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC2(client);
	struct bh1780_data *bh1780 = FUNC4(indio_dev);
	int ret;

	FUNC3(indio_dev);
	FUNC6(&client->dev);
	FUNC7(&client->dev);
	FUNC5(&client->dev);
	ret = FUNC0(bh1780, BH1780_REG_CONTROL, BH1780_POFF);
	if (ret < 0) {
		FUNC1(&client->dev, "failed to power off\n");
		return ret;
	}

	return 0;
}