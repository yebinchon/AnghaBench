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
struct owl_dma_vchan {int dummy; } ;
struct owl_dma_pchan {int /*<<< orphan*/  lock; struct owl_dma_vchan* vchan; } ;
struct owl_dma {int nr_pchans; struct owl_dma_pchan* pchans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct owl_dma_pchan *FUNC2(struct owl_dma *od,
					       struct owl_dma_vchan *vchan)
{
	struct owl_dma_pchan *pchan = NULL;
	unsigned long flags;
	int i;

	for (i = 0; i < od->nr_pchans; i++) {
		pchan = &od->pchans[i];

		FUNC0(&pchan->lock, flags);
		if (!pchan->vchan) {
			pchan->vchan = vchan;
			FUNC1(&pchan->lock, flags);
			break;
		}

		FUNC1(&pchan->lock, flags);
	}

	return pchan;
}