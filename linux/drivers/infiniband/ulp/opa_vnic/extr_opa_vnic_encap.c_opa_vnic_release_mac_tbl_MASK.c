#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ mac_tbl_digest; } ;
struct TYPE_4__ {TYPE_1__ vport; } ;
struct opa_vnic_adapter {int /*<<< orphan*/  mactbl_lock; TYPE_2__ info; int /*<<< orphan*/  mactbl; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hlist_head*) ; 
 struct hlist_head* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct opa_vnic_adapter *adapter)
{
	struct hlist_head *mactbl;

	FUNC0(&adapter->mactbl_lock);
	mactbl = FUNC3(adapter->mactbl);
	FUNC4(adapter->mactbl, NULL);
	FUNC5();
	FUNC2(mactbl);
	adapter->info.vport.mac_tbl_digest = 0;
	FUNC1(&adapter->mactbl_lock);
}