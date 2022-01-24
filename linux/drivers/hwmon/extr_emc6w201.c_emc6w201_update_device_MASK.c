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
struct i2c_client {int dummy; } ;
struct emc6w201_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void*** fan; void*** temp; void*** in; struct i2c_client* client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ HZ ; 
 struct emc6w201_data* FUNC8 (struct device*) ; 
 void* FUNC9 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 size_t input ; 
 scalar_t__ jiffies ; 
 size_t max ; 
 size_t min ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct emc6w201_data *FUNC14(struct device *dev)
{
	struct emc6w201_data *data = FUNC8(dev);
	struct i2c_client *client = data->client;
	int nr;

	FUNC11(&data->update_lock);

	if (FUNC13(jiffies, data->last_updated + HZ) || !data->valid) {
		for (nr = 0; nr < 6; nr++) {
			data->in[input][nr] =
				FUNC10(client,
						FUNC2(nr));
			data->in[min][nr] =
				FUNC10(client,
						FUNC4(nr));
			data->in[max][nr] =
				FUNC10(client,
						FUNC3(nr));
		}

		for (nr = 0; nr < 6; nr++) {
			data->temp[input][nr] =
				FUNC10(client,
						FUNC5(nr));
			data->temp[min][nr] =
				FUNC10(client,
						FUNC7(nr));
			data->temp[max][nr] =
				FUNC10(client,
						FUNC6(nr));
		}

		for (nr = 0; nr < 5; nr++) {
			data->fan[input][nr] =
				FUNC9(client,
						FUNC0(nr));
			data->fan[min][nr] =
				FUNC9(client,
						FUNC1(nr));
		}

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC12(&data->update_lock);

	return data;
}