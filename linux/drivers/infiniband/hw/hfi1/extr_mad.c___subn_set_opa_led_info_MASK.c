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
struct opa_led_info {int /*<<< orphan*/  rsvd_led_mask; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_devdata {int /*<<< orphan*/  pport; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int) ; 
 int OPA_LED_MASK ; 
 int FUNC1 (struct opa_smp*,int,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct hfi1_devdata* FUNC3 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct ib_mad_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct opa_smp *smp, u32 am, u8 *data,
				   struct ib_device *ibdev, u8 port,
				   u32 *resp_len, u32 max_len)
{
	struct hfi1_devdata *dd = FUNC3(ibdev);
	struct opa_led_info *p = (struct opa_led_info *)data;
	u32 nport = FUNC0(am);
	int on = !!(FUNC2(p->rsvd_led_mask) & OPA_LED_MASK);

	if (nport != 1 || FUNC7(sizeof(*p), max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC5((struct ib_mad_hdr *)smp);
	}

	if (on)
		FUNC4(dd->pport, 2000, 1500);
	else
		FUNC6(dd->pport);

	return FUNC1(smp, am, data, ibdev, port, resp_len,
				       max_len);
}