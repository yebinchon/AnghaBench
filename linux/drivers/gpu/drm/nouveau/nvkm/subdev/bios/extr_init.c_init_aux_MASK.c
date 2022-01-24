#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_i2c_aux {int dummy; } ;
struct nvkm_i2c {int dummy; } ;
struct nvbios_init {TYPE_3__* outp; TYPE_2__* subdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  i2c_index; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct nvkm_i2c* i2c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct nvbios_init*) ; 
 struct nvkm_i2c_aux* FUNC2 (struct nvkm_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nvkm_i2c_aux *
FUNC3(struct nvbios_init *init)
{
	struct nvkm_i2c *i2c = init->subdev->device->i2c;
	if (!init->outp) {
		if (FUNC1(init))
			FUNC0("script needs output for aux\n");
		return NULL;
	}
	return FUNC2(i2c, init->outp->i2c_index);
}