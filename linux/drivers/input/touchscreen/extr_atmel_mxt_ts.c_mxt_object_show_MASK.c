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
typedef  int u16 ;
struct mxt_object {int start_address; int /*<<< orphan*/  type; } ;
struct mxt_data {int /*<<< orphan*/  client; struct mxt_object* object_table; TYPE_1__* info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int object_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 struct mxt_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mxt_object*) ; 
 int FUNC5 (struct mxt_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int,struct mxt_object*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	struct mxt_data *data = FUNC1(dev);
	struct mxt_object *object;
	int count = 0;
	int i, j;
	int error;
	u8 *obuf;

	/* Pre-allocate buffer large enough to hold max sized object. */
	obuf = FUNC3(256, GFP_KERNEL);
	if (!obuf)
		return -ENOMEM;

	error = 0;
	for (i = 0; i < data->info->object_num; i++) {
		object = data->object_table + i;

		if (!FUNC6(object->type))
			continue;

		count += FUNC8(buf + count, PAGE_SIZE - count,
				"T%u:\n", object->type);

		for (j = 0; j < FUNC4(object); j++) {
			u16 size = FUNC5(object);
			u16 addr = object->start_address + j * size;

			error = FUNC0(data->client, addr, size, obuf);
			if (error)
				goto done;

			count = FUNC7(buf, count, object, j, obuf);
		}
	}

done:
	FUNC2(obuf);
	return error ?: count;
}