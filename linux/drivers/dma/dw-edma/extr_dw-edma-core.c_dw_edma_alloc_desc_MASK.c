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
struct dw_edma_desc {struct dw_edma_chan* chan; } ;
struct dw_edma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct dw_edma_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_edma_desc*) ; 
 struct dw_edma_desc* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct dw_edma_desc *FUNC4(struct dw_edma_chan *chan)
{
	struct dw_edma_desc *desc;

	desc = FUNC2(sizeof(*desc), GFP_NOWAIT);
	if (FUNC3(!desc))
		return NULL;

	desc->chan = chan;
	if (!FUNC0(desc)) {
		FUNC1(desc);
		return NULL;
	}

	return desc;
}