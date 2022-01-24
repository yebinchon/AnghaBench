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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_client {int dummy; } ;
struct nvif_ioctl_wr_v0 {int size; int /*<<< orphan*/  data; int /*<<< orphan*/  addr; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_object*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (int,void**,int /*<<< orphan*/ *,struct nvif_ioctl_wr_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct nvkm_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvkm_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvkm_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct nvkm_client *client,
	      struct nvkm_object *object, void *data, u32 size)
{
	union {
		struct nvif_ioctl_wr_v0 v0;
	} *args = data;
	int ret = -ENOSYS;

	FUNC0(object, "wr size %d\n", size);
	if (!(ret = FUNC1(ret, &data, &size, args->v0, 0, 0, false))) {
		FUNC0(object,
			   "wr vers %d size %d addr %016llx data %08x\n",
			   args->v0.version, args->v0.size, args->v0.addr,
			   args->v0.data);
	} else
		return ret;

	switch (args->v0.size) {
	case 1: return FUNC2(object, args->v0.addr, args->v0.data);
	case 2: return FUNC3(object, args->v0.addr, args->v0.data);
	case 4: return FUNC4(object, args->v0.addr, args->v0.data);
	default:
		break;
	}

	return -EINVAL;
}