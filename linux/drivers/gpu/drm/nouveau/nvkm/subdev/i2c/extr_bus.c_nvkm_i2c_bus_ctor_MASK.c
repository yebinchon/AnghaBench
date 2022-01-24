#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nvkm_i2c_pad {TYPE_2__* i2c; } ;
struct nvkm_i2c_bus_func {scalar_t__ drive_scl; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct TYPE_9__ {int /*<<< orphan*/ * algo; struct i2c_algo_bit_data* algo_data; TYPE_3__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct nvkm_i2c_bus {int id; TYPE_4__ i2c; struct nvkm_i2c_bus_func const* func; int /*<<< orphan*/  head; int /*<<< orphan*/  mutex; struct nvkm_i2c_pad* pad; } ;
struct nvkm_device {int /*<<< orphan*/  cfgopt; int /*<<< orphan*/  dev; } ;
struct i2c_algo_bit_data {int udelay; int /*<<< orphan*/  getsda; int /*<<< orphan*/  getscl; int /*<<< orphan*/  setsda; int /*<<< orphan*/  setscl; int /*<<< orphan*/  post_xfer; int /*<<< orphan*/  pre_xfer; struct nvkm_i2c_bus* data; int /*<<< orphan*/  timeout; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {int /*<<< orphan*/  bus; TYPE_1__ subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_bus*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 struct i2c_algo_bit_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  nvkm_i2c_bus_algo ; 
 int /*<<< orphan*/  nvkm_i2c_bus_getscl ; 
 int /*<<< orphan*/  nvkm_i2c_bus_getsda ; 
 int /*<<< orphan*/  nvkm_i2c_bus_post_xfer ; 
 int /*<<< orphan*/  nvkm_i2c_bus_pre_xfer ; 
 int /*<<< orphan*/  nvkm_i2c_bus_setscl ; 
 int /*<<< orphan*/  nvkm_i2c_bus_setsda ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int
FUNC10(const struct nvkm_i2c_bus_func *func,
		  struct nvkm_i2c_pad *pad, int id,
		  struct nvkm_i2c_bus *bus)
{
	struct nvkm_device *device = pad->i2c->subdev.device;
	struct i2c_algo_bit_data *bit;
#ifndef CONFIG_NOUVEAU_I2C_INTERNAL_DEFAULT
	const bool internal = false;
#else
	const bool internal = true;
#endif
	int ret;

	bus->func = func;
	bus->pad = pad;
	bus->id = id;
	FUNC6(&bus->mutex);
	FUNC5(&bus->head, &pad->i2c->bus);
	FUNC0(bus, "ctor");

	FUNC8(bus->i2c.name, sizeof(bus->i2c.name), "nvkm-%s-bus-%04x",
		 FUNC1(device->dev), id);
	bus->i2c.owner = THIS_MODULE;
	bus->i2c.dev.parent = device->dev;

	if ( bus->func->drive_scl &&
	    !FUNC7(device->cfgopt, "NvI2C", internal)) {
		if (!(bit = FUNC4(sizeof(*bit), GFP_KERNEL)))
			return -ENOMEM;
		bit->udelay = 10;
		bit->timeout = FUNC9(2200);
		bit->data = bus;
		bit->pre_xfer = nvkm_i2c_bus_pre_xfer;
		bit->post_xfer = nvkm_i2c_bus_post_xfer;
		bit->setscl = nvkm_i2c_bus_setscl;
		bit->setsda = nvkm_i2c_bus_setsda;
		bit->getscl = nvkm_i2c_bus_getscl;
		bit->getsda = nvkm_i2c_bus_getsda;
		bus->i2c.algo_data = bit;
		ret = FUNC3(&bus->i2c);
	} else {
		bus->i2c.algo = &nvkm_i2c_bus_algo;
		ret = FUNC2(&bus->i2c);
	}

	return ret;
}