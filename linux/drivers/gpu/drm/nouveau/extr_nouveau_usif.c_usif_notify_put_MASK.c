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
struct usif_notify {int /*<<< orphan*/  p; int /*<<< orphan*/  enabled; } ;
struct nvif_ioctl_ntfy_put_v0 {int /*<<< orphan*/  index; } ;
struct nvif_client {int dummy; } ;
struct nouveau_cli {struct nvif_client base; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nouveau_cli* FUNC2 (struct drm_file*) ; 
 int FUNC3 (struct nvif_client*,void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,void**,int /*<<< orphan*/ *,struct nvif_ioctl_ntfy_put_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct usif_notify* FUNC5 (struct drm_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct drm_file *f, void *data, u32 size, void *argv, u32 argc)
{
	struct nouveau_cli *cli = FUNC2(f);
	struct nvif_client *client = &cli->base;
	union {
		struct nvif_ioctl_ntfy_put_v0 v0;
	} *args = data;
	struct usif_notify *ntfy;
	int ret = -ENOSYS;

	if (!(ret = FUNC4(ret, &data, &size, args->v0, 0, 0, true))) {
		if (!(ntfy = FUNC5(f, args->v0.index)))
			return -ENOENT;
	} else
		return ret;

	ret = FUNC3(client, argv, argc);
	if (ret == 0 && FUNC0(&ntfy->enabled, 0))
		FUNC1(ntfy->p);
	return ret;
}