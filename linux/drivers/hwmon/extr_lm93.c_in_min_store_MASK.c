#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lm93_data {int* vccp_limits; int /*<<< orphan*/  update_lock; TYPE_1__* block7; int /*<<< orphan*/ * vid; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int min; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,int /*<<< orphan*/ ,long) ; 
 int FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 struct lm93_data* FUNC5 (struct device*) ; 
 int FUNC6 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (struct device_attribute*) ; 
 scalar_t__* vccp_limit_type ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	int nr = (FUNC10(attr))->index;
	struct lm93_data *data = FUNC5(dev);
	struct i2c_client *client = data->client;
	int vccp = nr - 6;
	long vid;
	unsigned long val;
	int err;

	err = FUNC6(buf, 10, &val);
	if (err)
		return err;

	FUNC8(&data->update_lock);
	if ((nr == 6 || nr == 7) && vccp_limit_type[vccp]) {
		vid = FUNC4(data->vid[vccp]);
		data->vccp_limits[vccp] = (data->vccp_limits[vccp] & 0xf0) |
				FUNC0(val, 0, vid);
		FUNC7(client, FUNC3(vccp),
				data->vccp_limits[vccp]);
	} else {
		data->block7[nr].min = FUNC1(nr, val);
		FUNC7(client, FUNC2(nr),
				data->block7[nr].min);
	}
	FUNC9(&data->update_lock);
	return count;
}