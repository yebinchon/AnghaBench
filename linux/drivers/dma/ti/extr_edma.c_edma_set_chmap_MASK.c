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
struct edma_chan {int ch_num; struct edma_cc* ecc; } ;
struct edma_cc {scalar_t__ chmap_exist; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  EDMA_DCHMAP ; 
 int /*<<< orphan*/  FUNC1 (struct edma_cc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct edma_chan *echan, int slot)
{
	struct edma_cc *ecc = echan->ecc;
	int channel = FUNC0(echan->ch_num);

	if (ecc->chmap_exist) {
		slot = FUNC0(slot);
		FUNC1(ecc, EDMA_DCHMAP, channel, (slot << 5));
	}
}