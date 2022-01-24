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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sockaddr_storage {int dummy; } ;
struct iwpm_mapping_info {int /*<<< orphan*/  hlist_node; int /*<<< orphan*/  mapped_sockaddr; int /*<<< orphan*/  local_sockaddr; int /*<<< orphan*/  map_flags; int /*<<< orphan*/  nl_client; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hlist_head* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 scalar_t__ iwpm_hash_bucket ; 
 int /*<<< orphan*/  iwpm_mapinfo_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwpm_mapping_info*) ; 
 struct iwpm_mapping_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct sockaddr_storage *local_sockaddr,
			struct sockaddr_storage *mapped_sockaddr,
			u8 nl_client, u32 map_flags)
{
	struct hlist_head *hash_bucket_head = NULL;
	struct iwpm_mapping_info *map_info;
	unsigned long flags;
	int ret = -EINVAL;

	if (!FUNC2(nl_client))
		return ret;
	map_info = FUNC4(sizeof(struct iwpm_mapping_info), GFP_KERNEL);
	if (!map_info)
		return -ENOMEM;

	FUNC5(&map_info->local_sockaddr, local_sockaddr,
	       sizeof(struct sockaddr_storage));
	FUNC5(&map_info->mapped_sockaddr, mapped_sockaddr,
	       sizeof(struct sockaddr_storage));
	map_info->nl_client = nl_client;
	map_info->map_flags = map_flags;

	FUNC6(&iwpm_mapinfo_lock, flags);
	if (iwpm_hash_bucket) {
		hash_bucket_head = FUNC0(
					&map_info->local_sockaddr,
					&map_info->mapped_sockaddr);
		if (hash_bucket_head) {
			FUNC1(&map_info->hlist_node, hash_bucket_head);
			ret = 0;
		}
	}
	FUNC7(&iwpm_mapinfo_lock, flags);

	if (!hash_bucket_head)
		FUNC3(map_info);
	return ret;
}