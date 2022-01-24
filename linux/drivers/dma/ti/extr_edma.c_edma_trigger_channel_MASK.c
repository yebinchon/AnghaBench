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
struct edma_cc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SH_ESR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct edma_cc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct edma_cc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC6(struct edma_chan *echan)
{
	struct edma_cc *ecc = echan->ecc;
	int channel = FUNC1(echan->ch_num);
	int idx = FUNC2(channel);
	int ch_bit = FUNC0(channel);

	FUNC5(ecc, SH_ESR, idx, ch_bit);

	FUNC3(ecc->dev, "ESR%d %08x\n", idx,
		FUNC4(ecc, SH_ESR, idx));
}