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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct sk_buff *skb, int len, gfp_t gfp)
{
	if (skb && !FUNC3(skb) && !FUNC1(skb)) {
		FUNC5(skb, 0);
		FUNC2(skb);
		FUNC4(skb);
	} else {
		skb = FUNC0(len, gfp);
		if (!skb)
			return NULL;
	}
	FUNC6(skb, NULL, NULL);
	return skb;
}