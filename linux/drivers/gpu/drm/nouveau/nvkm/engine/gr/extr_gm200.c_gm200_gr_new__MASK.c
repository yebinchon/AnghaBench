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
struct nvkm_device {int /*<<< orphan*/  secboot; } ;
struct gf100_gr_func {int dummy; } ;
struct gf100_gr {int /*<<< orphan*/  fuc_method; int /*<<< orphan*/  fuc_bundle; int /*<<< orphan*/  fuc_sw_ctx; int /*<<< orphan*/  fuc_sw_nonctx; int /*<<< orphan*/  fuc41ad; int /*<<< orphan*/  fuc41ac; int /*<<< orphan*/  fuc409d; int /*<<< orphan*/  fuc409c; struct nvkm_gr base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVKM_SECBOOT_FALCON_FECS ; 
 int /*<<< orphan*/  NVKM_SECBOOT_FALCON_GPCCS ; 
 int FUNC0 (struct gf100_gr_func const*,struct nvkm_device*,int,struct gf100_gr*) ; 
 int FUNC1 (struct gf100_gr*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct gf100_gr*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct gf100_gr*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct gf100_gr*,char*,int /*<<< orphan*/ *) ; 
 struct gf100_gr* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(const struct gf100_gr_func *func, struct nvkm_device *device,
	      int index, struct nvkm_gr **pgr)
{
	struct gf100_gr *gr;
	int ret;

	if (!(gr = FUNC5(sizeof(*gr), GFP_KERNEL)))
		return -ENOMEM;
	*pgr = &gr->base;

	ret = FUNC0(func, device, index, gr);
	if (ret)
		return ret;

	/* Load firmwares for non-secure falcons */
	if (!FUNC6(device->secboot,
				     NVKM_SECBOOT_FALCON_FECS)) {
		if ((ret = FUNC1(gr, "gr/fecs_inst", &gr->fuc409c)) ||
		    (ret = FUNC1(gr, "gr/fecs_data", &gr->fuc409d)))
			return ret;
	}
	if (!FUNC6(device->secboot,
				     NVKM_SECBOOT_FALCON_GPCCS)) {
		if ((ret = FUNC1(gr, "gr/gpccs_inst", &gr->fuc41ac)) ||
		    (ret = FUNC1(gr, "gr/gpccs_data", &gr->fuc41ad)))
			return ret;
	}

	if ((ret = FUNC3(gr, "gr/sw_nonctx", &gr->fuc_sw_nonctx)) ||
	    (ret = FUNC2(gr, "gr/sw_ctx", &gr->fuc_sw_ctx)) ||
	    (ret = FUNC3(gr, "gr/sw_bundle_init", &gr->fuc_bundle)) ||
	    (ret = FUNC4(gr, "gr/sw_method_init", &gr->fuc_method)))
		return ret;

	return 0;
}