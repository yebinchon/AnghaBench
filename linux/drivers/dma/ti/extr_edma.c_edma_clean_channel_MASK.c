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
 int /*<<< orphan*/  EDMA_CCERRCLR ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDMA_EMCR ; 
 int /*<<< orphan*/  EDMA_EMR ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SH_ECR ; 
 int /*<<< orphan*/  SH_SECR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct edma_cc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct edma_cc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct edma_cc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct edma_cc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC9(struct edma_chan *echan)
{
	struct edma_cc *ecc = echan->ecc;
	int channel = FUNC2(echan->ch_num);
	int idx = FUNC3(channel);
	int ch_bit = FUNC1(channel);

	FUNC4(ecc->dev, "EMR%d %08x\n", idx,
		FUNC5(ecc, EDMA_EMR, idx));
	FUNC6(ecc, SH_ECR, idx, ch_bit);
	/* Clear the corresponding EMR bits */
	FUNC8(ecc, EDMA_EMCR, idx, ch_bit);
	/* Clear any SER */
	FUNC6(ecc, SH_SECR, idx, ch_bit);
	FUNC7(ecc, EDMA_CCERRCLR, FUNC0(16) | FUNC0(1) | FUNC0(0));
}