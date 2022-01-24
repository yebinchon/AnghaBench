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
struct nvkm_subdev {int dummy; } ;
struct nvkm_domain {size_t name; } ;
struct TYPE_5__ {int* domain; } ;
struct TYPE_7__ {int pstate; TYPE_1__ base; int /*<<< orphan*/  list; } ;
struct nvkm_clk {int pstate; int temp; scalar_t__ dstate; scalar_t__ state_nr; scalar_t__ astate; TYPE_2__* func; TYPE_3__ bstate; struct nvkm_domain* domains; } ;
struct TYPE_6__ {int (* init ) (struct nvkm_clk*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int) ; 
 size_t nv_clk_src_max ; 
 struct nvkm_clk* FUNC2 (struct nvkm_subdev*) ; 
 int FUNC3 (struct nvkm_clk*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_subdev*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_clk*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_clk*,TYPE_3__*) ; 
 int FUNC7 (struct nvkm_clk*) ; 

__attribute__((used)) static int
FUNC8(struct nvkm_subdev *subdev)
{
	struct nvkm_clk *clk = FUNC2(subdev);
	const struct nvkm_domain *clock = clk->domains;
	int ret;

	FUNC1(&clk->bstate, 0x00, sizeof(clk->bstate));
	FUNC0(&clk->bstate.list);
	clk->bstate.pstate = 0xff;

	while (clock->name != nv_clk_src_max) {
		ret = FUNC3(clk, clock->name);
		if (ret < 0) {
			FUNC4(subdev, "%02x freq unknown\n", clock->name);
			return ret;
		}
		clk->bstate.base.domain[clock->name] = ret;
		clock++;
	}

	FUNC6(clk, &clk->bstate);

	if (clk->func->init)
		return clk->func->init(clk);

	clk->astate = clk->state_nr - 1;
	clk->dstate = 0;
	clk->pstate = -1;
	clk->temp = 90; /* reasonable default value */
	FUNC5(clk, true);
	return 0;
}