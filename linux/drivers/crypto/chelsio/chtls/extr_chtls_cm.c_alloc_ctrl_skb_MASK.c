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
struct sk_buff {int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct sk_buff *skb, int len)
{
	if (FUNC2(skb && !FUNC5(skb) && !FUNC4(skb))) {
		FUNC0(skb, 0);
		FUNC3(2, &skb->users);
	} else {
		skb = FUNC1(len, GFP_KERNEL | __GFP_NOFAIL);
	}
	return skb;
}