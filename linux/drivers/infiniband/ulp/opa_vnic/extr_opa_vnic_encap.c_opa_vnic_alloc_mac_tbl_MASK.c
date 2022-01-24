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
typedef  int u32 ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct hlist_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int OPA_VNIC_MAC_TBL_SIZE ; 
 struct hlist_head* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hlist_head*) ; 

__attribute__((used)) static struct hlist_head *FUNC3(void)
{
	u32 size = sizeof(struct hlist_head) * OPA_VNIC_MAC_TBL_SIZE;
	struct hlist_head *mactbl;

	mactbl = FUNC1(size, GFP_KERNEL);
	if (!mactbl)
		return FUNC0(-ENOMEM);

	FUNC2(mactbl);
	return mactbl;
}