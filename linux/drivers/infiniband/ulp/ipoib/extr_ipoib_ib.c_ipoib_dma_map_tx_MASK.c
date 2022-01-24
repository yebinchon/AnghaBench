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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct ipoib_tx_buf {int /*<<< orphan*/ * mapping; struct sk_buff* skb; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct ib_device *ca, struct ipoib_tx_buf *tx_req)
{
	struct sk_buff *skb = tx_req->skb;
	u64 *mapping = tx_req->mapping;
	int i;
	int off;

	if (FUNC8(skb)) {
		mapping[0] = FUNC1(ca, skb->data, FUNC8(skb),
					       DMA_TO_DEVICE);
		if (FUNC10(FUNC2(ca, mapping[0])))
			return -EIO;

		off = 1;
	} else
		off = 0;

	for (i = 0; i < FUNC9(skb)->nr_frags; ++i) {
		const skb_frag_t *frag = &FUNC9(skb)->frags[i];
		mapping[i + off] = FUNC0(ca,
						 FUNC6(frag),
						 FUNC5(frag),
						 FUNC7(frag),
						 DMA_TO_DEVICE);
		if (FUNC10(FUNC2(ca, mapping[i + off])))
			goto partial_error;
	}
	return 0;

partial_error:
	for (; i > 0; --i) {
		const skb_frag_t *frag = &FUNC9(skb)->frags[i - 1];

		FUNC3(ca, mapping[i - !off], FUNC7(frag), DMA_TO_DEVICE);
	}

	if (off)
		FUNC4(ca, mapping[0], FUNC8(skb), DMA_TO_DEVICE);

	return -EIO;
}