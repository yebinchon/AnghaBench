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
struct hfi1_pportdata {int /*<<< orphan*/  led_override_timer_active; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int) ; 
 int OPA_LED_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct hfi1_devdata* FUNC3 (struct ib_device*) ; 
 int FUNC4 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct opa_smp *smp, u32 am, u8 *data,
				   struct ib_device *ibdev, u8 port,
				   u32 *resp_len, u32 max_len)
{
	struct hfi1_devdata *dd = FUNC3(ibdev);
	struct hfi1_pportdata *ppd = dd->pport;
	struct opa_led_info *p = (struct opa_led_info *)data;
	u32 nport = FUNC0(am);
	u32 is_beaconing_active;

	if (nport != 1 || FUNC5(sizeof(*p), max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC4((struct ib_mad_hdr *)smp);
	}

	/*
	 * This pairs with the memory barrier in hfi1_start_led_override to
	 * ensure that we read the correct state of LED beaconing represented
	 * by led_override_timer_active
	 */
	FUNC6();
	is_beaconing_active = !!FUNC1(&ppd->led_override_timer_active);
	p->rsvd_led_mask = FUNC2(is_beaconing_active << OPA_LED_SHIFT);

	if (resp_len)
		*resp_len += sizeof(struct opa_led_info);

	return FUNC4((struct ib_mad_hdr *)smp);
}