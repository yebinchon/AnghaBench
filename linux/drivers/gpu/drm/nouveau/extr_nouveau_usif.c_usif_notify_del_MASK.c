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
struct usif_notify {int dummy; } ;
struct nvif_ioctl_ntfy_del_v0 {int /*<<< orphan*/  index; } ;
struct nvif_client {int dummy; } ;
struct nouveau_cli {struct nvif_client base; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOSYS ; 
 struct nouveau_cli* FUNC0 (struct drm_file*) ; 
 int FUNC1 (struct nvif_client*,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,void**,int /*<<< orphan*/ *,struct nvif_ioctl_ntfy_del_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usif_notify*) ; 
 struct usif_notify* FUNC4 (struct drm_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct drm_file *f, void *data, u32 size, void *argv, u32 argc)
{
	struct nouveau_cli *cli = FUNC0(f);
	struct nvif_client *client = &cli->base;
	union {
		struct nvif_ioctl_ntfy_del_v0 v0;
	} *args = data;
	struct usif_notify *ntfy;
	int ret = -ENOSYS;

	if (!(ret = FUNC2(ret, &data, &size, args->v0, 0, 0, true))) {
		if (!(ntfy = FUNC4(f, args->v0.index)))
			return -ENOENT;
	} else
		return ret;

	ret = FUNC1(client, argv, argc);
	if (ret == 0)
		FUNC3(ntfy);
	return ret;
}