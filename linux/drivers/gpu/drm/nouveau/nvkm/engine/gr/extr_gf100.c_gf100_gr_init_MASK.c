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
struct nvkm_device {int /*<<< orphan*/  therm; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct gf100_gr {int gpc_nr; int* tpc_nr; int rop_nr; TYPE_4__* func; scalar_t__ fuc_sw_nonctx; TYPE_3__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* init_4188a4 ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_400054 ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_shader_exceptions ) (struct gf100_gr*,int,int) ;int /*<<< orphan*/  (* init_504430 ) (struct gf100_gr*,int,int) ;int /*<<< orphan*/  (* init_tex_hww_esr ) (struct gf100_gr*,int,int) ;int /*<<< orphan*/  (* init_ppc_exceptions ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_419c9c ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_419eb4 ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_419cc0 ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_sked_hww_esr ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_40601c ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_ds_hww_esr_2 ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_fecs_exceptions ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_swdx_pes_mask ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_bios_2 ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_rop_active_fbps ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_num_active_ltcs ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_zcull ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_vsc_stream_master ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_bios ) (struct gf100_gr*) ;scalar_t__ clkgate_pack; int /*<<< orphan*/  (* init_r405a14 ) (struct gf100_gr*) ;scalar_t__ mmio; int /*<<< orphan*/  (* init_gpc_mmu ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_419bd8 ) (struct gf100_gr*) ;} ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC4 (struct gf100_gr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC6 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC10 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC11 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC12 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC13 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC14 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC15 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC16 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC17 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC18 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC19 (struct gf100_gr*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC21 (struct gf100_gr*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct gf100_gr*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC24 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC25 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC26 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC27 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC28 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC29 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC30 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC31 (struct gf100_gr*) ; 

int
FUNC32(struct gf100_gr *gr)
{
	struct nvkm_device *device = gr->base.engine.subdev.device;
	int gpc, tpc, rop;

	if (gr->func->init_419bd8)
		gr->func->init_419bd8(gr);

	gr->func->init_gpc_mmu(gr);

	if (gr->fuc_sw_nonctx)
		FUNC4(gr, gr->fuc_sw_nonctx);
	else
		FUNC4(gr, gr->func->mmio);

	FUNC5(gr);

	if (gr->func->init_r405a14)
		gr->func->init_r405a14(gr);

	if (gr->func->clkgate_pack)
		FUNC7(device->therm, gr->func->clkgate_pack);

	if (gr->func->init_bios)
		gr->func->init_bios(gr);

	gr->func->init_vsc_stream_master(gr);
	gr->func->init_zcull(gr);
	gr->func->init_num_active_ltcs(gr);
	if (gr->func->init_rop_active_fbps)
		gr->func->init_rop_active_fbps(gr);
	if (gr->func->init_bios_2)
		gr->func->init_bios_2(gr);
	if (gr->func->init_swdx_pes_mask)
		gr->func->init_swdx_pes_mask(gr);

	FUNC8(device, 0x400500, 0x00010001);

	FUNC8(device, 0x400100, 0xffffffff);
	FUNC8(device, 0x40013c, 0xffffffff);
	FUNC8(device, 0x400124, 0x00000002);

	gr->func->init_fecs_exceptions(gr);
	if (gr->func->init_ds_hww_esr_2)
		gr->func->init_ds_hww_esr_2(gr);

	FUNC8(device, 0x404000, 0xc0000000);
	FUNC8(device, 0x404600, 0xc0000000);
	FUNC8(device, 0x408030, 0xc0000000);

	if (gr->func->init_40601c)
		gr->func->init_40601c(gr);

	FUNC8(device, 0x404490, 0xc0000000);
	FUNC8(device, 0x406018, 0xc0000000);

	if (gr->func->init_sked_hww_esr)
		gr->func->init_sked_hww_esr(gr);

	FUNC8(device, 0x405840, 0xc0000000);
	FUNC8(device, 0x405844, 0x00ffffff);

	if (gr->func->init_419cc0)
		gr->func->init_419cc0(gr);
	if (gr->func->init_419eb4)
		gr->func->init_419eb4(gr);
	if (gr->func->init_419c9c)
		gr->func->init_419c9c(gr);

	if (gr->func->init_ppc_exceptions)
		gr->func->init_ppc_exceptions(gr);

	for (gpc = 0; gpc < gr->gpc_nr; gpc++) {
		FUNC8(device, FUNC0(gpc, 0x0420), 0xc0000000);
		FUNC8(device, FUNC0(gpc, 0x0900), 0xc0000000);
		FUNC8(device, FUNC0(gpc, 0x1028), 0xc0000000);
		FUNC8(device, FUNC0(gpc, 0x0824), 0xc0000000);
		for (tpc = 0; tpc < gr->tpc_nr[gpc]; tpc++) {
			FUNC8(device, FUNC2(gpc, tpc, 0x508), 0xffffffff);
			FUNC8(device, FUNC2(gpc, tpc, 0x50c), 0xffffffff);
			if (gr->func->init_tex_hww_esr)
				gr->func->init_tex_hww_esr(gr, gpc, tpc);
			FUNC8(device, FUNC2(gpc, tpc, 0x084), 0xc0000000);
			if (gr->func->init_504430)
				gr->func->init_504430(gr, gpc, tpc);
			gr->func->init_shader_exceptions(gr, gpc, tpc);
		}
		FUNC8(device, FUNC0(gpc, 0x2c90), 0xffffffff);
		FUNC8(device, FUNC0(gpc, 0x2c94), 0xffffffff);
	}

	for (rop = 0; rop < gr->rop_nr; rop++) {
		FUNC8(device, FUNC1(rop, 0x144), 0x40000000);
		FUNC8(device, FUNC1(rop, 0x070), 0x40000000);
		FUNC8(device, FUNC1(rop, 0x204), 0xffffffff);
		FUNC8(device, FUNC1(rop, 0x208), 0xffffffff);
	}

	FUNC8(device, 0x400108, 0xffffffff);
	FUNC8(device, 0x400138, 0xffffffff);
	FUNC8(device, 0x400118, 0xffffffff);
	FUNC8(device, 0x400130, 0xffffffff);
	FUNC8(device, 0x40011c, 0xffffffff);
	FUNC8(device, 0x400134, 0xffffffff);

	if (gr->func->init_400054)
		gr->func->init_400054(gr);

	FUNC6(gr);

	if (gr->func->init_4188a4)
		gr->func->init_4188a4(gr);

	return FUNC3(gr);
}