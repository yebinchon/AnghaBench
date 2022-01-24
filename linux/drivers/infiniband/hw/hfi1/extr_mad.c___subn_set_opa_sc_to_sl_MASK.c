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
typedef  scalar_t__ u32 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_ibport {int /*<<< orphan*/ * sc_to_sl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC1 (struct opa_smp*,scalar_t__,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int FUNC2 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC3 (size_t,scalar_t__) ; 
 struct hfi1_ibport* FUNC4 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct opa_smp *smp, u32 am, u8 *data,
				   struct ib_device *ibdev, u8 port,
				   u32 *resp_len, u32 max_len)
{
	struct hfi1_ibport *ibp = FUNC4(ibdev, port);
	size_t size = FUNC0(ibp->sc_to_sl);
	u8 *p = data;
	int i;

	if (am || FUNC3(size, max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC2((struct ib_mad_hdr *)smp);
	}

	for (i = 0; i < FUNC0(ibp->sc_to_sl); i++)
		ibp->sc_to_sl[i] = *p++;

	return FUNC1(smp, am, data, ibdev, port, resp_len,
				       max_len);
}