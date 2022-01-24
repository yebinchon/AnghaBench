#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_2__ {unsigned int nr_frags; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 TYPE_1__* FUNC1 (struct sk_buff const*) ; 
 scalar_t__ FUNC2 (struct sk_buff const*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*) ; 

__attribute__((used)) static unsigned int FUNC4(const struct sk_buff *skb,
				  unsigned int immdlen)
{
	unsigned int flits, cnt;

	flits = immdlen / 8;   /* headers */
	cnt = FUNC1(skb)->nr_frags;
	if (FUNC2(skb) != FUNC3(skb))
		cnt++;
	return flits + FUNC0(cnt);
}