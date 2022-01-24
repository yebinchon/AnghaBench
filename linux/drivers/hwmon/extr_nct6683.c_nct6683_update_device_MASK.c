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
typedef  int /*<<< orphan*/  u8 ;
struct nct6683_data {int valid; int in_num; int temp_num; int have_fan; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void** fan_min; void** rpm; void*** temp; void** temp_in; int /*<<< orphan*/ * temp_index; void*** in; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (void**) ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct nct6683_data* FUNC4 (struct device*) ; 
 int FUNC5 (struct nct6683_data*,int,int) ; 
 int FUNC6 (struct nct6683_data*,int,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct nct6683_data*,int) ; 
 void* FUNC10 (struct nct6683_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct nct6683_data *FUNC13(struct device *dev)
{
	struct nct6683_data *data = FUNC4(dev);
	int i, j;

	FUNC7(&data->update_lock);

	if (FUNC12(jiffies, data->last_updated + HZ) || !data->valid) {
		/* Measured voltages and limits */
		for (i = 0; i < data->in_num; i++) {
			for (j = 0; j < 3; j++) {
				int reg = FUNC5(data, j, i);

				if (reg >= 0)
					data->in[j][i] =
						FUNC9(data, reg);
			}
		}

		/* Measured temperatures and limits */
		for (i = 0; i < data->temp_num; i++) {
			u8 ch = data->temp_index[i];

			data->temp_in[i] = FUNC10(data,
							  FUNC3(ch));
			for (j = 0; j < 4; j++) {
				int reg = FUNC6(data, j, i);

				if (reg >= 0)
					data->temp[j][i] =
						FUNC9(data, reg);
			}
		}

		/* Measured fan speeds and limits */
		for (i = 0; i < FUNC0(data->rpm); i++) {
			if (!(data->have_fan & (1 << i)))
				continue;

			data->rpm[i] = FUNC10(data,
						FUNC2(i));
			data->fan_min[i] = FUNC10(data,
						FUNC1(i));
		}

		FUNC11(dev);

		data->last_updated = jiffies;
		data->valid = true;
	}

	FUNC8(&data->update_lock);
	return data;
}