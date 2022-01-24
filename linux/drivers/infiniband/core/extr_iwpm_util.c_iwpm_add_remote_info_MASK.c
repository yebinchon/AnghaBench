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
struct iwpm_remote_info {int /*<<< orphan*/  hlist_node; int /*<<< orphan*/  mapped_rem_sockaddr; int /*<<< orphan*/  mapped_loc_sockaddr; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 struct hlist_head* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 scalar_t__ iwpm_reminfo_bucket ; 
 int /*<<< orphan*/  iwpm_reminfo_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct iwpm_remote_info *rem_info)
{
	struct hlist_head *hash_bucket_head;
	unsigned long flags;

	FUNC2(&iwpm_reminfo_lock, flags);
	if (iwpm_reminfo_bucket) {
		hash_bucket_head = FUNC0(
					&rem_info->mapped_loc_sockaddr,
					&rem_info->mapped_rem_sockaddr);
		if (hash_bucket_head)
			FUNC1(&rem_info->hlist_node, hash_bucket_head);
	}
	FUNC3(&iwpm_reminfo_lock, flags);
}