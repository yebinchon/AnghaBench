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
typedef  int /*<<< orphan*/  u64 ;
struct sockaddr_storage {int dummy; } ;
struct se_node_acl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,struct sockaddr_storage*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC4(struct se_node_acl *se_nacl, const char *name)
{
	struct sockaddr_storage sa;
	u64 guid;
	u8 i_port_id[16];
	int ret;

	ret = FUNC2(&guid, name);
	if (ret < 0)
		ret = FUNC3(i_port_id, name);
	if (ret < 0)
		ret = FUNC0(&init_net, AF_UNSPEC, name, NULL,
					   &sa);
	if (ret < 0)
		FUNC1("invalid initiator port ID %s\n", name);
	return ret;
}