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
struct TYPE_3__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
struct device {int dummy; } ;
struct atk_data {TYPE_2__* acpi_dev; } ;
struct atk_acpi_ret_buffer {scalar_t__ flags; scalar_t__ value; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  ATK_EC_ID ; 
 int EIO ; 
 scalar_t__ FUNC1 (union acpi_object*) ; 
 int FUNC2 (union acpi_object*) ; 
 union acpi_object* FUNC3 (struct atk_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 

__attribute__((used)) static int FUNC6(struct atk_data *data)
{
	struct device *dev = &data->acpi_dev->dev;
	union acpi_object *obj;
	struct atk_acpi_ret_buffer *buf;
	int err;

	obj = FUNC3(data, ATK_EC_ID);
	if (FUNC1(obj)) {
		FUNC5(dev, "Unable to query EC status\n");
		return FUNC2(obj);
	}
	buf = (struct atk_acpi_ret_buffer *)obj->buffer.pointer;

	if (buf->flags == 0) {
		FUNC5(dev, "Unable to query EC status\n");
		err = -EIO;
	} else {
		err = (buf->value != 0);
		FUNC4(dev, "EC is %sabled\n",
				err ? "en" : "dis");
	}

	FUNC0(obj);
	return err;
}