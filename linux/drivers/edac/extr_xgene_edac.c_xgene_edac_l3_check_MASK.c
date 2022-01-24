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
struct xgene_edac_dev_ctx {int version; scalar_t__ dev_csr; } ;
struct edac_device_ctl_info {int /*<<< orphan*/  ctl_name; int /*<<< orphan*/  dev; struct xgene_edac_dev_ctx* pvt_info; } ;

/* Variables and functions */
 scalar_t__ L3C_AELR ; 
 scalar_t__ L3C_BELR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ L3C_ELR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 scalar_t__ L3C_ESR ; 
 int L3C_ESR_CERR_MASK ; 
 int L3C_ESR_DATATAG_MASK ; 
 int L3C_ESR_MULTIHIT_MASK ; 
 int L3C_ESR_MULTIUCERR_MASK ; 
 int L3C_ESR_UCERR_MASK ; 
 int L3C_ESR_UCEVICT_MASK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct edac_device_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct edac_device_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (int,int) ; 

__attribute__((used)) static void FUNC14(struct edac_device_ctl_info *edac_dev)
{
	struct xgene_edac_dev_ctx *ctx = edac_dev->pvt_info;
	u32 l3cesr;
	u32 l3celr;
	u32 l3caelr;
	u32 l3cbelr;

	l3cesr = FUNC11(ctx->dev_csr + L3C_ESR);
	if (!(l3cesr & (L3C_ESR_UCERR_MASK | L3C_ESR_CERR_MASK)))
		return;

	if (l3cesr & L3C_ESR_UCERR_MASK)
		FUNC7(edac_dev->dev, "L3C uncorrectable error\n");
	if (l3cesr & L3C_ESR_CERR_MASK)
		FUNC8(edac_dev->dev, "L3C correctable error\n");

	l3celr = FUNC11(ctx->dev_csr + L3C_ELR);
	l3caelr = FUNC11(ctx->dev_csr + L3C_AELR);
	l3cbelr = FUNC11(ctx->dev_csr + L3C_BELR);
	if (l3cesr & L3C_ESR_MULTIHIT_MASK)
		FUNC7(edac_dev->dev, "L3C multiple hit error\n");
	if (l3cesr & L3C_ESR_UCEVICT_MASK)
		FUNC7(edac_dev->dev,
			"L3C dropped eviction of line with error\n");
	if (l3cesr & L3C_ESR_MULTIUCERR_MASK)
		FUNC7(edac_dev->dev, "L3C multiple uncorrectable error\n");
	if (l3cesr & L3C_ESR_DATATAG_MASK)
		FUNC7(edac_dev->dev,
			"L3C data error syndrome 0x%X group 0x%X\n",
			FUNC3(l3celr), FUNC2(l3celr));
	else
		FUNC7(edac_dev->dev,
			"L3C tag error syndrome 0x%X Way of Tag 0x%X Agent ID 0x%X Operation type 0x%X\n",
			FUNC3(l3celr), FUNC4(l3celr),
			FUNC1(l3celr), FUNC5(l3celr));
	/*
	 * NOTE: Address [41:38] in L3C_ELR_PADDRHIGH(l3celr).
	 *       Address [37:6] in l3caelr. Lower 6 bits are zero.
	 */
	FUNC7(edac_dev->dev, "L3C error address 0x%08X.%08X bank %d\n",
		FUNC6(l3celr) << 6 | (l3caelr >> 26),
		(l3caelr & 0x3FFFFFFF) << 6, FUNC0(l3cbelr));
	FUNC7(edac_dev->dev,
		"L3C error status register value 0x%X\n", l3cesr);

	/* Clear L3C error interrupt */
	FUNC12(0, ctx->dev_csr + L3C_ESR);

	if (ctx->version <= 1 &&
	    FUNC13(l3cesr, l3celr)) {
		FUNC10(edac_dev, 0, 0, edac_dev->ctl_name);
		return;
	}
	if (l3cesr & L3C_ESR_CERR_MASK)
		FUNC9(edac_dev, 0, 0, edac_dev->ctl_name);
	if (l3cesr & L3C_ESR_UCERR_MASK)
		FUNC10(edac_dev, 0, 0, edac_dev->ctl_name);
}