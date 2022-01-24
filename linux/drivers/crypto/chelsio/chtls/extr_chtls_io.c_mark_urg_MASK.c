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
struct tcp_sock {int /*<<< orphan*/  write_seq; int /*<<< orphan*/  snd_up; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int MSG_OOB ; 
 int ULPCB_FLAG_BARRIER ; 
 int ULPCB_FLAG_NEED_HDR ; 
 int ULPCB_FLAG_NO_APPEND ; 
 int ULPCB_FLAG_URG ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct tcp_sock *tp, int flags,
		     struct sk_buff *skb)
{
	if (FUNC1(flags & MSG_OOB)) {
		tp->snd_up = tp->write_seq;
		FUNC0(skb)->flags = ULPCB_FLAG_URG |
					 ULPCB_FLAG_BARRIER |
					 ULPCB_FLAG_NO_APPEND |
					 ULPCB_FLAG_NEED_HDR;
	}
}