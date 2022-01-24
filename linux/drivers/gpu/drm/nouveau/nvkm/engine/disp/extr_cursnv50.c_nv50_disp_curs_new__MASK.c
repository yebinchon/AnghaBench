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
struct nvkm_oclass {struct nvkm_object* parent; } ;
struct nvkm_object {int dummy; } ;
struct nv50_disp_cursor_v0 {int head; int /*<<< orphan*/  version; } ;
struct nv50_disp_chan_func {int dummy; } ;
struct nv50_disp {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int FUNC0 (struct nv50_disp_chan_func const*,int /*<<< orphan*/ *,struct nv50_disp*,int,int,int,struct nvkm_oclass const*,struct nvkm_object**) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_object*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (int,void**,int /*<<< orphan*/ *,struct nv50_disp_cursor_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

int
FUNC4(const struct nv50_disp_chan_func *func,
		    struct nv50_disp *disp, int ctrl, int user,
		    const struct nvkm_oclass *oclass, void *argv, u32 argc,
		    struct nvkm_object **pobject)
{
	union {
		struct nv50_disp_cursor_v0 v0;
	} *args = argv;
	struct nvkm_object *parent = oclass->parent;
	int head, ret = -ENOSYS;

	FUNC1(parent, "create disp cursor size %d\n", argc);
	if (!(ret = FUNC2(ret, &argv, &argc, args->v0, 0, 0, false))) {
		FUNC1(parent, "create disp cursor vers %d head %d\n",
			   args->v0.version, args->v0.head);
		if (!FUNC3(&disp->base, args->v0.head))
			return -EINVAL;
		head = args->v0.head;
	} else
		return ret;

	return FUNC0(func, NULL, disp, ctrl + head, user + head,
				   head, oclass, pobject);
}