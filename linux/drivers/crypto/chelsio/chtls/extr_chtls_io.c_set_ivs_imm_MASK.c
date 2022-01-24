#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int iv; } ;
struct TYPE_5__ {TYPE_1__ tls; } ;
struct TYPE_6__ {TYPE_2__ ulp; } ;

/* Variables and functions */
 int CIPHER_BLOCK_SIZE ; 
 scalar_t__ KEY_ON_MEM_SZ ; 
 scalar_t__ MAX_IMM_OFLD_TX_DATA_WR_LEN ; 
 int TLS_WR_CPL_LEN ; 
 TYPE_3__* FUNC0 (struct sk_buff const*) ; 
 int FUNC1 (struct sk_buff const*) ; 
 int FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, const struct sk_buff *skb)
{
	int ivs_size = FUNC2(sk, skb->len) * CIPHER_BLOCK_SIZE;
	int hlen = TLS_WR_CPL_LEN + FUNC1(skb);

	if ((hlen + KEY_ON_MEM_SZ + ivs_size) <
	    MAX_IMM_OFLD_TX_DATA_WR_LEN) {
		FUNC0(skb)->ulp.tls.iv = 1;
		return 1;
	}
	FUNC0(skb)->ulp.tls.iv = 0;
	return 0;
}