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
typedef  int u8 ;
typedef  int u32 ;
struct opa_smp {int /*<<< orphan*/  status; int /*<<< orphan*/  attr_mod; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_TBL_VL_HIGH_ARB ; 
 int /*<<< orphan*/  FM_TBL_VL_LOW_ARB ; 
 int /*<<< orphan*/  FM_TBL_VL_PREEMPT_ELEMS ; 
 int /*<<< orphan*/  FM_TBL_VL_PREEMPT_MATRIX ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int) ; 
#define  OPA_VLARB_HIGH_ELEMENTS 131 
#define  OPA_VLARB_LOW_ELEMENTS 130 
#define  OPA_VLARB_PREEMPT_ELEMENTS 129 
#define  OPA_VLARB_PREEMPT_MATRIX 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int*) ; 
 struct hfi1_pportdata* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,int) ; 

__attribute__((used)) static int FUNC8(struct opa_smp *smp, u32 am, u8 *data,
				 struct ib_device *ibdev, u8 port,
				 u32 *resp_len, u32 max_len)
{
	struct hfi1_pportdata *ppd = FUNC3(FUNC7(ibdev, port));
	u32 num_ports = FUNC0(am);
	u8 section = (am & 0x00ff0000) >> 16;
	u8 *p = data;
	int size = 256;

	if (num_ports != 1 || FUNC6(size, max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC5((struct ib_mad_hdr *)smp);
	}

	switch (section) {
	case OPA_VLARB_LOW_ELEMENTS:
		FUNC2(ppd, FM_TBL_VL_LOW_ARB, p);
		break;
	case OPA_VLARB_HIGH_ELEMENTS:
		FUNC2(ppd, FM_TBL_VL_HIGH_ARB, p);
		break;
	case OPA_VLARB_PREEMPT_ELEMENTS:
		FUNC2(ppd, FM_TBL_VL_PREEMPT_ELEMS, p);
		break;
	case OPA_VLARB_PREEMPT_MATRIX:
		FUNC2(ppd, FM_TBL_VL_PREEMPT_MATRIX, p);
		break;
	default:
		FUNC4("OPA SubnGet(VL Arb) AM Invalid : 0x%x\n",
			FUNC1(smp->attr_mod));
		smp->status |= IB_SMP_INVALID_FIELD;
		size = 0;
		break;
	}

	if (size > 0 && resp_len)
		*resp_len += size;

	return FUNC5((struct ib_mad_hdr *)smp);
}