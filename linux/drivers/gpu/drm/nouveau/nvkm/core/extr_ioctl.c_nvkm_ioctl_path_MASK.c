#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct nvkm_object {scalar_t__ route; int /*<<< orphan*/  token; } ;
struct nvkm_client {int /*<<< orphan*/  object; } ;
struct TYPE_3__ {scalar_t__ version; int (* func ) (struct nvkm_client*,struct nvkm_object*,void*,size_t) ;} ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int EACCES ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct nvkm_object*) ; 
 scalar_t__ NVIF_IOCTL_V0_OWNER_ANY ; 
 int FUNC2 (struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* nvkm_ioctl_v0 ; 
 struct nvkm_object* FUNC4 (struct nvkm_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nvkm_client*,struct nvkm_object*,void*,size_t) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_client *client, u64 handle, u32 type,
		void *data, u32 size, u8 owner, u8 *route, u64 *token)
{
	struct nvkm_object *object;
	int ret;

	object = FUNC4(client, handle, NULL);
	if (FUNC1(object)) {
		FUNC3(&client->object, "object not found\n");
		return FUNC2(object);
	}

	if (owner != NVIF_IOCTL_V0_OWNER_ANY && owner != object->route) {
		FUNC3(&client->object, "route != owner\n");
		return -EACCES;
	}
	*route = object->route;
	*token = object->token;

	if (ret = -EINVAL, type < FUNC0(nvkm_ioctl_v0)) {
		if (nvkm_ioctl_v0[type].version == 0)
			ret = nvkm_ioctl_v0[type].func(client, object, data, size);
	}

	return ret;
}