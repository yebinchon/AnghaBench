#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct nvkm_ramht_data {int chid; int handle; TYPE_3__* inst; } ;
struct nvkm_ramht {int /*<<< orphan*/  gpuobj; TYPE_1__* device; int /*<<< orphan*/  parent; struct nvkm_ramht_data* data; } ;
struct nvkm_object {int dummy; } ;
struct TYPE_7__ {int addr; TYPE_2__* node; } ;
struct TYPE_6__ {int offset; } ;
struct TYPE_5__ {scalar_t__ card_type; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ NV_50 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvkm_object*,int /*<<< orphan*/ ,int,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nvkm_ramht *ramht, int co, struct nvkm_object *object,
		  int chid, int addr, u32 handle, u32 context)
{
	struct nvkm_ramht_data *data = &ramht->data[co];
	u64 inst = 0x00000040; /* just non-zero for <=g8x fifo ramht */
	int ret;

	FUNC1(&data->inst);
	data->chid = chid;
	data->handle = handle;

	if (object) {
		ret = FUNC3(object, ramht->parent, 16, &data->inst);
		if (ret) {
			if (ret != -ENODEV) {
				data->chid = -1;
				return ret;
			}
			data->inst = NULL;
		}

		if (data->inst) {
			if (ramht->device->card_type >= NV_50)
				inst = data->inst->node->offset;
			else
				inst = data->inst->addr;
		}

		if (addr < 0) context |= inst << -addr;
		else          context |= inst >>  addr;
	}

	FUNC2(ramht->gpuobj);
	FUNC4(ramht->gpuobj, (co << 3) + 0, handle);
	FUNC4(ramht->gpuobj, (co << 3) + 4, context);
	FUNC0(ramht->gpuobj);
	return co + 1;
}