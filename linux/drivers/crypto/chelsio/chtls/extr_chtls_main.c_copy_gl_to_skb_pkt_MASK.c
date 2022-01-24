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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct pkt_gl {scalar_t__ tot_len; scalar_t__ va; } ;
struct cpl_rx_pkt {int dummy; } ;
struct cpl_pass_accept_req {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__) ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC5(const struct pkt_gl *gl,
					  const __be64 *rsp,
					  u32 pktshift)
{
	struct sk_buff *skb;

	/* Allocate space for cpl_pass_accpet_req which will be synthesized by
	 * driver. Once driver synthesizes cpl_pass_accpet_req the skb will go
	 * through the regular cpl_pass_accept_req processing in TOM.
	 */
	skb = FUNC1(gl->tot_len + sizeof(struct cpl_pass_accept_req)
			- pktshift, GFP_ATOMIC);
	if (FUNC4(!skb))
		return NULL;
	FUNC0(skb, gl->tot_len + sizeof(struct cpl_pass_accept_req)
		   - pktshift);
	/* For now we will copy  cpl_rx_pkt in the skb */
	FUNC2(skb, rsp, sizeof(struct cpl_rx_pkt));
	FUNC3(skb, sizeof(struct cpl_pass_accept_req)
				       , gl->va + pktshift,
				       gl->tot_len - pktshift);

	return skb;
}