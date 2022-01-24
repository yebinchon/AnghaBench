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
struct opa_smp {int /*<<< orphan*/  status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;
struct buffer_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_TBL_BUFFER_CONTROL ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct opa_smp*,int,int*,struct ib_device*,int,int*,int) ; 
 struct hfi1_devdata* FUNC2 (struct ib_device*) ; 
 scalar_t__ FUNC3 (struct hfi1_pportdata*,int /*<<< orphan*/ ,struct buffer_control*) ; 
 int FUNC4 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,struct buffer_control*) ; 

__attribute__((used)) static int FUNC7(struct opa_smp *smp, u32 am, u8 *data,
			      struct ib_device *ibdev, u8 port, u32 *resp_len,
			      u32 max_len)
{
	u32 num_ports = FUNC0(am);
	struct hfi1_devdata *dd = FUNC2(ibdev);
	struct hfi1_pportdata *ppd;
	struct buffer_control *p = (struct buffer_control *)data;

	if (num_ports != 1 || FUNC5(sizeof(*p), max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC4((struct ib_mad_hdr *)smp);
	}
	ppd = dd->pport + (port - 1);
	FUNC6(dd, p);
	if (FUNC3(ppd, FM_TBL_BUFFER_CONTROL, p) < 0) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC4((struct ib_mad_hdr *)smp);
	}

	return FUNC1(smp, am, data, ibdev, port, resp_len,
				  max_len);
}