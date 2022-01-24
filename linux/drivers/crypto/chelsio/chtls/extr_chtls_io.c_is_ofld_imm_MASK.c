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
struct sk_buff {int len; scalar_t__ peeked; } ;
struct fw_ofld_tx_data_wr {int dummy; } ;
struct chtls_sock {scalar_t__ ulp_mode; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int MAX_IMM_OFLD_TX_DATA_WR_LEN ; 
 int MAX_IMM_ULPTX_WR_LEN ; 
 int ULPCB_FLAG_NEED_HDR ; 
 scalar_t__ ULP_MODE_TLS ; 
 TYPE_1__* FUNC0 (struct sk_buff const*) ; 
 scalar_t__ FUNC1 (struct chtls_sock*,struct sk_buff const*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct sk_buff const*) ; 

__attribute__((used)) static bool FUNC4(struct chtls_sock *csk, const struct sk_buff *skb)
{
	int length = skb->len;

	if (skb->peeked || skb->len > MAX_IMM_ULPTX_WR_LEN)
		return false;

	if (FUNC2(FUNC0(skb)->flags & ULPCB_FLAG_NEED_HDR)) {
		/* Check TLS header len for Immediate */
		if (csk->ulp_mode == ULP_MODE_TLS &&
		    FUNC3(skb))
			length += FUNC1(csk, skb, true);
		else
			length += sizeof(struct fw_ofld_tx_data_wr);

		return length <= MAX_IMM_OFLD_TX_DATA_WR_LEN;
	}
	return true;
}