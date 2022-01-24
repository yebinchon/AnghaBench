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
struct netlink_skb_parms {int dummy; } ;
struct dm_ulog_request {int dummy; } ;
struct cn_msg {int len; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cn_msg*,struct dm_ulog_request*) ; 
 int /*<<< orphan*/  receiving_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cn_msg *msg, struct netlink_skb_parms *nsp)
{
	struct dm_ulog_request *tfr = (struct dm_ulog_request *)(msg + 1);

	if (!FUNC1(CAP_SYS_ADMIN))
		return;

	FUNC3(&receiving_list_lock);
	if (msg->len == 0)
		FUNC2(msg, NULL);
	else if (msg->len < sizeof(*tfr))
		FUNC0("Incomplete message received (expected %u, got %u): [%u]",
		      (unsigned)sizeof(*tfr), msg->len, msg->seq);
	else
		FUNC2(NULL, tfr);
	FUNC4(&receiving_list_lock);
}