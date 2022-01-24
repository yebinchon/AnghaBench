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
struct TYPE_2__ {scalar_t__ idx; scalar_t__ val; } ;
struct hvutil_transport {int mode; int /*<<< orphan*/  release; TYPE_1__ cn_id; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  outmsg_q; } ;

/* Variables and functions */
 int HVUTIL_TRANSPORT_CHARDEV ; 
 int HVUTIL_TRANSPORT_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  hvt_list_lock ; 
 int /*<<< orphan*/  FUNC1 (struct hvutil_transport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct hvutil_transport *hvt)
{
	int mode_old;

	FUNC3(&hvt->lock);
	mode_old = hvt->mode;
	hvt->mode = HVUTIL_TRANSPORT_DESTROY;
	FUNC8(&hvt->outmsg_q);
	FUNC4(&hvt->lock);

	/*
	 * In case we were in 'chardev' mode we still have an open fd so we
	 * have to defer freeing the device. Netlink interface can be freed
	 * now.
	 */
	FUNC5(&hvt_list_lock);
	FUNC2(&hvt->list);
	FUNC6(&hvt_list_lock);
	if (hvt->cn_id.idx > 0 && hvt->cn_id.val > 0)
		FUNC0(&hvt->cn_id);

	if (mode_old == HVUTIL_TRANSPORT_CHARDEV)
		FUNC7(&hvt->release);

	FUNC1(hvt);
}