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
struct bchannel {int maxlen; int next_maxlen; int minlen; int next_minlen; int /*<<< orphan*/  nr; scalar_t__ rx_skb; int /*<<< orphan*/  Flags; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FLG_TRANSPARENT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct bchannel*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

int
FUNC6(struct bchannel *bch, int reqlen)
{
	int len;

	if (bch->rx_skb) {
		len = FUNC3(bch->rx_skb);
		if (len < reqlen) {
			FUNC1("B%d no space for %d (only %d) bytes\n",
				   bch->nr, reqlen, len);
			if (FUNC4(FLG_TRANSPARENT, &bch->Flags)) {
				/* send what we have now and try a new buffer */
				FUNC2(bch, 0, true);
			} else {
				/* on HDLC we have to drop too big frames */
				return -EMSGSIZE;
			}
		} else {
			return len;
		}
	}
	/* update current min/max length first */
	if (FUNC5(bch->maxlen != bch->next_maxlen))
		bch->maxlen = bch->next_maxlen;
	if (FUNC5(bch->minlen != bch->next_minlen))
		bch->minlen = bch->next_minlen;
	if (FUNC5(reqlen > bch->maxlen))
		return -EMSGSIZE;
	if (FUNC4(FLG_TRANSPARENT, &bch->Flags)) {
		if (reqlen >= bch->minlen) {
			len = reqlen;
		} else {
			len = 2 * bch->minlen;
			if (len > bch->maxlen)
				len = bch->maxlen;
		}
	} else {
		/* with HDLC we do not know the length yet */
		len = bch->maxlen;
	}
	bch->rx_skb = FUNC0(len, GFP_ATOMIC);
	if (!bch->rx_skb) {
		FUNC1("B%d receive no memory for %d bytes\n",
			   bch->nr, len);
		len = -ENOMEM;
	}
	return len;
}