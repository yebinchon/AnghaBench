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
typedef  int u16 ;
struct capi_ctr {int state; int /*<<< orphan*/  state_wait_queue; int /*<<< orphan*/ * serial; int /*<<< orphan*/  profile; int /*<<< orphan*/  version; int /*<<< orphan*/ * manu; } ;
struct capi20_appl {int dummy; } ;

/* Variables and functions */
 int CAPI_CTR_DETACHED ; 
 int CAPI_CTR_DETECTED ; 
 int CAPI_MAXAPPL ; 
 struct capi20_appl* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct capi_ctr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct capi_ctr *ctr, int new_state)
{
	struct capi20_appl *ap;
	u16 applid;

	if (ctr->state == CAPI_CTR_DETECTED || ctr->state == CAPI_CTR_DETACHED)
		return;

	ctr->state = new_state;

	FUNC2(ctr->manu, 0, sizeof(ctr->manu));
	FUNC2(&ctr->version, 0, sizeof(ctr->version));
	FUNC2(&ctr->profile, 0, sizeof(ctr->profile));
	FUNC2(ctr->serial, 0, sizeof(ctr->serial));

	for (applid = 1; applid <= CAPI_MAXAPPL; applid++) {
		ap = FUNC0(applid);
		if (ap)
			FUNC1(ctr);
	}

	FUNC3(&ctr->state_wait_queue);
}