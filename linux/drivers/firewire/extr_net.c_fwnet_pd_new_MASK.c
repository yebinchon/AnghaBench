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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct fwnet_peer {int /*<<< orphan*/  pd_list; } ;
struct fwnet_partial_datagram {unsigned int datagram_size; unsigned int pbuf; int /*<<< orphan*/  pd_link; int /*<<< orphan*/ * skb; int /*<<< orphan*/  datagram_label; int /*<<< orphan*/  fi_list; } ;
struct fwnet_fragment_info {unsigned int datagram_size; unsigned int pbuf; int /*<<< orphan*/  pd_link; int /*<<< orphan*/ * skb; int /*<<< orphan*/  datagram_label; int /*<<< orphan*/  fi_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int) ; 
 struct fwnet_partial_datagram* FUNC3 (struct fwnet_partial_datagram*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct fwnet_partial_datagram*) ; 
 struct fwnet_partial_datagram* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,void*,unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static struct fwnet_partial_datagram *FUNC10(struct net_device *net,
		struct fwnet_peer *peer, u16 datagram_label, unsigned dg_size,
		void *frag_buf, unsigned frag_off, unsigned frag_len)
{
	struct fwnet_partial_datagram *new;
	struct fwnet_fragment_info *fi;

	new = FUNC5(sizeof(*new), GFP_ATOMIC);
	if (!new)
		goto fail;

	FUNC0(&new->fi_list);
	fi = FUNC3(new, frag_off, frag_len);
	if (fi == NULL)
		goto fail_w_new;

	new->datagram_label = datagram_label;
	new->datagram_size = dg_size;
	new->skb = FUNC2(dg_size + FUNC1(net));
	if (new->skb == NULL)
		goto fail_w_fi;

	FUNC9(new->skb, FUNC1(net));
	new->pbuf = FUNC8(new->skb, dg_size);
	FUNC7(new->pbuf + frag_off, frag_buf, frag_len);
	FUNC6(&new->pd_link, &peer->pd_list);

	return new;

fail_w_fi:
	FUNC4(fi);
fail_w_new:
	FUNC4(new);
fail:
	return NULL;
}