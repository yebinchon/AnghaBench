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
struct edma_chan {int /*<<< orphan*/  hw_triggered; int /*<<< orphan*/  ch_num; struct edma_cc* ecc; } ;
struct edma_cc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDMA_ECR ; 
 int /*<<< orphan*/  EDMA_EMCR ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SH_EER ; 
 int /*<<< orphan*/  SH_EESR ; 
 int /*<<< orphan*/  SH_ER ; 
 int /*<<< orphan*/  SH_ESR ; 
 int /*<<< orphan*/  SH_SECR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct edma_cc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct edma_cc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct edma_cc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct edma_chan *echan)
{
	struct edma_cc *ecc = echan->ecc;
	int channel = FUNC1(echan->ch_num);
	int idx = FUNC2(channel);
	int ch_bit = FUNC0(channel);

	if (!echan->hw_triggered) {
		/* EDMA channels without event association */
		FUNC3(ecc->dev, "ESR%d %08x\n", idx,
			FUNC4(ecc, SH_ESR, idx));
		FUNC5(ecc, SH_ESR, idx, ch_bit);
	} else {
		/* EDMA channel with event association */
		FUNC3(ecc->dev, "ER%d %08x\n", idx,
			FUNC4(ecc, SH_ER, idx));
		/* Clear any pending event or error */
		FUNC6(ecc, EDMA_ECR, idx, ch_bit);
		FUNC6(ecc, EDMA_EMCR, idx, ch_bit);
		/* Clear any SER */
		FUNC5(ecc, SH_SECR, idx, ch_bit);
		FUNC5(ecc, SH_EESR, idx, ch_bit);
		FUNC3(ecc->dev, "EER%d %08x\n", idx,
			FUNC4(ecc, SH_EER, idx));
	}
}