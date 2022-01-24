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
typedef  scalar_t__ u32 ;
struct mtk_sys_cap {int /*<<< orphan*/  hw_opt; int /*<<< orphan*/  hia_opt; } ;
struct mtk_cryp {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ DFE_CFG ; 
 scalar_t__ DSE_CFG ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 int FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ PE_IN_DBUF_THRESH ; 
 scalar_t__ PE_IN_TBUF_THRESH ; 
 scalar_t__ PE_OUT_BUF_CTRL ; 
 scalar_t__ PE_OUT_DBUF_THRESH ; 
 scalar_t__ PE_OUT_TBUF_THRESH ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct mtk_cryp *cryp,
				  struct mtk_sys_cap *cap)
{
	u32 width = FUNC4(cap->hia_opt) + 2;
	u32 len = FUNC5(cap->hia_opt) - 1;
	u32 ipbuf = FUNC13((u32)FUNC8(cap->hw_opt) + width, len);
	u32 opbuf = FUNC13((u32)FUNC12(cap->hw_opt) + width, len);
	u32 itbuf = FUNC13((u32)FUNC9(cap->hw_opt) + width, len);

	FUNC14(FUNC3(ipbuf - 1) |
	       FUNC2(ipbuf) |
	       FUNC1(itbuf - 1) |
	       FUNC0(itbuf),
	       cryp->base + DFE_CFG);

	FUNC14(FUNC3(opbuf - 1) |
	       FUNC2(opbuf),
	       cryp->base + DSE_CFG);

	FUNC14(FUNC7(ipbuf - 1) |
	       FUNC6(ipbuf),
	       cryp->base + PE_IN_DBUF_THRESH);

	FUNC14(FUNC7(itbuf - 1) |
	       FUNC6(itbuf),
	       cryp->base + PE_IN_TBUF_THRESH);

	FUNC14(FUNC11(opbuf - 1) |
	       FUNC10(opbuf),
	       cryp->base + PE_OUT_DBUF_THRESH);

	FUNC14(0, cryp->base + PE_OUT_TBUF_THRESH);
	FUNC14(0, cryp->base + PE_OUT_BUF_CTRL);
}