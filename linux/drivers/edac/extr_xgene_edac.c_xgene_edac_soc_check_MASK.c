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
typedef  int u32 ;
struct xgene_edac_dev_ctx {int version; int /*<<< orphan*/  edac; } ;
struct edac_device_ctl_info {int /*<<< orphan*/  ctl_name; int /*<<< orphan*/  dev; struct xgene_edac_dev_ctx* pvt_info; } ;

/* Variables and functions */
 int CSW_SWITCH_TRACE_ERR_MASK ; 
 int IOB_BA_ERR_MASK ; 
 int IOB_PA_ERR_MASK ; 
 int IOB_RB_ERR_MASK ; 
 int IOB_XGIC_ERR_MASK ; 
 int /*<<< orphan*/  MEMERRINTSTS ; 
 int /*<<< orphan*/  PCPHPERRINTSTS ; 
 int /*<<< orphan*/  PCPLPERRINTSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_device_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct edac_device_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** soc_mem_err_v1 ; 
 int /*<<< orphan*/  FUNC4 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct edac_device_ctl_info*) ; 

__attribute__((used)) static void FUNC8(struct edac_device_ctl_info *edac_dev)
{
	struct xgene_edac_dev_ctx *ctx = edac_dev->pvt_info;
	const char * const *soc_mem_err = NULL;
	u32 pcp_hp_stat;
	u32 pcp_lp_stat;
	u32 reg;
	int i;

	FUNC6(ctx->edac, PCPHPERRINTSTS, &pcp_hp_stat);
	FUNC6(ctx->edac, PCPLPERRINTSTS, &pcp_lp_stat);
	FUNC6(ctx->edac, MEMERRINTSTS, &reg);
	if (!((pcp_hp_stat & (IOB_PA_ERR_MASK | IOB_BA_ERR_MASK |
			      IOB_XGIC_ERR_MASK | IOB_RB_ERR_MASK)) ||
	      (pcp_lp_stat & CSW_SWITCH_TRACE_ERR_MASK) || reg))
		return;

	if (pcp_hp_stat & IOB_XGIC_ERR_MASK)
		FUNC4(edac_dev);

	if (pcp_hp_stat & (IOB_RB_ERR_MASK | IOB_BA_ERR_MASK))
		FUNC7(edac_dev);

	if (pcp_hp_stat & IOB_PA_ERR_MASK)
		FUNC5(edac_dev);

	if (pcp_lp_stat & CSW_SWITCH_TRACE_ERR_MASK) {
		FUNC1(edac_dev->dev,
			 "CSW switch trace correctable memory parity error\n");
		FUNC2(edac_dev, 0, 0, edac_dev->ctl_name);
	}

	if (!reg)
		return;
	if (ctx->version == 1)
		soc_mem_err = soc_mem_err_v1;
	if (!soc_mem_err) {
		FUNC0(edac_dev->dev, "SoC memory parity error 0x%08X\n",
			reg);
		FUNC3(edac_dev, 0, 0, edac_dev->ctl_name);
		return;
	}
	for (i = 0; i < 31; i++) {
		if (reg & (1 << i)) {
			FUNC0(edac_dev->dev, "%s memory parity error\n",
				soc_mem_err[i]);
			FUNC3(edac_dev, 0, 0,
					      edac_dev->ctl_name);
		}
	}
}