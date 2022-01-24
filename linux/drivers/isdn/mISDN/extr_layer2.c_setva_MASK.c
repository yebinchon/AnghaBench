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
struct sk_buff {int dummy; } ;
struct layer2 {unsigned int va; size_t sow; int window; int /*<<< orphan*/  tmp_queue; int /*<<< orphan*/ ** windowar; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct layer2 *l2, unsigned int nr)
{
	struct sk_buff	*skb;

	while (l2->va != nr) {
		l2->va++;
		if (FUNC4(FLG_MOD128, &l2->flag))
			l2->va %= 128;
		else
			l2->va %= 8;
		if (l2->windowar[l2->sow]) {
			FUNC3(l2->windowar[l2->sow], 0);
			FUNC2(&l2->tmp_queue, l2->windowar[l2->sow]);
			l2->windowar[l2->sow] = NULL;
		}
		l2->sow = (l2->sow + 1) % l2->window;
	}
	skb = FUNC1(&l2->tmp_queue);
	while (skb) {
		FUNC0(skb);
		skb = FUNC1(&l2->tmp_queue);
	}
}