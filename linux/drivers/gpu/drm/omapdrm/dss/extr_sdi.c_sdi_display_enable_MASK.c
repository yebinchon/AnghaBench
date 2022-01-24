#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dispc_channel; } ;
struct dispc_clock_info {int dummy; } ;
struct TYPE_7__ {struct dispc_clock_info clock_info; } ;
struct sdi_device {int /*<<< orphan*/  vdds_sdi_reg; TYPE_2__* dss; TYPE_6__ output; int /*<<< orphan*/  datapairs; TYPE_1__ mgr_config; int /*<<< orphan*/  pixelclock; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  dispc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dispc_clock_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,unsigned long) ; 
 struct sdi_device* FUNC8 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sdi_device*,int /*<<< orphan*/ ,unsigned long*,struct dispc_clock_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct sdi_device*) ; 

__attribute__((used)) static void FUNC14(struct omap_dss_device *dssdev)
{
	struct sdi_device *sdi = FUNC8(dssdev);
	struct dispc_clock_info dispc_cinfo;
	unsigned long fck;
	int r;

	r = FUNC11(sdi->vdds_sdi_reg);
	if (r)
		return;

	r = FUNC1(sdi->dss->dispc);
	if (r)
		goto err_get_dispc;

	r = FUNC12(sdi, sdi->pixelclock, &fck, &dispc_cinfo);
	if (r)
		goto err_calc_clock_div;

	sdi->mgr_config.clock_info = dispc_cinfo;

	r = FUNC7(sdi->dss, fck);
	if (r)
		goto err_set_dss_clock_div;

	FUNC13(sdi);

	/*
	 * LCLK and PCLK divisors are located in shadow registers, and we
	 * normally write them to DISPC registers when enabling the output.
	 * However, SDI uses pck-free as source clock for its PLL, and pck-free
	 * is affected by the divisors. And as we need the PLL before enabling
	 * the output, we need to write the divisors early.
	 *
	 * It seems just writing to the DISPC register is enough, and we don't
	 * need to care about the shadow register mechanism for pck-free. The
	 * exact reason for this is unknown.
	 */
	FUNC0(sdi->dss->dispc, sdi->output.dispc_channel,
				&sdi->mgr_config.clock_info);

	FUNC6(sdi->dss, sdi->datapairs);
	r = FUNC5(sdi->dss);
	if (r)
		goto err_sdi_enable;
	FUNC9(2);

	r = FUNC3(&sdi->output);
	if (r)
		goto err_mgr_enable;

	return;

err_mgr_enable:
	FUNC4(sdi->dss);
err_sdi_enable:
err_set_dss_clock_div:
err_calc_clock_div:
	FUNC2(sdi->dss->dispc);
err_get_dispc:
	FUNC10(sdi->vdds_sdi_reg);
}