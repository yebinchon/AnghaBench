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
struct cec_notifier {int /*<<< orphan*/  lock; scalar_t__ cec_adap; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  conn_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct cec_notifier*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct cec_notifier *n)
{
	if (!n)
		return;

	FUNC4(&n->lock);
	FUNC3(&n->conn_info, 0, sizeof(n->conn_info));
	n->phys_addr = CEC_PHYS_ADDR_INVALID;
	if (n->cec_adap) {
		FUNC1(n->cec_adap);
		FUNC2(n->cec_adap, NULL);
	}
	FUNC5(&n->lock);
	FUNC0(n);
}