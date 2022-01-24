#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct iw_cm_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  history; } ;
struct c4iw_ep {TYPE_1__ com; int /*<<< orphan*/  hwtid; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MPA_REQ_RCVD ; 
 int /*<<< orphan*/  ULP_REJECT ; 
 int /*<<< orphan*/  FUNC0 (struct c4iw_ep*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ mpa_rev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct c4iw_ep*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct c4iw_ep*) ; 
 struct c4iw_ep* FUNC8 (struct iw_cm_id*) ; 

int FUNC9(struct iw_cm_id *cm_id, const void *pdata, u8 pdata_len)
{
	int abort;
	struct c4iw_ep *ep = FUNC8(cm_id);

	FUNC4("ep %p tid %u\n", ep, ep->hwtid);

	FUNC2(&ep->com.mutex);
	if (ep->com.state != MPA_REQ_RCVD) {
		FUNC3(&ep->com.mutex);
		FUNC1(&ep->com);
		return -ECONNRESET;
	}
	FUNC6(ULP_REJECT, &ep->com.history);
	if (mpa_rev == 0)
		abort = 1;
	else
		abort = FUNC5(ep, pdata, pdata_len);
	FUNC3(&ep->com.mutex);

	FUNC7(ep);
	FUNC0(ep, abort != 0, GFP_KERNEL);
	FUNC1(&ep->com);
	return 0;
}