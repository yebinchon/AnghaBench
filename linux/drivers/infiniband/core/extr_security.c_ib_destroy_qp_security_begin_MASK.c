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
struct ib_qp_security {int destroying; int /*<<< orphan*/  mutex; int /*<<< orphan*/  error_list_count; int /*<<< orphan*/  error_comps_pending; TYPE_1__* ports_pkeys; } ;
struct TYPE_2__ {int /*<<< orphan*/  alt; int /*<<< orphan*/  main; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ib_qp_security *sec)
{
	/* Return if not IB */
	if (!sec)
		return;

	FUNC1(&sec->mutex);

	/* Remove the QP from the lists so it won't get added to
	 * a to_error_list during the destroy process.
	 */
	if (sec->ports_pkeys) {
		FUNC3(&sec->ports_pkeys->main);
		FUNC3(&sec->ports_pkeys->alt);
	}

	/* If the QP is already in one or more of those lists
	 * the destroying flag will ensure the to error flow
	 * doesn't operate on an undefined QP.
	 */
	sec->destroying = true;

	/* Record the error list count to know how many completions
	 * to wait for.
	 */
	sec->error_comps_pending = FUNC0(&sec->error_list_count);

	FUNC2(&sec->mutex);
}