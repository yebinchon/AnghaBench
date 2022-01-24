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
struct sc2vlnt {int dummy; } ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_TBL_SC2VLNT ; 
 int IB_PORT_ACTIVE ; 
 int IB_PORT_ARMED ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct opa_smp*,int,int*,struct ib_device*,int,int*,int) ; 
 struct hfi1_devdata* FUNC2 (struct ib_device*) ; 
 int FUNC3 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_pportdata*,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct opa_smp *smp, u32 am, u8 *data,
				     struct ib_device *ibdev, u8 port,
				     u32 *resp_len, u32 max_len)
{
	u32 n_blocks = FUNC0(am);
	struct hfi1_devdata *dd = FUNC2(ibdev);
	struct hfi1_pportdata *ppd;
	void *vp = (void *)data;
	int lstate;
	int size = sizeof(struct sc2vlnt);

	if (n_blocks != 1 || FUNC6(size, max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC5((struct ib_mad_hdr *)smp);
	}

	/* IB numbers ports from 1, hw from 0 */
	ppd = dd->pport + (port - 1);
	lstate = FUNC3(ppd);
	if (lstate == IB_PORT_ARMED || lstate == IB_PORT_ACTIVE) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC5((struct ib_mad_hdr *)smp);
	}

	ppd = dd->pport + (port - 1);

	FUNC4(ppd, FM_TBL_SC2VLNT, vp);

	return FUNC1(smp, am, data, ibdev, port,
					 resp_len, max_len);
}