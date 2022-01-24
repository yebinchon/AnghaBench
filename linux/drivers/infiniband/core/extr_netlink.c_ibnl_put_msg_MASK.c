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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 void* FUNC1 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 

void *FUNC3(struct sk_buff *skb, struct nlmsghdr **nlh, int seq,
		   int len, int client, int op, int flags)
{
	*nlh = FUNC2(skb, 0, seq, FUNC0(client, op), len, flags);
	if (!*nlh)
		return NULL;
	return FUNC1(*nlh);
}