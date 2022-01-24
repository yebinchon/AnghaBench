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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;

/* Variables and functions */
 int IB_PORT_ACTIVE ; 
 int IB_PORT_ARMED ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct opa_smp*,int,int*,struct ib_device*,int,int*,int) ; 
 struct hfi1_devdata* FUNC3 (struct ib_device*) ; 
 int FUNC4 (struct hfi1_pportdata*) ; 
 int FUNC5 (struct ib_mad_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,void*) ; 
 scalar_t__ FUNC7 (size_t,int) ; 

__attribute__((used)) static int FUNC8(struct opa_smp *smp, u32 am, u8 *data,
				    struct ib_device *ibdev, u8 port,
				    u32 *resp_len, u32 max_len)
{
	u32 n_blocks = FUNC1(am);
	int async_update = FUNC0(am);
	struct hfi1_devdata *dd = FUNC3(ibdev);
	void *vp = (void *)data;
	struct hfi1_pportdata *ppd;
	int lstate;
	/*
	 * set_sc2vlt_tables writes the information contained in *data
	 * to four 64-bit registers SendSC2VLt[0-3]. We need to make
	 * sure *max_len is not greater than the total size of the four
	 * SendSC2VLt[0-3] registers.
	 */
	size_t size = 4 * sizeof(u64);

	if (n_blocks != 1 || async_update || FUNC7(size, max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC5((struct ib_mad_hdr *)smp);
	}

	/* IB numbers ports from 1, hw from 0 */
	ppd = dd->pport + (port - 1);
	lstate = FUNC4(ppd);
	/*
	 * it's known that async_update is 0 by this point, but include
	 * the explicit check for clarity
	 */
	if (!async_update &&
	    (lstate == IB_PORT_ARMED || lstate == IB_PORT_ACTIVE)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC5((struct ib_mad_hdr *)smp);
	}

	FUNC6(dd, vp);

	return FUNC2(smp, am, data, ibdev, port, resp_len,
					max_len);
}