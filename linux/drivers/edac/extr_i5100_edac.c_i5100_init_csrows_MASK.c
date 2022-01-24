#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mem_ctl_info {int tot_dimms; int /*<<< orphan*/  n_layers; int /*<<< orphan*/  dimms; int /*<<< orphan*/  layers; struct i5100_priv* pvt_info; } ;
struct i5100_priv {TYPE_1__** mtr; } ;
struct dimm_info {unsigned long nr_pages; int grain; int /*<<< orphan*/  label; int /*<<< orphan*/  edac_mode; int /*<<< orphan*/  mtype; int /*<<< orphan*/  dtype; } ;
struct TYPE_2__ {int width; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_X4 ; 
 int /*<<< orphan*/  DEV_X8 ; 
 struct dimm_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int const,unsigned int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDAC_SECDED ; 
 int /*<<< orphan*/  MEM_RDDR2 ; 
 scalar_t__ FUNC1 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int const,unsigned int const,long) ; 
 unsigned int FUNC3 (struct mem_ctl_info*,int) ; 
 unsigned int FUNC4 (struct mem_ctl_info*,int) ; 
 unsigned long FUNC5 (struct mem_ctl_info*,int) ; 
 int FUNC6 (struct mem_ctl_info*,unsigned int const,unsigned int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static void FUNC8(struct mem_ctl_info *mci)
{
	int i;
	struct i5100_priv *priv = mci->pvt_info;

	for (i = 0; i < mci->tot_dimms; i++) {
		struct dimm_info *dimm;
		const unsigned long npages = FUNC5(mci, i);
		const unsigned int chan = FUNC3(mci, i);
		const unsigned int rank = FUNC4(mci, i);

		if (!npages)
			continue;

		dimm = FUNC0(mci->layers, mci->dimms, mci->n_layers,
			       chan, rank, 0);

		dimm->nr_pages = npages;
		dimm->grain = 32;
		dimm->dtype = (priv->mtr[chan][rank].width == 4) ?
				DEV_X4 : DEV_X8;
		dimm->mtype = MEM_RDDR2;
		dimm->edac_mode = EDAC_SECDED;
		FUNC7(dimm->label, sizeof(dimm->label), "DIMM%u",
			 FUNC6(mci, chan, rank));

		FUNC2(2, "dimm channel %d, rank %d, size %ld\n",
			 chan, rank, (long)FUNC1(npages));
	}
}