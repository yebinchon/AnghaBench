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
struct isert_conn {int /*<<< orphan*/  release_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  kref; int /*<<< orphan*/  rem_wait; int /*<<< orphan*/  login_req_comp; int /*<<< orphan*/  login_comp; int /*<<< orphan*/  node; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISER_CONN_INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  isert_release_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct isert_conn *isert_conn)
{
	isert_conn->state = ISER_CONN_INIT;
	FUNC0(&isert_conn->node);
	FUNC2(&isert_conn->login_comp);
	FUNC2(&isert_conn->login_req_comp);
	FUNC3(&isert_conn->rem_wait);
	FUNC4(&isert_conn->kref);
	FUNC5(&isert_conn->mutex);
	FUNC1(&isert_conn->release_work, isert_release_work);
}