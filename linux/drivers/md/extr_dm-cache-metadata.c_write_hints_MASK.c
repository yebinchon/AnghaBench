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
struct dm_cache_policy {int dummy; } ;
struct dm_cache_metadata {size_t policy_hint_size; int /*<<< orphan*/  cache_blocks; scalar_t__ hint_root; int /*<<< orphan*/  hint_info; int /*<<< orphan*/  policy_version; int /*<<< orphan*/  policy_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_cache_policy*) ; 
 size_t FUNC2 (struct dm_cache_policy*) ; 
 char* FUNC3 (struct dm_cache_policy*) ; 
 unsigned int* FUNC4 (struct dm_cache_policy*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_hint ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int const*,int) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC9(struct dm_cache_metadata *cmd, struct dm_cache_policy *policy)
{
	int r;
	size_t hint_size;
	const char *policy_name = FUNC3(policy);
	const unsigned *policy_version = FUNC4(policy);

	if (!policy_name[0] ||
	    (FUNC7(policy_name) > sizeof(cmd->policy_name) - 1))
		return -EINVAL;

	FUNC8(cmd->policy_name, policy_name, sizeof(cmd->policy_name));
	FUNC6(cmd->policy_version, policy_version, sizeof(cmd->policy_version));

	hint_size = FUNC2(policy);
	if (!hint_size)
		return 0; /* short-circuit hints initialization */
	cmd->policy_hint_size = hint_size;

	if (cmd->hint_root) {
		r = FUNC0(&cmd->hint_info, cmd->hint_root);
		if (r)
			return r;
	}

	return FUNC1(&cmd->hint_info, &cmd->hint_root,
			    FUNC5(cmd->cache_blocks),
			    get_hint, policy);
}