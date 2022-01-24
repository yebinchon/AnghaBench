#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; } ;
struct scatterlist {int dummy; } ;
struct TYPE_3__ {unsigned int nents; struct scatterlist* sgl; } ;
struct hsi_msg {TYPE_1__ sgt; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_4__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 TYPE_2__* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct sk_buff *skb, struct hsi_msg *msg)
{
	skb_frag_t *frag;
	struct scatterlist *sg;
	int i;

	FUNC0(msg->sgt.nents != (unsigned int)(FUNC8(skb)->nr_frags + 1));

	sg = msg->sgt.sgl;
	FUNC2(sg, skb->data, FUNC7(skb));
	for (i = 0; i < FUNC8(skb)->nr_frags; i++) {
		sg = FUNC1(sg);
		FUNC0(!sg);
		frag = &FUNC8(skb)->frags[i];
		FUNC3(sg, FUNC5(frag), FUNC6(frag),
				FUNC4(frag));
	}
}