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
struct pmbus_data {int (* read_status ) (struct i2c_client*,int) ;int flags; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int PB_CML_FAULT_INVALID_COMMAND ; 
 int PB_STATUS_CML ; 
 int PMBUS_SKIP_STATUS_CHECK ; 
 int /*<<< orphan*/  PMBUS_STATUS_CML ; 
 int FUNC0 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 struct pmbus_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int) ; 
 int FUNC3 (struct i2c_client*,int) ; 

__attribute__((used)) static bool FUNC4(struct i2c_client *client, int page)
{
	int status;
	struct pmbus_data *data = FUNC1(client);

	status = data->read_status(client, page);
	if (status >= 0 && !(data->flags & PMBUS_SKIP_STATUS_CHECK) &&
	    (status & PB_STATUS_CML)) {
		status = FUNC0(client, -1, PMBUS_STATUS_CML);
		if (status < 0 || (status & PB_CML_FAULT_INVALID_COMMAND))
			status = -EIO;
	}

	FUNC2(client, -1);
	return status >= 0;
}