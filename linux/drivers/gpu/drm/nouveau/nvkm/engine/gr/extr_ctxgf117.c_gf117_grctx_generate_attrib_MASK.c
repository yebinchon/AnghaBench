#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct gf100_grctx_func {int alpha_nr; int attrib_nr; int attrib_nr_max; int alpha_nr_max; } ;
struct gf100_grctx {struct gf100_gr* gr; } ;
struct gf100_gr {int const tpc_total; int gpc_nr; int* ppc_nr; int const** ppc_tpc_nr; int* ppc_mask; TYPE_1__* func; } ;
struct TYPE_2__ {struct gf100_grctx_func* grctx; } ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gf100_grctx*,int,int,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct gf100_grctx*,int const,int const) ; 
 int FUNC3 (struct gf100_grctx*,int const,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gf100_grctx*,int const,int const) ; 

void
FUNC5(struct gf100_grctx *info)
{
	struct gf100_gr *gr = info->gr;
	const struct gf100_grctx_func *grctx = gr->func->grctx;
	const u32  alpha = grctx->alpha_nr;
	const u32   beta = grctx->attrib_nr;
	const u32   size = 0x20 * (grctx->attrib_nr_max + grctx->alpha_nr_max);
	const int s = 12;
	const int b = FUNC3(info, size * gr->tpc_total, (1 << s), false);
	const int timeslice_mode = 1;
	const int max_batches = 0xffff;
	u32 bo = 0;
	u32 ao = bo + grctx->attrib_nr_max * gr->tpc_total;
	int gpc, ppc;

	FUNC1(info, 0x418810, 0x80000000, s, b);
	FUNC1(info, 0x419848, 0x10000000, s, b);
	FUNC4(info, 0x405830, (beta << 16) | alpha);
	FUNC4(info, 0x4064c4, ((alpha / 4) << 16) | max_batches);

	for (gpc = 0; gpc < gr->gpc_nr; gpc++) {
		for (ppc = 0; ppc < gr->ppc_nr[gpc]; ppc++) {
			const u32 a = alpha * gr->ppc_tpc_nr[gpc][ppc];
			const u32 b =  beta * gr->ppc_tpc_nr[gpc][ppc];
			const u32 t = timeslice_mode;
			const u32 o = FUNC0(gpc, ppc, 0);
			if (!(gr->ppc_mask[gpc] & (1 << ppc)))
				continue;
			FUNC2(info, o + 0xc0, (t << 28) | (b << 16) | ++bo);
			FUNC4(info, o + 0xc0, (t << 28) | (b << 16) | --bo);
			bo += grctx->attrib_nr_max * gr->ppc_tpc_nr[gpc][ppc];
			FUNC4(info, o + 0xe4, (a << 16) | ao);
			ao += grctx->alpha_nr_max * gr->ppc_tpc_nr[gpc][ppc];
		}
	}
}