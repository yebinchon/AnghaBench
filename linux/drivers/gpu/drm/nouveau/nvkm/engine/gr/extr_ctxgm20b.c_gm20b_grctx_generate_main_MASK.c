#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_device {int dummy; } ;
struct gf100_grctx_func {int /*<<< orphan*/  (* bundle ) (struct gf100_grctx*) ;int /*<<< orphan*/  (* pagepool ) (struct gf100_grctx*) ;int /*<<< orphan*/  (* unkn ) (struct gf100_gr*) ;int /*<<< orphan*/  (* attrib ) (struct gf100_grctx*) ;} ;
struct gf100_grctx {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct gf100_gr {int tpc_total; int gpc_nr; int* tpc_nr; int /*<<< orphan*/  fuc_bundle; int /*<<< orphan*/  fuc_method; int /*<<< orphan*/  fuc_sw_ctx; TYPE_4__* func; TYPE_3__ base; } ;
struct TYPE_8__ {struct gf100_grctx_func* grctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gf100_gr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gf100_gr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gf100_gr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC4 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC5 (struct gf100_gr*) ; 
 int FUNC6 (struct nvkm_device*,int,int,int) ; 
 int FUNC7 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct gf100_grctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC11 (struct gf100_grctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct gf100_grctx*) ; 

__attribute__((used)) static void
FUNC13(struct gf100_gr *gr, struct gf100_grctx *info)
{
	struct nvkm_device *device = gr->base.engine.subdev.device;
	const struct gf100_grctx_func *grctx = gr->func->grctx;
	u32 idle_timeout;
	int i, tmp;

	FUNC1(gr, gr->fuc_sw_ctx);

	FUNC3(gr);

	idle_timeout = FUNC6(device, 0x404154, 0xffffffff, 0x00000000);

	grctx->attrib(info);

	grctx->unkn(gr);

	FUNC4(gr);

	for (i = 0; i < 8; i++)
		FUNC8(device, 0x4064d0 + (i * 0x04), 0x00000000);

	FUNC8(device, 0x405b00, (gr->tpc_total << 8) | gr->gpc_nr);

	FUNC8(device, 0x408908, FUNC7(device, 0x410108) | 0x80000000);

	for (tmp = 0, i = 0; i < gr->gpc_nr; i++)
		tmp |= ((1 << gr->tpc_nr[i]) - 1) << (i * 4);
	FUNC8(device, 0x4041c4, tmp);

	FUNC5(gr);

	FUNC3(gr);

	FUNC8(device, 0x404154, idle_timeout);
	FUNC3(gr);

	FUNC2(gr, gr->fuc_method);
	FUNC3(gr);

	FUNC0(gr, gr->fuc_bundle);
	grctx->pagepool(info);
	grctx->bundle(info);
}