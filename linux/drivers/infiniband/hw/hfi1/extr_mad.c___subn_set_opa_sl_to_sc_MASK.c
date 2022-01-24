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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_ibport {scalar_t__* sl_to_sc; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC1 (struct opa_smp*,scalar_t__,scalar_t__*,struct ib_device*,scalar_t__,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ibport*,int) ; 
 int FUNC3 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC4 (size_t,scalar_t__) ; 
 struct hfi1_ibport* FUNC5 (struct ib_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct opa_smp *smp, u32 am, u8 *data,
				   struct ib_device *ibdev, u8 port,
				   u32 *resp_len, u32 max_len)
{
	struct hfi1_ibport *ibp = FUNC5(ibdev, port);
	u8 *p = data;
	size_t size = FUNC0(ibp->sl_to_sc);
	int i;
	u8 sc;

	if (am || FUNC4(size, max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC3((struct ib_mad_hdr *)smp);
	}

	for (i = 0; i <  FUNC0(ibp->sl_to_sc); i++) {
		sc = *p++;
		if (ibp->sl_to_sc[i] != sc) {
			ibp->sl_to_sc[i] = sc;

			/* Put all stale qps into error state */
			FUNC2(ibp, i);
		}
	}

	return FUNC1(smp, am, data, ibdev, port, resp_len,
				       max_len);
}