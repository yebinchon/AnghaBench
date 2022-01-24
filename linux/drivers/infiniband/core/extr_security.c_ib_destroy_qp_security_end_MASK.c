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
struct ib_qp_security {int error_comps_pending; int /*<<< orphan*/  error_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_qp_security*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ib_qp_security *sec)
{
	int i;

	/* Return if not IB */
	if (!sec)
		return;

	/* If a concurrent cache update is occurring we must
	 * wait until this QP security structure is processed
	 * in the QP to error flow before destroying it because
	 * the to_error_list is in use.
	 */
	for (i = 0; i < sec->error_comps_pending; i++)
		FUNC1(&sec->error_complete);

	FUNC0(sec);
}