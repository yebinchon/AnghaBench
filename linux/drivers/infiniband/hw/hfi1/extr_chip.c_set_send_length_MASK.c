#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct hfi1_pportdata {int vls_supported; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {TYPE_2__* vld; TYPE_1__** rcd; } ;
struct TYPE_4__ {int mtu; int /*<<< orphan*/  sc; } ;
struct TYPE_3__ {int /*<<< orphan*/  rcvhdrqentsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCC_CFG_PORT_CONFIG ; 
 int DCC_CFG_PORT_CONFIG_MTU_CAP_MASK ; 
 int DCC_CFG_PORT_CONFIG_MTU_CAP_SHIFT ; 
 int DCC_CFG_PORT_CONFIG_MTU_CAP_SMASK ; 
 int DCC_CFG_PORT_MTU_CAP_10240 ; 
 int INIT_SC_PER_VL ; 
 int /*<<< orphan*/  SEND_LEN_CHECK0 ; 
 int SEND_LEN_CHECK0_LEN_VL0_MASK ; 
 int SEND_LEN_CHECK0_LEN_VL1_SHIFT ; 
 int /*<<< orphan*/  SEND_LEN_CHECK1 ; 
 int SEND_LEN_CHECK1_LEN_VL15_MASK ; 
 int SEND_LEN_CHECK1_LEN_VL15_SHIFT ; 
 int SEND_LEN_CHECK1_LEN_VL4_MASK ; 
 int SEND_LEN_CHECK1_LEN_VL5_SHIFT ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct hfi1_devdata*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int,int) ; 
 int FUNC4 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct hfi1_pportdata *ppd)
{
	struct hfi1_devdata *dd = ppd->dd;
	u32 max_hb = FUNC1(dd), dcmtu;
	u32 maxvlmtu = dd->vld[15].mtu;
	u64 len1 = 0, len2 = (((dd->vld[15].mtu + max_hb) >> 2)
			      & SEND_LEN_CHECK1_LEN_VL15_MASK) <<
		SEND_LEN_CHECK1_LEN_VL15_SHIFT;
	int i, j;
	u32 thres;

	for (i = 0; i < ppd->vls_supported; i++) {
		if (dd->vld[i].mtu > maxvlmtu)
			maxvlmtu = dd->vld[i].mtu;
		if (i <= 3)
			len1 |= (((dd->vld[i].mtu + max_hb) >> 2)
				 & SEND_LEN_CHECK0_LEN_VL0_MASK) <<
				((i % 4) * SEND_LEN_CHECK0_LEN_VL1_SHIFT);
		else
			len2 |= (((dd->vld[i].mtu + max_hb) >> 2)
				 & SEND_LEN_CHECK1_LEN_VL4_MASK) <<
				((i % 4) * SEND_LEN_CHECK1_LEN_VL5_SHIFT);
	}
	FUNC8(dd, SEND_LEN_CHECK0, len1);
	FUNC8(dd, SEND_LEN_CHECK1, len2);
	/* adjust kernel credit return thresholds based on new MTUs */
	/* all kernel receive contexts have the same hdrqentsize */
	for (i = 0; i < ppd->vls_supported; i++) {
		thres = FUNC2(FUNC6(dd->vld[i].sc, 50),
			    FUNC5(dd->vld[i].sc,
						dd->vld[i].mtu,
						dd->rcd[0]->rcvhdrqentsize));
		for (j = 0; j < INIT_SC_PER_VL; j++)
			FUNC7(
					FUNC3(dd, j, i),
					    thres);
	}
	thres = FUNC2(FUNC6(dd->vld[15].sc, 50),
		    FUNC5(dd->vld[15].sc,
					dd->vld[15].mtu,
					dd->rcd[0]->rcvhdrqentsize));
	FUNC7(dd->vld[15].sc, thres);

	/* Adjust maximum MTU for the port in DC */
	dcmtu = maxvlmtu == 10240 ? DCC_CFG_PORT_MTU_CAP_10240 :
		(FUNC0(maxvlmtu >> 8) + 1);
	len1 = FUNC4(ppd->dd, DCC_CFG_PORT_CONFIG);
	len1 &= ~DCC_CFG_PORT_CONFIG_MTU_CAP_SMASK;
	len1 |= ((u64)dcmtu & DCC_CFG_PORT_CONFIG_MTU_CAP_MASK) <<
		DCC_CFG_PORT_CONFIG_MTU_CAP_SHIFT;
	FUNC8(ppd->dd, DCC_CFG_PORT_CONFIG, len1);
}