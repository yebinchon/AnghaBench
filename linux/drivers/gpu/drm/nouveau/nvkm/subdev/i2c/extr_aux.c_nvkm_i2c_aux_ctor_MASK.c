#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nvkm_i2c_pad {TYPE_2__* i2c; } ;
struct nvkm_i2c_aux_func {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {int /*<<< orphan*/ * algo; TYPE_3__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct nvkm_i2c_aux {int id; TYPE_4__ i2c; int /*<<< orphan*/  head; int /*<<< orphan*/  mutex; struct nvkm_i2c_pad* pad; struct nvkm_i2c_aux_func const* func; } ;
struct nvkm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  aux; TYPE_1__ subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_aux*,char*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvkm_i2c_aux_i2c_algo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*,int) ; 

int
FUNC6(const struct nvkm_i2c_aux_func *func,
		  struct nvkm_i2c_pad *pad, int id,
		  struct nvkm_i2c_aux *aux)
{
	struct nvkm_device *device = pad->i2c->subdev.device;

	aux->func = func;
	aux->pad = pad;
	aux->id = id;
	FUNC4(&aux->mutex);
	FUNC3(&aux->head, &pad->i2c->aux);
	FUNC0(aux, "ctor");

	FUNC5(aux->i2c.name, sizeof(aux->i2c.name), "nvkm-%s-aux-%04x",
		 FUNC1(device->dev), id);
	aux->i2c.owner = THIS_MODULE;
	aux->i2c.dev.parent = device->dev;
	aux->i2c.algo = &nvkm_i2c_aux_i2c_algo;
	return FUNC2(&aux->i2c);
}