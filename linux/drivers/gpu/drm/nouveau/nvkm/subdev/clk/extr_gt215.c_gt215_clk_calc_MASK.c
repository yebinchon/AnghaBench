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
struct nvkm_cstate {int /*<<< orphan*/ * domain; } ;
struct nvkm_clk {int dummy; } ;
struct gt215_clk_info {scalar_t__ pll; } ;
struct gt215_clk {struct gt215_clk_info* eng; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FUNC0 (struct gt215_clk*,struct nvkm_cstate*,int,int,size_t) ; 
 int FUNC1 (struct gt215_clk*,struct nvkm_cstate*) ; 
 struct gt215_clk* FUNC2 (struct nvkm_clk*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct gt215_clk_info*) ; 
 size_t nv_clk_src_core ; 
 size_t nv_clk_src_core_intm ; 
 size_t nv_clk_src_disp ; 
 size_t nv_clk_src_shader ; 
 size_t nv_clk_src_vdec ; 

__attribute__((used)) static int
FUNC4(struct nvkm_clk *base, struct nvkm_cstate *cstate)
{
	struct gt215_clk *clk = FUNC2(base);
	struct gt215_clk_info *core = &clk->eng[nv_clk_src_core];
	int ret;

	if ((ret = FUNC0(clk, cstate, 0x10, 0x4200, nv_clk_src_core)) ||
	    (ret = FUNC0(clk, cstate, 0x11, 0x4220, nv_clk_src_shader)) ||
	    (ret = FUNC0(clk, cstate, 0x20, 0x0000, nv_clk_src_disp)) ||
	    (ret = FUNC0(clk, cstate, 0x21, 0x0000, nv_clk_src_vdec)) ||
	    (ret = FUNC1(clk, cstate)))
		return ret;

	/* XXX: Should be reading the highest bit in the VBIOS clock to decide
	 * whether to use a PLL or not... but using a PLL defeats the purpose */
	if (core->pll) {
		ret = FUNC3(&clk->base, 0x10,
				     cstate->domain[nv_clk_src_core_intm],
				     &clk->eng[nv_clk_src_core_intm]);
		if (ret < 0)
			return ret;
	}

	return 0;
}