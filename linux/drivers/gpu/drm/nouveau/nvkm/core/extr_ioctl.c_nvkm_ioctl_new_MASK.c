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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__ oclass; } ;
struct nvkm_oclass {int (* ctor ) (struct nvkm_oclass*,void*,int /*<<< orphan*/ ,struct nvkm_object**) ;scalar_t__ engine; struct nvkm_object* parent; struct nvkm_client* client; int /*<<< orphan*/  object; int /*<<< orphan*/  token; int /*<<< orphan*/  route; int /*<<< orphan*/  handle; TYPE_1__ base; } ;
struct nvkm_object {int /*<<< orphan*/  tree; int /*<<< orphan*/  head; TYPE_2__* func; } ;
struct nvkm_client {struct nvkm_object* data; } ;
struct nvif_ioctl_new_v0 {scalar_t__ oclass; int /*<<< orphan*/  object; int /*<<< orphan*/  token; int /*<<< orphan*/  route; int /*<<< orphan*/  handle; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  oclass ;
struct TYPE_4__ {int (* sclass ) (struct nvkm_object*,int /*<<< orphan*/ ,struct nvkm_oclass*) ;} ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOSYS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_oclass*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_object*,char*,...) ; 
 int FUNC5 (int,void**,int /*<<< orphan*/ *,struct nvif_ioctl_new_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_object**) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_object*,int) ; 
 int FUNC10 (struct nvkm_object*) ; 
 scalar_t__ FUNC11 (struct nvkm_object*) ; 
 int FUNC12 (struct nvkm_object*,int /*<<< orphan*/ ,struct nvkm_oclass*) ; 
 int FUNC13 (struct nvkm_oclass*,void*,int /*<<< orphan*/ ,struct nvkm_object**) ; 

__attribute__((used)) static int
FUNC14(struct nvkm_client *client,
	       struct nvkm_object *parent, void *data, u32 size)
{
	union {
		struct nvif_ioctl_new_v0 v0;
	} *args = data;
	struct nvkm_object *object = NULL;
	struct nvkm_oclass oclass;
	int ret = -ENOSYS, i = 0;

	FUNC4(parent, "new size %d\n", size);
	if (!(ret = FUNC5(ret, &data, &size, args->v0, 0, 0, true))) {
		FUNC4(parent, "new vers %d handle %08x class %08x "
				   "route %02x token %llx object %016llx\n",
			   args->v0.version, args->v0.handle, args->v0.oclass,
			   args->v0.route, args->v0.token, args->v0.object);
	} else
		return ret;

	if (!parent->func->sclass) {
		FUNC4(parent, "cannot have children\n");
		return -EINVAL;
	}

	do {
		FUNC3(&oclass, 0x00, sizeof(oclass));
		oclass.handle = args->v0.handle;
		oclass.route  = args->v0.route;
		oclass.token  = args->v0.token;
		oclass.object = args->v0.object;
		oclass.client = client;
		oclass.parent = parent;
		ret = parent->func->sclass(parent, i++, &oclass);
		if (ret)
			return ret;
	} while (oclass.base.oclass != args->v0.oclass);

	if (oclass.engine) {
		oclass.engine = FUNC6(oclass.engine);
		if (FUNC0(oclass.engine))
			return FUNC1(oclass.engine);
	}

	ret = oclass.ctor(&oclass, data, size, &object);
	FUNC7(&oclass.engine);
	if (ret == 0) {
		ret = FUNC10(object);
		if (ret == 0) {
			FUNC2(&object->head, &parent->tree);
			if (FUNC11(object)) {
				client->data = object;
				return 0;
			}
			ret = -EEXIST;
		}
		FUNC9(object, false);
	}

	FUNC8(&object);
	return ret;
}