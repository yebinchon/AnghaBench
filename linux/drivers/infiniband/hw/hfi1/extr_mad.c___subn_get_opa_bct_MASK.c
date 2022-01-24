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
 struct hfi1_devdata* FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_pportdata*,int /*<<< orphan*/ ,struct buffer_control*) ; 
 int FUNC3 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,struct buffer_control*) ; 

__attribute__((used)) static int FUNC6(struct opa_smp *smp, u32 am, u8 *data,
			      struct ib_device *ibdev, u8 port, u32 *resp_len,
			      u32 max_len)
{
	u32 num_ports = FUNC0(am);
	struct hfi1_devdata *dd = FUNC1(ibdev);
	struct hfi1_pportdata *ppd;
	struct buffer_control *p = (struct buffer_control *)data;
	int size = sizeof(struct buffer_control);

	if (num_ports != 1 || FUNC4(size, max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC3((struct ib_mad_hdr *)smp);
	}

	ppd = dd->pport + (port - 1);
	FUNC2(ppd, FM_TBL_BUFFER_CONTROL, p);
	FUNC5(dd, p);
	if (resp_len)
		*resp_len += size;

	return FUNC3((struct ib_mad_hdr *)smp);
}