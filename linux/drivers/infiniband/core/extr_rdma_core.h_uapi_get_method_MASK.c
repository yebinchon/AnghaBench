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
struct uverbs_api_write_method {int dummy; } ;
struct uverbs_api {int num_write_ex; int num_write; struct uverbs_api_write_method const** write_methods; struct uverbs_api_write_method const** write_ex_methods; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct uverbs_api_write_method const* FUNC0 (int /*<<< orphan*/ ) ; 
 int IB_USER_VERBS_CMD_COMMAND_MASK ; 
 int IB_USER_VERBS_CMD_FLAG_EXTENDED ; 

__attribute__((used)) static inline const struct uverbs_api_write_method *
FUNC1(const struct uverbs_api *uapi, u32 command)
{
	u32 cmd_idx = command & IB_USER_VERBS_CMD_COMMAND_MASK;

	if (command & ~(u32)(IB_USER_VERBS_CMD_FLAG_EXTENDED |
			     IB_USER_VERBS_CMD_COMMAND_MASK))
		return FUNC0(-EINVAL);

	if (command & IB_USER_VERBS_CMD_FLAG_EXTENDED) {
		if (cmd_idx >= uapi->num_write_ex)
			return FUNC0(-EOPNOTSUPP);
		return uapi->write_ex_methods[cmd_idx];
	}

	if (cmd_idx >= uapi->num_write)
		return FUNC0(-EOPNOTSUPP);
	return uapi->write_methods[cmd_idx];
}