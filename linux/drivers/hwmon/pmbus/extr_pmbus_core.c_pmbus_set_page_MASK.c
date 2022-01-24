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
struct pmbus_data {int currpage; TYPE_1__* info; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int* func; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PMBUS_PAGE ; 
 int PMBUS_PAGE_VIRTUAL ; 
 struct pmbus_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct i2c_client *client, int page)
{
	struct pmbus_data *data = FUNC0(client);
	int rv;

	if (page < 0 || page == data->currpage)
		return 0;

	if (!(data->info->func[page] & PMBUS_PAGE_VIRTUAL)) {
		rv = FUNC2(client, PMBUS_PAGE, page);
		if (rv < 0)
			return rv;

		rv = FUNC1(client, PMBUS_PAGE);
		if (rv < 0)
			return rv;

		if (rv != page)
			return -EIO;
	}

	data->currpage = page;

	return 0;
}