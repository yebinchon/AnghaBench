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
struct ib_qp_security {int error_comps_pending; int destroying; int /*<<< orphan*/  mutex; TYPE_1__* ports_pkeys; int /*<<< orphan*/  error_complete; } ;
struct TYPE_2__ {int /*<<< orphan*/  alt; int /*<<< orphan*/  main; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,struct ib_qp_security*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_qp_security*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ib_qp_security *sec)
{
	int ret;
	int i;

	/* Return if not IB */
	if (!sec)
		return;

	/* If a concurrent cache update is in progress this
	 * QP security could be marked for an error state
	 * transition.  Wait for this to complete.
	 */
	for (i = 0; i < sec->error_comps_pending; i++)
		FUNC5(&sec->error_complete);

	FUNC1(&sec->mutex);
	sec->destroying = false;

	/* Restore the position in the lists and verify
	 * access is still allowed in case a cache update
	 * occurred while attempting to destroy.
	 *
	 * Because these setting were listed already
	 * and removed during ib_destroy_qp_security_begin
	 * we know the pkey_index_qp_list for the PKey
	 * already exists so port_pkey_list_insert won't fail.
	 */
	if (sec->ports_pkeys) {
		FUNC3(&sec->ports_pkeys->main);
		FUNC3(&sec->ports_pkeys->alt);
	}

	ret = FUNC0(sec->ports_pkeys, sec);
	if (ret)
		FUNC4(sec);

	FUNC2(&sec->mutex);
}