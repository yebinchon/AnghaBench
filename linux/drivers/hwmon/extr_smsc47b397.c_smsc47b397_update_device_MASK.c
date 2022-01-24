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
struct smsc47b397_data {int valid; int* temp; int* fan; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct smsc47b397_data* FUNC4 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct smsc47b397_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct smsc47b397_data *FUNC9(struct device *dev)
{
	struct smsc47b397_data *data = FUNC4(dev);
	int i;

	FUNC5(&data->update_lock);

	if (FUNC8(jiffies, data->last_updated + HZ) || !data->valid) {
		FUNC3(dev, "starting device update...\n");

		/* 4 temperature inputs, 4 fan inputs */
		for (i = 0; i < 4; i++) {
			data->temp[i] = FUNC7(data,
					FUNC2(i));

			/* must read LSB first */
			data->fan[i]  = FUNC7(data,
					FUNC0(i));
			data->fan[i] |= FUNC7(data,
					FUNC1(i)) << 8;
		}

		data->last_updated = jiffies;
		data->valid = 1;

		FUNC3(dev, "... device update complete\n");
	}

	FUNC6(&data->update_lock);

	return data;
}