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
struct sis5595_data {int valid; int maxins; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int temp; int temp_over; int temp_hyst; int* fan_div; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SIS5595_REG_ALARM1 ; 
 int /*<<< orphan*/  SIS5595_REG_ALARM2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SIS5595_REG_FANDIV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  SIS5595_REG_TEMP ; 
 int /*<<< orphan*/  SIS5595_REG_TEMP_HYST ; 
 int /*<<< orphan*/  SIS5595_REG_TEMP_OVER ; 
 struct sis5595_data* FUNC5 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sis5595_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct sis5595_data *FUNC10(struct device *dev)
{
	struct sis5595_data *data = FUNC5(dev);
	int i;

	FUNC6(&data->update_lock);

	if (FUNC9(jiffies, data->last_updated + HZ + HZ / 2)
	    || !data->valid) {

		for (i = 0; i <= data->maxins; i++) {
			data->in[i] =
			    FUNC8(data, FUNC2(i));
			data->in_min[i] =
			    FUNC8(data,
					       FUNC4(i));
			data->in_max[i] =
			    FUNC8(data,
					       FUNC3(i));
		}
		for (i = 0; i < 2; i++) {
			data->fan[i] =
			    FUNC8(data, FUNC0(i));
			data->fan_min[i] =
			    FUNC8(data,
					       FUNC1(i));
		}
		if (data->maxins == 3) {
			data->temp =
			    FUNC8(data, SIS5595_REG_TEMP);
			data->temp_over =
			    FUNC8(data, SIS5595_REG_TEMP_OVER);
			data->temp_hyst =
			    FUNC8(data, SIS5595_REG_TEMP_HYST);
		}
		i = FUNC8(data, SIS5595_REG_FANDIV);
		data->fan_div[0] = (i >> 4) & 0x03;
		data->fan_div[1] = i >> 6;
		data->alarms =
		    FUNC8(data, SIS5595_REG_ALARM1) |
		    (FUNC8(data, SIS5595_REG_ALARM2) << 8);
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC7(&data->update_lock);

	return data;
}