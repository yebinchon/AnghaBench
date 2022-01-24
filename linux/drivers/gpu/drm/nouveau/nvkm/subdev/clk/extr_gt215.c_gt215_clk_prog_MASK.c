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
struct nvkm_clk {int dummy; } ;
struct gt215_clk_info {scalar_t__ pll; } ;
struct gt215_clk {int /*<<< orphan*/  base; struct gt215_clk_info* eng; } ;

/* Variables and functions */
 int EBUSY ; 
 struct gt215_clk* FUNC0 (struct nvkm_clk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long*) ; 
 size_t nv_clk_src_core ; 
 size_t nv_clk_src_core_intm ; 
 int /*<<< orphan*/  nv_clk_src_disp ; 
 int /*<<< orphan*/  nv_clk_src_shader ; 
 int /*<<< orphan*/  nv_clk_src_vdec ; 
 int /*<<< orphan*/  FUNC3 (struct gt215_clk*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gt215_clk*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct gt215_clk*) ; 
 int /*<<< orphan*/  FUNC6 (struct gt215_clk*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct nvkm_clk *base)
{
	struct gt215_clk *clk = FUNC0(base);
	struct gt215_clk_info *core = &clk->eng[nv_clk_src_core];
	int ret = 0;
	unsigned long flags;
	unsigned long *f = &flags;

	ret = FUNC2(&clk->base, f);
	if (ret)
		goto out;

	if (core->pll)
		FUNC4(clk, nv_clk_src_core_intm);

	FUNC4(clk,  nv_clk_src_core);
	FUNC6(clk, 0x01, 0x004220, nv_clk_src_shader);
	FUNC3(clk, 0x20, nv_clk_src_disp);
	FUNC3(clk, 0x21, nv_clk_src_vdec);
	FUNC5(clk);

out:
	if (ret == -EBUSY)
		f = NULL;

	FUNC1(&clk->base, f);
	return ret;
}