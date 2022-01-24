#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct asc7621_data {int /*<<< orphan*/  class_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_5__ {TYPE_1__ sda; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 TYPE_2__* asc7621_params ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct asc7621_data* FUNC3 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct asc7621_data *data = FUNC3(client);
	int i;

	FUNC2(data->class_dev);

	for (i = 0; i < FUNC0(asc7621_params); i++) {
		FUNC1(&client->dev,
				   &(asc7621_params[i].sda.dev_attr));
	}

	return 0;
}