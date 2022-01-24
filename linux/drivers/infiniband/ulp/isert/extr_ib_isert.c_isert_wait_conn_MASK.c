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
struct isert_conn {int /*<<< orphan*/  release_work; int /*<<< orphan*/  qp; int /*<<< orphan*/  mutex; } ;
struct iscsi_conn {struct isert_conn* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  isert_release_wq ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct iscsi_conn *conn)
{
	struct isert_conn *isert_conn = conn->context;

	FUNC2("Starting conn %p\n", isert_conn);

	FUNC6(&isert_conn->mutex);
	FUNC1(isert_conn);
	FUNC7(&isert_conn->mutex);

	FUNC0(isert_conn->qp);
	FUNC3(conn);
	FUNC4(conn);
	FUNC5(isert_conn);

	FUNC8(isert_release_wq, &isert_conn->release_work);
}