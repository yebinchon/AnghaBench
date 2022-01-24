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
struct iser_conn {int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  state; int /*<<< orphan*/  release_work; scalar_t__ iscsi_conn; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISER_CONN_DOWN ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct iscsi_endpoint*,struct iser_conn*) ; 
 int /*<<< orphan*/  iser_release_work ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  release_wq ; 

__attribute__((used)) static void
FUNC8(struct iscsi_endpoint *ep)
{
	struct iser_conn *iser_conn = ep->dd_data;

	FUNC4("ep %p iser conn %p\n", ep, iser_conn);

	FUNC5(&iser_conn->state_mutex);
	FUNC3(iser_conn);

	/*
	 * if iser_conn and iscsi_conn are bound, we must wait for
	 * iscsi_conn_stop and flush errors completion before freeing
	 * the iser resources. Otherwise we are safe to free resources
	 * immediately.
	 */
	if (iser_conn->iscsi_conn) {
		FUNC0(&iser_conn->release_work, iser_release_work);
		FUNC7(release_wq, &iser_conn->release_work);
		FUNC6(&iser_conn->state_mutex);
	} else {
		iser_conn->state = ISER_CONN_DOWN;
		FUNC6(&iser_conn->state_mutex);
		FUNC2(iser_conn);
	}

	FUNC1(ep);
}