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
struct hsi_msg {int /*<<< orphan*/ * destructor; struct sk_buff* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct hsi_msg*,struct sk_buff*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct hsi_msg *msg)
{
	struct sk_buff *skb;

	skb = msg->context;
	FUNC2("free data: msg %p context %p skb %p\n", msg, msg->context,
								skb);
	msg->destructor = NULL;
	FUNC0(skb);
	FUNC1(msg);
}