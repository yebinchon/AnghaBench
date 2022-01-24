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
struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_bus {int /*<<< orphan*/  mutex; scalar_t__ enabled; struct nvkm_i2c_pad* pad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_bus*,char*) ; 
 int EIO ; 
 int /*<<< orphan*/  NVKM_I2C_PAD_I2C ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nvkm_i2c_pad*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct nvkm_i2c_bus *bus)
{
	struct nvkm_i2c_pad *pad = bus->pad;
	int ret;

	FUNC0(bus, "acquire");
	FUNC1(&bus->mutex);

	if (bus->enabled)
		ret = FUNC3(pad, NVKM_I2C_PAD_I2C);
	else
		ret = -EIO;

	if (ret)
		FUNC2(&bus->mutex);
	return ret;
}