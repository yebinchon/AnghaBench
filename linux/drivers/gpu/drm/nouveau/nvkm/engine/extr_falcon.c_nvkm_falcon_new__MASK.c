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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct nvkm_falcon_func {TYPE_4__ data; TYPE_2__ code; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct nvkm_falcon {struct nvkm_engine engine; TYPE_3__ data; TYPE_1__ code; int /*<<< orphan*/  addr; struct nvkm_falcon_func const* func; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvkm_falcon* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nvkm_device*,int,int,struct nvkm_engine*) ; 
 int /*<<< orphan*/  nvkm_falcon ; 

int
FUNC2(const struct nvkm_falcon_func *func,
		 struct nvkm_device *device, int index, bool enable,
		 u32 addr, struct nvkm_engine **pengine)
{
	struct nvkm_falcon *falcon;

	if (!(falcon = FUNC0(sizeof(*falcon), GFP_KERNEL)))
		return -ENOMEM;
	falcon->func = func;
	falcon->addr = addr;
	falcon->code.data = func->code.data;
	falcon->code.size = func->code.size;
	falcon->data.data = func->data.data;
	falcon->data.size = func->data.size;
	*pengine = &falcon->engine;

	return FUNC1(&nvkm_falcon, device, index,
				enable, &falcon->engine);
}