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
struct nvkm_gr {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct gf100_gr {int /*<<< orphan*/  fuc_method; int /*<<< orphan*/  fuc_bundle; int /*<<< orphan*/  fuc_sw_ctx; int /*<<< orphan*/  fuc_sw_nonctx; int /*<<< orphan*/  fuc41ad; int /*<<< orphan*/  fuc41ac; int /*<<< orphan*/  fuc409d; int /*<<< orphan*/  fuc409c; struct nvkm_gr base; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct nvkm_device*,int,struct gf100_gr*) ; 
 scalar_t__ FUNC1 (struct gf100_gr*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gk20a_gr ; 
 int FUNC2 (struct gf100_gr*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct gf100_gr*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct gf100_gr*,char*,int /*<<< orphan*/ *) ; 
 struct gf100_gr* FUNC5 (int,int /*<<< orphan*/ ) ; 

int
FUNC6(struct nvkm_device *device, int index, struct nvkm_gr **pgr)
{
	struct gf100_gr *gr;
	int ret;

	if (!(gr = FUNC5(sizeof(*gr), GFP_KERNEL)))
		return -ENOMEM;
	*pgr = &gr->base;

	ret = FUNC0(&gk20a_gr, device, index, gr);
	if (ret)
		return ret;

	if (FUNC1(gr, "fecs_inst", &gr->fuc409c) ||
	    FUNC1(gr, "fecs_data", &gr->fuc409d) ||
	    FUNC1(gr, "gpccs_inst", &gr->fuc41ac) ||
	    FUNC1(gr, "gpccs_data", &gr->fuc41ad))
		return -ENODEV;

	ret = FUNC3(gr, "sw_nonctx", &gr->fuc_sw_nonctx);
	if (ret)
		return ret;

	ret = FUNC2(gr, "sw_ctx", &gr->fuc_sw_ctx);
	if (ret)
		return ret;

	ret = FUNC3(gr, "sw_bundle_init", &gr->fuc_bundle);
	if (ret)
		return ret;

	ret = FUNC4(gr, "sw_method_init", &gr->fuc_method);
	if (ret)
		return ret;

	return 0;
}