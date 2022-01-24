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
typedef  union cpl_wr_size {int dummy; } cpl_wr_size ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff_head *ep_skb_list, int size)
{
	struct sk_buff *skb;
	unsigned int i;
	size_t len;

	len = FUNC1(sizeof(union cpl_wr_size), 16);
	for (i = 0; i < size; i++) {
		skb = FUNC0(len, GFP_KERNEL);
		if (!skb)
			goto fail;
		FUNC3(ep_skb_list, skb);
	}
	return 0;
fail:
	FUNC2(ep_skb_list);
	return -ENOMEM;
}