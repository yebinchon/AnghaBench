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
struct nvkm_i2c_pad_func {int dummy; } ;
struct nvkm_i2c_pad {int id; int /*<<< orphan*/  head; int /*<<< orphan*/  mutex; int /*<<< orphan*/  mode; struct nvkm_i2c* i2c; struct nvkm_i2c_pad_func const* func; } ;
struct nvkm_i2c {int /*<<< orphan*/  pad; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_I2C_PAD_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_pad*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(const struct nvkm_i2c_pad_func *func, struct nvkm_i2c *i2c,
		  int id, struct nvkm_i2c_pad *pad)
{
	pad->func = func;
	pad->i2c = i2c;
	pad->id = id;
	pad->mode = NVKM_I2C_PAD_OFF;
	FUNC2(&pad->mutex);
	FUNC1(&pad->head, &i2c->pad);
	FUNC0(pad, "ctor");
}