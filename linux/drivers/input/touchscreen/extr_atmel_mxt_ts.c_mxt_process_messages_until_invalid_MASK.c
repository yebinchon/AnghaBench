#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mxt_data {int max_reportid; int update_input; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mxt_data*) ; 
 int FUNC2 (struct mxt_data*,int) ; 

__attribute__((used)) static int FUNC3(struct mxt_data *data)
{
	struct device *dev = &data->client->dev;
	int count, read;
	u8 tries = 2;

	count = data->max_reportid;

	/* Read messages until we force an invalid */
	do {
		read = FUNC2(data, count);
		if (read < count)
			return 0;
	} while (--tries);

	if (data->update_input) {
		FUNC1(data);
		data->update_input = false;
	}

	FUNC0(dev, "CHG pin isn't cleared\n");
	return -EBUSY;
}