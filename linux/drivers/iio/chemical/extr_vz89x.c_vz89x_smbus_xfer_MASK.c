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
typedef  int /*<<< orphan*/  u8 ;
struct vz89x_data {int* buffer; TYPE_1__* chip; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int read_size; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct vz89x_data *data, u8 cmd)
{
	struct i2c_client *client = data->client;
	int ret;
	int i;

	ret = FUNC1(client, cmd, 0);
	if (ret < 0)
		return ret;

	for (i = 0; i < data->chip->read_size; i++) {
		ret = FUNC0(client);
		if (ret < 0)
			return ret;
		data->buffer[i] = ret;
	}

	return 0;
}