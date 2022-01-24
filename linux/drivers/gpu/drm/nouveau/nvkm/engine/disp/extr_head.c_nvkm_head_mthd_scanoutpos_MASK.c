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
struct nvkm_object {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hblanke; int /*<<< orphan*/  hblanks; int /*<<< orphan*/  htotal; int /*<<< orphan*/  vblanke; int /*<<< orphan*/  vblanks; int /*<<< orphan*/  vtotal; } ;
struct nvkm_head {TYPE_1__* func; TYPE_2__ arm; } ;
struct nv04_disp_scanoutpos_v0 {void** time; int /*<<< orphan*/  vline; int /*<<< orphan*/  hline; int /*<<< orphan*/  htotal; int /*<<< orphan*/  vtotal; int /*<<< orphan*/  hblanke; int /*<<< orphan*/  hblanks; int /*<<< orphan*/  vblanke; int /*<<< orphan*/  vblanks; int /*<<< orphan*/  version; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* rgpos ) (struct nvkm_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* state ) (struct nvkm_head*,TYPE_2__*) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_object*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,void**,int /*<<< orphan*/ *,struct nv04_disp_scanoutpos_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_head*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC6(struct nvkm_object *object,
			  struct nvkm_head *head, void *data, u32 size)
{
	union {
		struct nv04_disp_scanoutpos_v0 v0;
	} *args = data;
	int ret = -ENOSYS;

	FUNC2(object, "head scanoutpos size %d\n", size);
	if (!(ret = FUNC3(ret, &data, &size, args->v0, 0, 0, false))) {
		FUNC2(object, "head scanoutpos vers %d\n",
			   args->v0.version);

		head->func->state(head, &head->arm);
		args->v0.vtotal  = head->arm.vtotal;
		args->v0.vblanks = head->arm.vblanks;
		args->v0.vblanke = head->arm.vblanke;
		args->v0.htotal  = head->arm.htotal;
		args->v0.hblanks = head->arm.hblanks;
		args->v0.hblanke = head->arm.hblanke;

		/* We don't support reading htotal/vtotal on pre-NV50 VGA,
		 * so we have to give up and trigger the timestamping
		 * fallback in the drm core.
		 */
		if (!args->v0.vtotal || !args->v0.htotal)
			return -ENOTSUPP;

		args->v0.time[0] = FUNC1(FUNC0());
		head->func->rgpos(head, &args->v0.hline, &args->v0.vline);
		args->v0.time[1] = FUNC1(FUNC0());
	} else
		return ret;

	return 0;
}