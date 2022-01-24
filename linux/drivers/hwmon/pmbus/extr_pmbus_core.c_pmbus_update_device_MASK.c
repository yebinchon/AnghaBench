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
struct pmbus_sensor {int /*<<< orphan*/  reg; int /*<<< orphan*/  page; int /*<<< orphan*/  data; scalar_t__ update; struct pmbus_sensor* next; } ;
struct pmbus_driver_info {int pages; int* func; } ;
struct pmbus_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct pmbus_sensor* sensors; void** status; void* (* read_status ) (struct i2c_client*,int) ;struct pmbus_driver_info* info; } ;
struct i2c_client {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct _pmbus_status {int func; int base; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (struct _pmbus_status*) ; 
 scalar_t__ HZ ; 
 int PB_STATUS_BASE ; 
 size_t PB_STATUS_INPUT_BASE ; 
 size_t PB_STATUS_VMON_BASE ; 
 int PMBUS_HAVE_STATUS_INPUT ; 
 int PMBUS_HAVE_STATUS_VMON ; 
 int /*<<< orphan*/  PMBUS_STATUS_INPUT ; 
 int /*<<< orphan*/  PMBUS_VIRT_STATUS_VMON ; 
 void* FUNC1 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pmbus_data* FUNC3 (struct i2c_client*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*) ; 
 struct _pmbus_status* pmbus_status ; 
 void* FUNC7 (struct i2c_client*,int) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pmbus_data *FUNC10(struct device *dev)
{
	struct i2c_client *client = FUNC9(dev->parent);
	struct pmbus_data *data = FUNC3(client);
	const struct pmbus_driver_info *info = data->info;
	struct pmbus_sensor *sensor;

	FUNC4(&data->update_lock);
	if (FUNC8(jiffies, data->last_updated + HZ) || !data->valid) {
		int i, j;

		for (i = 0; i < info->pages; i++) {
			data->status[PB_STATUS_BASE + i]
			    = data->read_status(client, i);
			for (j = 0; j < FUNC0(pmbus_status); j++) {
				struct _pmbus_status *s = &pmbus_status[j];

				if (!(info->func[i] & s->func))
					continue;
				data->status[s->base + i]
					= FUNC1(client, i,
								s->reg);
			}
		}

		if (info->func[0] & PMBUS_HAVE_STATUS_INPUT)
			data->status[PB_STATUS_INPUT_BASE]
			  = FUNC1(client, 0,
						  PMBUS_STATUS_INPUT);

		if (info->func[0] & PMBUS_HAVE_STATUS_VMON)
			data->status[PB_STATUS_VMON_BASE]
			  = FUNC1(client, 0,
						  PMBUS_VIRT_STATUS_VMON);

		for (sensor = data->sensors; sensor; sensor = sensor->next) {
			if (!data->valid || sensor->update)
				sensor->data
				    = FUNC2(client,
							    sensor->page,
							    sensor->reg);
		}
		FUNC6(client);
		data->last_updated = jiffies;
		data->valid = 1;
	}
	FUNC5(&data->update_lock);
	return data;
}