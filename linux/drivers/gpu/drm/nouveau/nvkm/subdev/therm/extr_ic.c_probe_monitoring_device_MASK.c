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
struct nvbios_therm_sensor {int /*<<< orphan*/  offset_constant; } ;
struct nvkm_therm {struct i2c_client* ic; int /*<<< orphan*/  subdev; struct nvbios_therm_sensor bios_sensor; } ;
struct nvkm_i2c_bus {int /*<<< orphan*/  i2c; } ;
struct TYPE_3__ {int /*<<< orphan*/  driver; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct i2c_board_info {int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {scalar_t__ (* detect ) (struct i2c_client*,struct i2c_board_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_MODULE_PREFIX ; 
 struct i2c_client* FUNC0 (int /*<<< orphan*/ *,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct i2c_client*,struct i2c_board_info*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6(struct nvkm_i2c_bus *bus,
			struct i2c_board_info *info, void *data)
{
	struct nvkm_therm *therm = data;
	struct nvbios_therm_sensor *sensor = &therm->bios_sensor;
	struct i2c_client *client;

	FUNC3("%s%s", I2C_MODULE_PREFIX, info->type);

	client = FUNC0(&bus->i2c, info);
	if (!client)
		return false;

	if (!client->dev.driver ||
	    FUNC5(client->dev.driver)->detect(client, info)) {
		FUNC1(client);
		return false;
	}

	FUNC2(&therm->subdev,
		   "Found an %s at address 0x%x (controlled by lm_sensors, "
		   "temp offset %+i C)\n",
		   info->type, info->addr, sensor->offset_constant);
	therm->ic = client;
	return true;
}