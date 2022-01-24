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
struct via686a_data {int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int* temp; int* temp_over; int* temp_hyst; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  VIA686A_REG_ALARM1 ; 
 int /*<<< orphan*/  VIA686A_REG_ALARM2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * VIA686A_REG_TEMP ; 
 int /*<<< orphan*/ * VIA686A_REG_TEMP_HYST ; 
 int /*<<< orphan*/  VIA686A_REG_TEMP_LOW1 ; 
 int /*<<< orphan*/  VIA686A_REG_TEMP_LOW23 ; 
 int /*<<< orphan*/ * VIA686A_REG_TEMP_OVER ; 
 struct via686a_data* FUNC5 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int FUNC9 (struct via686a_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct via686a_data*) ; 

__attribute__((used)) static struct via686a_data *FUNC11(struct device *dev)
{
	struct via686a_data *data = FUNC5(dev);
	int i;

	FUNC6(&data->update_lock);

	if (FUNC8(jiffies, data->last_updated + HZ + HZ / 2)
	    || !data->valid) {
		for (i = 0; i <= 4; i++) {
			data->in[i] =
			    FUNC9(data, FUNC2(i));
			data->in_min[i] = FUNC9(data,
							     FUNC4
							     (i));
			data->in_max[i] =
			    FUNC9(data, FUNC3(i));
		}
		for (i = 1; i <= 2; i++) {
			data->fan[i - 1] =
			    FUNC9(data, FUNC0(i));
			data->fan_min[i - 1] = FUNC9(data,
						     FUNC1(i));
		}
		for (i = 0; i <= 2; i++) {
			data->temp[i] = FUNC9(data,
						 VIA686A_REG_TEMP[i]) << 2;
			data->temp_over[i] =
			    FUNC9(data,
					       VIA686A_REG_TEMP_OVER[i]);
			data->temp_hyst[i] =
			    FUNC9(data,
					       VIA686A_REG_TEMP_HYST[i]);
		}
		/*
		 * add in lower 2 bits
		 * temp1 uses bits 7-6 of VIA686A_REG_TEMP_LOW1
		 * temp2 uses bits 5-4 of VIA686A_REG_TEMP_LOW23
		 * temp3 uses bits 7-6 of VIA686A_REG_TEMP_LOW23
		 */
		data->temp[0] |= (FUNC9(data,
						     VIA686A_REG_TEMP_LOW1)
				  & 0xc0) >> 6;
		data->temp[1] |=
		    (FUNC9(data, VIA686A_REG_TEMP_LOW23) &
		     0x30) >> 4;
		data->temp[2] |=
		    (FUNC9(data, VIA686A_REG_TEMP_LOW23) &
		     0xc0) >> 6;

		FUNC10(data);
		data->alarms =
		    FUNC9(data,
				       VIA686A_REG_ALARM1) |
		    (FUNC9(data, VIA686A_REG_ALARM2) << 8);
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC7(&data->update_lock);

	return data;
}