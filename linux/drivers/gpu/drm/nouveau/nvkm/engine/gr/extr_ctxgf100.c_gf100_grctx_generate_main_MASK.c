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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_device {int dummy; } ;
struct gf100_grctx_func {int /*<<< orphan*/  (* r408840 ) (struct gf100_gr*) ;int /*<<< orphan*/  (* r419a3c ) (struct gf100_gr*) ;int /*<<< orphan*/  (* r418e94 ) (struct gf100_gr*) ;int /*<<< orphan*/  (* r419e00 ) (struct gf100_gr*) ;int /*<<< orphan*/  (* r419eb0 ) (struct gf100_gr*) ;int /*<<< orphan*/  (* r418800 ) (struct gf100_gr*) ;int /*<<< orphan*/  (* r419cb8 ) (struct gf100_gr*) ;scalar_t__ mthd; int /*<<< orphan*/  (* r400088 ) (struct gf100_gr*,int) ;scalar_t__ sw_veid_bundle_init; scalar_t__ icmd; int /*<<< orphan*/  (* unkn ) (struct gf100_gr*) ;int /*<<< orphan*/  (* patch_ltc ) (struct gf100_grctx*) ;int /*<<< orphan*/  (* attrib ) (struct gf100_grctx*) ;int /*<<< orphan*/  (* bundle ) (struct gf100_grctx*) ;int /*<<< orphan*/  (* pagepool ) (struct gf100_grctx*) ;int /*<<< orphan*/  ppc; int /*<<< orphan*/  tpc; int /*<<< orphan*/  gpc_1; int /*<<< orphan*/  zcull; int /*<<< orphan*/  gpc_0; int /*<<< orphan*/  hub; } ;
struct gf100_grctx {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct gf100_gr {scalar_t__ fuc_method; scalar_t__ fuc_bundle; int /*<<< orphan*/  fuc_sw_ctx; TYPE_4__* func; TYPE_3__ base; } ;
struct TYPE_8__ {struct gf100_grctx_func* grctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gf100_gr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct gf100_gr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gf100_gr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC4 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gf100_grctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC10 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC11 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC12 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC13 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC14 (struct gf100_grctx*) ; 
 int /*<<< orphan*/  FUNC15 (struct gf100_grctx*) ; 
 int /*<<< orphan*/  FUNC16 (struct gf100_grctx*) ; 
 int /*<<< orphan*/  FUNC17 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC18 (struct gf100_gr*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct gf100_gr*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC21 (struct gf100_gr*) ; 

void
FUNC22(struct gf100_gr *gr, struct gf100_grctx *info)
{
	struct nvkm_device *device = gr->base.engine.subdev.device;
	const struct gf100_grctx_func *grctx = gr->func->grctx;
	u32 idle_timeout;

	FUNC6(device, 0);

	if (!gr->fuc_sw_ctx) {
		FUNC1(gr, grctx->hub);
		FUNC1(gr, grctx->gpc_0);
		FUNC1(gr, grctx->zcull);
		FUNC1(gr, grctx->gpc_1);
		FUNC1(gr, grctx->tpc);
		FUNC1(gr, grctx->ppc);
	} else {
		FUNC1(gr, gr->fuc_sw_ctx);
	}

	FUNC3(gr);

	idle_timeout = FUNC5(device, 0x404154, 0xffffffff, 0x00000000);

	grctx->pagepool(info);
	grctx->bundle(info);
	grctx->attrib(info);
	if (grctx->patch_ltc)
		grctx->patch_ltc(info);
	grctx->unkn(gr);

	FUNC4(gr);

	FUNC3(gr);

	if (grctx->r400088) grctx->r400088(gr, false);
	if (gr->fuc_bundle)
		FUNC0(gr, gr->fuc_bundle);
	else
		FUNC0(gr, grctx->icmd);
	if (grctx->sw_veid_bundle_init)
		FUNC0(gr, grctx->sw_veid_bundle_init);
	if (grctx->r400088) grctx->r400088(gr, true);

	FUNC7(device, 0x404154, idle_timeout);

	if (gr->fuc_method)
		FUNC2(gr, gr->fuc_method);
	else
		FUNC2(gr, grctx->mthd);
	FUNC6(device, 1);

	if (grctx->r419cb8)
		grctx->r419cb8(gr);
	if (grctx->r418800)
		grctx->r418800(gr);
	if (grctx->r419eb0)
		grctx->r419eb0(gr);
	if (grctx->r419e00)
		grctx->r419e00(gr);
	if (grctx->r418e94)
		grctx->r418e94(gr);
	if (grctx->r419a3c)
		grctx->r419a3c(gr);
	if (grctx->r408840)
		grctx->r408840(gr);
}