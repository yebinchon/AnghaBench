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
struct gf100_grctx_func {int alpha_nr; int attrib_nr; int gfxp_nr; int alpha_nr_max; } ;
struct gf100_grctx {struct gf100_gr* gr; } ;
struct gf100_gr {int tpc_total; int gpc_nr; int* ppc_nr; int const** ppc_tpc_nr; int* ppc_mask; TYPE_1__* func; } ;
struct TYPE_2__ {struct gf100_grctx_func* grctx; } ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gf100_grctx*,int,int,int const,int) ; 
 int FUNC2 (struct gf100_grctx*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gf100_grctx*,int const,int const) ; 

__attribute__((used)) static void
FUNC4(struct gf100_grctx *info)
{
	struct gf100_gr *gr = info->gr;
	const struct gf100_grctx_func *grctx = gr->func->grctx;
	const u32  alpha = grctx->alpha_nr;
	const u32 attrib = grctx->attrib_nr;
	const u32   gfxp = grctx->gfxp_nr;
	const int s = 12;
	const int max_batches = 0xffff;
	u32 size = grctx->alpha_nr_max * gr->tpc_total;
	u32 ao = 0;
	u32 bo = ao + size;
	int gpc, ppc, b, n = 0;

	size += grctx->gfxp_nr * gr->tpc_total;
	size = ((size * 0x20) + 128) & ~127;
	b = FUNC2(info, size, (1 << s), false);

	FUNC1(info, 0x418810, 0x80000000, s, b);
	FUNC1(info, 0x419848, 0x10000000, s, b);
	FUNC1(info, 0x419c2c, 0x10000000, s, b);
	FUNC1(info, 0x419e00, 0x00000000, s, b);
	FUNC3(info, 0x419e04, 0x80000000 | size >> 7);
	FUNC3(info, 0x405830, attrib);
	FUNC3(info, 0x40585c, alpha);
	FUNC3(info, 0x4064c4, ((alpha / 4) << 16) | max_batches);

	for (gpc = 0; gpc < gr->gpc_nr; gpc++) {
		for (ppc = 0; ppc < gr->ppc_nr[gpc]; ppc++, n++) {
			const u32 as =  alpha * gr->ppc_tpc_nr[gpc][ppc];
			const u32 bs = attrib * gr->ppc_tpc_nr[gpc][ppc];
			const u32 gs =   gfxp * gr->ppc_tpc_nr[gpc][ppc];
			const u32 u = 0x418ea0 + (n * 0x04);
			const u32 o = FUNC0(gpc, ppc, 0);
			if (!(gr->ppc_mask[gpc] & (1 << ppc)))
				continue;
			FUNC3(info, o + 0xc0, gs);
			FUNC3(info, o + 0xf4, bo);
			FUNC3(info, o + 0xf0, bs);
			bo += gs;
			FUNC3(info, o + 0xe4, as);
			FUNC3(info, o + 0xf8, ao);
			ao += grctx->alpha_nr_max * gr->ppc_tpc_nr[gpc][ppc];
			FUNC3(info, u, bs);
		}
	}

	FUNC3(info, 0x4181e4, 0x00000100);
	FUNC3(info, 0x41befc, 0x00000100);
}