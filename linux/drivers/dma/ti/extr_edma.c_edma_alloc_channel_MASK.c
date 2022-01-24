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
struct edma_chan {int /*<<< orphan*/  ch_num; struct edma_cc* ecc; } ;
struct edma_cc {int dummy; } ;
typedef  enum dma_event_q { ____Placeholder_dma_event_q } dma_event_q ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDMA_DRAE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct edma_chan*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct edma_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct edma_chan*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct edma_chan*) ; 

__attribute__((used)) static int FUNC7(struct edma_chan *echan,
			      enum dma_event_q eventq_no)
{
	struct edma_cc *ecc = echan->ecc;
	int channel = FUNC1(echan->ch_num);

	/* ensure access through shadow region 0 */
	FUNC4(ecc, EDMA_DRAE, 0, FUNC2(channel),
		       FUNC0(channel));

	/* ensure no events are pending */
	FUNC6(echan);

	FUNC5(echan, true);

	FUNC3(echan, eventq_no);

	return 0;
}