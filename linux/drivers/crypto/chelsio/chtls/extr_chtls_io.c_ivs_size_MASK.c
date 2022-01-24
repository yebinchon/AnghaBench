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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int CIPHER_BLOCK_SIZE ; 
 int FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sock*,struct sk_buff const*) ; 

__attribute__((used)) static int FUNC2(struct sock *sk, const struct sk_buff *skb)
{
	return FUNC1(sk, skb) ? (FUNC0(sk, skb->len) *
		 CIPHER_BLOCK_SIZE) : 0;
}