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
struct kmx61_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  motion_trig; int /*<<< orphan*/  mag_dready_trig; int /*<<< orphan*/  acc_dready_trig; int /*<<< orphan*/  mag_indio_dev; int /*<<< orphan*/  acc_indio_dev; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int KMX61_ACC ; 
 int /*<<< orphan*/  KMX61_ALL_STBY ; 
 int KMX61_MAG ; 
 struct kmx61_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kmx61_data*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client)
{
	struct kmx61_data *data = FUNC0(client);

	FUNC1(data->acc_indio_dev);
	FUNC1(data->mag_indio_dev);

	FUNC7(&client->dev);
	FUNC9(&client->dev);
	FUNC8(&client->dev);

	if (client->irq > 0) {
		FUNC3(data->acc_indio_dev);
		FUNC3(data->mag_indio_dev);
		FUNC2(data->acc_dready_trig);
		FUNC2(data->mag_dready_trig);
		FUNC2(data->motion_trig);
	}

	FUNC5(&data->lock);
	FUNC4(data, KMX61_ALL_STBY, KMX61_ACC | KMX61_MAG, true);
	FUNC6(&data->lock);

	return 0;
}