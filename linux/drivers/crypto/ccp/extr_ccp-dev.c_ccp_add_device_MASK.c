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
struct ccp_device {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 struct ccp_device* ccp_rr ; 
 int /*<<< orphan*/  ccp_unit_lock ; 
 int /*<<< orphan*/  ccp_units ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct ccp_device *ccp)
{
	unsigned long flags;

	FUNC1(&ccp_unit_lock, flags);
	FUNC0(&ccp->entry, &ccp_units);
	if (!ccp_rr)
		/* We already have the list lock (we're first) so this
		 * pointer can't change on us. Set its initial value.
		 */
		ccp_rr = ccp;
	FUNC2(&ccp_unit_lock, flags);
}