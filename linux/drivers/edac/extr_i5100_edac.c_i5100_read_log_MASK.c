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
typedef  unsigned int u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {struct pci_dev* ch0mm; struct pci_dev* ch1mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  I5100_NRECMEMA ; 
 int /*<<< orphan*/  I5100_NRECMEMB ; 
 int /*<<< orphan*/  I5100_RECMEMA ; 
 int /*<<< orphan*/  I5100_RECMEMB ; 
 int /*<<< orphan*/  I5100_REDMEMA ; 
 int /*<<< orphan*/  I5100_REDMEMB ; 
 int /*<<< orphan*/  I5100_VALIDLOG ; 
 char* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,char const*) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (unsigned int) ; 
 unsigned int FUNC9 (unsigned int) ; 
 unsigned int FUNC10 (unsigned int) ; 
 unsigned int FUNC11 (unsigned int) ; 
 unsigned int FUNC12 (unsigned int) ; 
 unsigned int FUNC13 (unsigned int) ; 
 scalar_t__ FUNC14 (unsigned int) ; 
 scalar_t__ FUNC15 (unsigned int) ; 
 scalar_t__ FUNC16 (unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC19(struct mem_ctl_info *mci, int chan,
			   u32 ferr, u32 nerr)
{
	struct i5100_priv *priv = mci->pvt_info;
	struct pci_dev *pdev = (chan) ? priv->ch1mm : priv->ch0mm;
	u32 dw;
	u32 dw2;
	unsigned syndrome = 0;
	unsigned ecc_loc = 0;
	unsigned merr;
	unsigned bank;
	unsigned rank;
	unsigned cas;
	unsigned ras;

	FUNC17(pdev, I5100_VALIDLOG, &dw);

	if (FUNC16(dw)) {
		FUNC17(pdev, I5100_REDMEMA, &dw2);
		syndrome = dw2;
		FUNC17(pdev, I5100_REDMEMB, &dw2);
		ecc_loc = FUNC13(dw2);
	}

	if (FUNC15(dw)) {
		const char *msg;

		FUNC17(pdev, I5100_RECMEMA, &dw2);
		merr = FUNC9(dw2);
		bank = FUNC8(dw2);
		rank = FUNC10(dw2);

		FUNC17(pdev, I5100_RECMEMB, &dw2);
		cas = FUNC11(dw2);
		ras = FUNC12(dw2);

		/* FIXME:  not really sure if this is what merr is...
		 */
		if (!merr)
			msg = FUNC0(ferr);
		else
			msg = FUNC0(nerr);

		FUNC1(mci, chan, bank, rank, syndrome, cas, ras, msg);
	}

	if (FUNC14(dw)) {
		const char *msg;

		FUNC17(pdev, I5100_NRECMEMA, &dw2);
		merr = FUNC4(dw2);
		bank = FUNC3(dw2);
		rank = FUNC5(dw2);

		FUNC17(pdev, I5100_NRECMEMB, &dw2);
		cas = FUNC6(dw2);
		ras = FUNC7(dw2);

		/* FIXME:  not really sure if this is what merr is...
		 */
		if (!merr)
			msg = FUNC0(ferr);
		else
			msg = FUNC0(nerr);

		FUNC2(mci, chan, bank, rank, syndrome, cas, ras, msg);
	}

	FUNC18(pdev, I5100_VALIDLOG, dw);
}