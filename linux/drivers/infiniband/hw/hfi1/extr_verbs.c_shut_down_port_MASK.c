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
struct rvt_dev_info {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;

/* Variables and functions */
 int /*<<< orphan*/  HLS_DN_DOWNDEF ; 
 int /*<<< orphan*/  OPA_LINKDOWN_REASON_UNKNOWN ; 
 struct hfi1_devdata* FUNC0 (struct hfi1_ibdev*) ; 
 struct hfi1_ibdev* FUNC1 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hfi1_pportdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rvt_dev_info *rdi, u8 port_num)
{
	struct hfi1_ibdev *verbs_dev = FUNC1(rdi);
	struct hfi1_devdata *dd = FUNC0(verbs_dev);
	struct hfi1_pportdata *ppd = &dd->pport[port_num - 1];
	int ret;

	FUNC2(ppd, OPA_LINKDOWN_REASON_UNKNOWN, 0,
			     OPA_LINKDOWN_REASON_UNKNOWN);
	ret = FUNC3(ppd, HLS_DN_DOWNDEF);
	return ret;
}