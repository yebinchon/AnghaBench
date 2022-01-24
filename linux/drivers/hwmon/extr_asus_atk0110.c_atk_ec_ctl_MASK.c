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
struct atk_acpi_ret_buffer {scalar_t__ flags; } ;
struct atk_acpi_input_buf {int param1; scalar_t__ param2; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  ATK_EC_ID ; 
 int EIO ; 
 scalar_t__ FUNC1 (union acpi_object*) ; 
 int FUNC2 (union acpi_object*) ; 
 union acpi_object* FUNC3 (struct atk_data*,struct atk_acpi_input_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct atk_data *data, int enable)
{
	struct device *dev = &data->acpi_dev->dev;
	union acpi_object *obj;
	struct atk_acpi_input_buf sitm;
	struct atk_acpi_ret_buffer *ec_ret;
	int err = 0;

	sitm.id = ATK_EC_ID;
	sitm.param1 = enable;
	sitm.param2 = 0;

	obj = FUNC3(data, &sitm);
	if (FUNC1(obj)) {
		FUNC4(dev, "Failed to %sable the EC\n",
				enable ? "en" : "dis");
		return FUNC2(obj);
	}
	ec_ret = (struct atk_acpi_ret_buffer *)obj->buffer.pointer;
	if (ec_ret->flags == 0) {
		FUNC4(dev, "Failed to %sable the EC\n",
				enable ? "en" : "dis");
		err = -EIO;
	} else {
		FUNC5(dev, "EC %sabled\n",
				enable ? "en" : "dis");
	}

	FUNC0(obj);
	return err;
}