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
struct nvkm_device {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct gf100_gr {int tpc_total; TYPE_4__* func; int /*<<< orphan*/  fuc_sw_nonctx; TYPE_3__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* set_hww_esr_report_mask ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_rop_active_fbps ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_zcull ) (struct gf100_gr*) ;int /*<<< orphan*/  (* init_gpc_mmu ) (struct gf100_gr*) ;} ;

/* Variables and functions */
 int FUNC0 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC1 (struct gf100_gr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC3 (struct gf100_gr*) ; 
 int FUNC4 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC8 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC9 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC10 (struct gf100_gr*) ; 

int
FUNC11(struct gf100_gr *gr)
{
	struct nvkm_device *device = gr->base.engine.subdev.device;
	int ret;

	/* Clear SCC RAM */
	FUNC6(device, 0x40802c, 0x1);

	FUNC1(gr, gr->fuc_sw_nonctx);

	ret = FUNC4(gr);
	if (ret)
		return ret;

	ret = FUNC2(gr);
	if (ret)
		return ret;

	/* MMU debug buffer */
	if (gr->func->init_gpc_mmu)
		gr->func->init_gpc_mmu(gr);

	/* Set the PE as stream master */
	FUNC5(device, 0x503018, 0x1, 0x1);

	/* Zcull init */
	gr->func->init_zcull(gr);

	gr->func->init_rop_active_fbps(gr);

	/* Enable FIFO access */
	FUNC6(device, 0x400500, 0x00010001);

	/* Enable interrupts */
	FUNC6(device, 0x400100, 0xffffffff);
	FUNC6(device, 0x40013c, 0xffffffff);

	/* Enable FECS error interrupts */
	FUNC6(device, 0x409c24, 0x000f0000);

	/* Enable hardware warning exceptions */
	FUNC6(device, 0x404000, 0xc0000000);
	FUNC6(device, 0x404600, 0xc0000000);

	if (gr->func->set_hww_esr_report_mask)
		gr->func->set_hww_esr_report_mask(gr);

	/* Enable TPC exceptions per GPC */
	FUNC6(device, 0x419d0c, 0x2);
	FUNC6(device, 0x41ac94, (((1 << gr->tpc_total) - 1) & 0xff) << 16);

	/* Reset and enable all exceptions */
	FUNC6(device, 0x400108, 0xffffffff);
	FUNC6(device, 0x400138, 0xffffffff);
	FUNC6(device, 0x400118, 0xffffffff);
	FUNC6(device, 0x400130, 0xffffffff);
	FUNC6(device, 0x40011c, 0xffffffff);
	FUNC6(device, 0x400134, 0xffffffff);

	FUNC3(gr);

	return FUNC0(gr);
}