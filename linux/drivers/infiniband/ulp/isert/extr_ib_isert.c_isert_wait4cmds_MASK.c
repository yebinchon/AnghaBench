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
struct iscsi_conn {TYPE_1__* sess; } ;
struct TYPE_2__ {int /*<<< orphan*/  se_sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct iscsi_conn *conn)
{
	FUNC0("iscsi_conn %p\n", conn);

	if (conn->sess) {
		FUNC1(conn->sess->se_sess);
		FUNC2(conn->sess->se_sess);
	}
}