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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct opa_congestion_info_attr {int /*<<< orphan*/  congestion_log_length; int /*<<< orphan*/  control_table_cap; scalar_t__ congestion_info; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int /*<<< orphan*/  cc_max_table_entries; } ;
struct hfi1_ibport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  OPA_CONG_LOG_ELEMS ; 
 struct hfi1_pportdata* FUNC0 (struct hfi1_ibport*) ; 
 int FUNC1 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 struct hfi1_ibport* FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct opa_smp *smp, u32 am, u8 *data,
				    struct ib_device *ibdev, u8 port,
				    u32 *resp_len, u32 max_len)
{
	struct opa_congestion_info_attr *p =
		(struct opa_congestion_info_attr *)data;
	struct hfi1_ibport *ibp = FUNC3(ibdev, port);
	struct hfi1_pportdata *ppd = FUNC0(ibp);

	if (FUNC2(sizeof(*p), max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC1((struct ib_mad_hdr *)smp);
	}

	p->congestion_info = 0;
	p->control_table_cap = ppd->cc_max_table_entries;
	p->congestion_log_length = OPA_CONG_LOG_ELEMS;

	if (resp_len)
		*resp_len += sizeof(*p);

	return FUNC1((struct ib_mad_hdr *)smp);
}