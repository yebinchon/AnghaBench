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
struct usif_object {unsigned long token; int /*<<< orphan*/  route; int /*<<< orphan*/  head; } ;
struct nvif_ioctl_new_v0 {unsigned long token; int /*<<< orphan*/  route; } ;
struct nvif_client {int dummy; } ;
struct nouveau_cli {int /*<<< orphan*/  objects; struct nvif_client base; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVDRM_OBJECT_USIF ; 
 struct usif_object* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nouveau_cli* FUNC2 (struct drm_file*) ; 
 int FUNC3 (struct nvif_client*,void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,void**,int /*<<< orphan*/ *,struct nvif_ioctl_new_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usif_object*) ; 

__attribute__((used)) static int
FUNC6(struct drm_file *f, void *data, u32 size, void *argv, u32 argc)
{
	struct nouveau_cli *cli = FUNC2(f);
	struct nvif_client *client = &cli->base;
	union {
		struct nvif_ioctl_new_v0 v0;
	} *args = data;
	struct usif_object *object;
	int ret = -ENOSYS;

	if (!(object = FUNC0(sizeof(*object), GFP_KERNEL)))
		return -ENOMEM;
	FUNC1(&object->head, &cli->objects);

	if (!(ret = FUNC4(ret, &data, &size, args->v0, 0, 0, true))) {
		object->route = args->v0.route;
		object->token = args->v0.token;
		args->v0.route = NVDRM_OBJECT_USIF;
		args->v0.token = (unsigned long)(void *)object;
		ret = FUNC3(client, argv, argc);
		args->v0.token = object->token;
		args->v0.route = object->route;
	}

	if (ret)
		FUNC5(object);
	return ret;
}