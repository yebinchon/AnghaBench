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
struct sk_buff {int len; } ;
struct ipsec_sa_entry {unsigned int kctx_len; scalar_t__ esn; } ;
struct fw_ulptx_wr {int dummy; } ;
struct cpl_tx_pkt_core {int dummy; } ;
struct chcr_ipsec_req {int dummy; } ;
struct chcr_ipsec_aadiv {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,int) ; 
 int FUNC1 (struct sk_buff const*,struct ipsec_sa_entry*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (struct sk_buff const*) ; 

__attribute__((used)) static inline unsigned int FUNC4(const struct sk_buff *skb,
					     struct ipsec_sa_entry *sa_entry,
					     bool *immediate)
{
	unsigned int kctx_len;
	unsigned int flits;
	int aadivlen;
	int hdrlen;

	kctx_len = sa_entry->kctx_len;
	hdrlen = FUNC1(skb, sa_entry);
	aadivlen = sa_entry->esn ? FUNC0(sizeof(struct chcr_ipsec_aadiv),
						16) : 0;
	aadivlen <<= 4;

	/* If the skb is small enough, we can pump it out as a work request
	 * with only immediate data.  In that case we just have to have the
	 * TX Packet header plus the skb data in the Work Request.
	 */

	if (hdrlen) {
		*immediate = true;
		return FUNC0(skb->len + hdrlen, sizeof(__be64));
	}

	flits = FUNC2(FUNC3(skb)->nr_frags + 1);

	/* Otherwise, we're going to have to construct a Scatter gather list
	 * of the skb body and fragments.  We also include the flits necessary
	 * for the TX Packet Work Request and CPL.  We always have a firmware
	 * Write Header (incorporated as part of the cpl_tx_pkt_lso and
	 * cpl_tx_pkt structures), followed by either a TX Packet Write CPL
	 * message or, if we're doing a Large Send Offload, an LSO CPL message
	 * with an embedded TX Packet Write CPL message.
	 */
	flits += (sizeof(struct fw_ulptx_wr) +
		  sizeof(struct chcr_ipsec_req) +
		  kctx_len +
		  sizeof(struct cpl_tx_pkt_core) +
		  aadivlen) / sizeof(__be64);
	return flits;
}