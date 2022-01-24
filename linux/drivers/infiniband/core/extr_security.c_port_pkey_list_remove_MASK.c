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
struct pkey_index_qp_list {int /*<<< orphan*/  qp_list_lock; } ;
struct ib_port_pkey {scalar_t__ state; int /*<<< orphan*/  qp_list; } ;

/* Variables and functions */
 scalar_t__ IB_PORT_PKEY_LISTED ; 
 scalar_t__ IB_PORT_PKEY_VALID ; 
 struct pkey_index_qp_list* FUNC0 (struct ib_port_pkey*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ib_port_pkey *pp)
{
	struct pkey_index_qp_list *pkey;

	if (pp->state != IB_PORT_PKEY_LISTED)
		return;

	pkey = FUNC0(pp);

	FUNC2(&pkey->qp_list_lock);
	FUNC1(&pp->qp_list);
	FUNC3(&pkey->qp_list_lock);

	/* The setting may still be valid, i.e. after
	 * a destroy has failed for example.
	 */
	pp->state = IB_PORT_PKEY_VALID;
}