#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int /*<<< orphan*/  n_layers; int /*<<< orphan*/  dimms; int /*<<< orphan*/  layers; struct i7core_pvt* pvt_info; } ;
struct TYPE_5__ {int mc_control; int mc_status; int max_dod; int ch_map; } ;
struct i7core_pvt {TYPE_1__* i7core_dev; TYPE_3__* channel; TYPE_2__ info; struct pci_dev*** pci_ch; struct pci_dev** pci_mcr; } ;
struct dimm_info {int nr_pages; int grain; int edac_mode; int mtype; int /*<<< orphan*/  label; int /*<<< orphan*/  dtype; } ;
typedef  enum mem_type { ____Placeholder_mem_type } mem_type ;
typedef  enum edac_type { ____Placeholder_edac_type } edac_type ;
struct TYPE_6__ {int is_3dimms_present; int is_single_4rank; int has_4rank; } ;
struct TYPE_4__ {int socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i7core_pvt*,int) ; 
 scalar_t__ FUNC1 (struct i7core_pvt*,int) ; 
 int /*<<< orphan*/  DEV_UNKNOWN ; 
 int /*<<< orphan*/  DEV_X16 ; 
 int /*<<< orphan*/  DEV_X4 ; 
 int /*<<< orphan*/  DEV_X8 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct i7core_pvt*) ; 
 scalar_t__ FUNC4 (struct i7core_pvt*) ; 
 struct dimm_info* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int EDAC_NONE ; 
 int EDAC_S4ECD4ED ; 
 int EDAC_S8ECD8ED ; 
 int ENODEV ; 
 int /*<<< orphan*/  MC_CHANNEL_DIMM_INIT_PARAMS ; 
 int /*<<< orphan*/  MC_CHANNEL_MAPPER ; 
 int /*<<< orphan*/  MC_CONTROL ; 
 int /*<<< orphan*/  MC_DOD_CH_DIMM0 ; 
 int /*<<< orphan*/  MC_DOD_CH_DIMM1 ; 
 int /*<<< orphan*/  MC_DOD_CH_DIMM2 ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  MC_MAX_DOD ; 
 int /*<<< orphan*/  MC_SAG_CH_0 ; 
 int /*<<< orphan*/  MC_SAG_CH_1 ; 
 int /*<<< orphan*/  MC_SAG_CH_2 ; 
 int /*<<< orphan*/  MC_SAG_CH_3 ; 
 int /*<<< orphan*/  MC_SAG_CH_4 ; 
 int /*<<< orphan*/  MC_SAG_CH_5 ; 
 int /*<<< orphan*/  MC_SAG_CH_6 ; 
 int /*<<< orphan*/  MC_SAG_CH_7 ; 
 int /*<<< orphan*/  MC_STATUS ; 
 int MEM_DDR3 ; 
 int MEM_RDDR3 ; 
 int FUNC10 (int) ; 
 int NUM_CHANS ; 
 int QUAD_RANK_PRESENT ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int REGISTERED_DIMM ; 
 int SINGLE_QUAD_RANK_PRESENT ; 
 int THREE_DIMMS_PRESENT ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 

__attribute__((used)) static int FUNC22(struct mem_ctl_info *mci)
{
	struct i7core_pvt *pvt = mci->pvt_info;
	struct pci_dev *pdev;
	int i, j;
	enum edac_type mode;
	enum mem_type mtype;
	struct dimm_info *dimm;

	/* Get data from the MC register, function 0 */
	pdev = pvt->pci_mcr[0];
	if (!pdev)
		return -ENODEV;

	/* Device 3 function 0 reads */
	FUNC20(pdev, MC_CONTROL, &pvt->info.mc_control);
	FUNC20(pdev, MC_STATUS, &pvt->info.mc_status);
	FUNC20(pdev, MC_MAX_DOD, &pvt->info.max_dod);
	FUNC20(pdev, MC_CHANNEL_MAPPER, &pvt->info.ch_map);

	FUNC14(0, "QPI %d control=0x%08x status=0x%08x dod=0x%08x map=0x%08x\n",
		 pvt->i7core_dev->socket, pvt->info.mc_control,
		 pvt->info.mc_status, pvt->info.max_dod, pvt->info.ch_map);

	if (FUNC3(pvt)) {
		FUNC14(0, "ECC enabled with x%d SDCC\n", FUNC4(pvt) ? 8 : 4);
		if (FUNC4(pvt))
			mode = EDAC_S8ECD8ED;
		else
			mode = EDAC_S4ECD4ED;
	} else {
		FUNC14(0, "ECC disabled\n");
		mode = EDAC_NONE;
	}

	/* FIXME: need to handle the error codes */
	FUNC14(0, "DOD Max limits: DIMMS: %d, %d-ranked, %d-banked x%x x 0x%x\n",
		 FUNC17(pvt->info.max_dod),
		 FUNC18(pvt->info.max_dod >> 2),
		 FUNC15(pvt->info.max_dod >> 4),
		 FUNC19(pvt->info.max_dod >> 6),
		 FUNC16(pvt->info.max_dod >> 9));

	for (i = 0; i < NUM_CHANS; i++) {
		u32 data, dimm_dod[3], value[8];

		if (!pvt->pci_ch[i][0])
			continue;

		if (!FUNC0(pvt, i)) {
			FUNC14(0, "Channel %i is not active\n", i);
			continue;
		}
		if (FUNC1(pvt, i)) {
			FUNC14(0, "Channel %i is disabled\n", i);
			continue;
		}

		/* Devices 4-6 function 0 */
		FUNC20(pvt->pci_ch[i][0],
				MC_CHANNEL_DIMM_INIT_PARAMS, &data);


		if (data & THREE_DIMMS_PRESENT)
			pvt->channel[i].is_3dimms_present = true;

		if (data & SINGLE_QUAD_RANK_PRESENT)
			pvt->channel[i].is_single_4rank = true;

		if (data & QUAD_RANK_PRESENT)
			pvt->channel[i].has_4rank = true;

		if (data & REGISTERED_DIMM)
			mtype = MEM_RDDR3;
		else
			mtype = MEM_DDR3;

		/* Devices 4-6 function 1 */
		FUNC20(pvt->pci_ch[i][1],
				MC_DOD_CH_DIMM0, &dimm_dod[0]);
		FUNC20(pvt->pci_ch[i][1],
				MC_DOD_CH_DIMM1, &dimm_dod[1]);
		FUNC20(pvt->pci_ch[i][1],
				MC_DOD_CH_DIMM2, &dimm_dod[2]);

		FUNC14(0, "Ch%d phy rd%d, wr%d (0x%08x): %s%s%s%cDIMMs\n",
			 i,
			 FUNC12(pvt->info.ch_map, i), FUNC13(pvt->info.ch_map, i),
			 data,
			 pvt->channel[i].is_3dimms_present ? "3DIMMS " : "",
			 pvt->channel[i].is_3dimms_present ? "SINGLE_4R " : "",
			 pvt->channel[i].has_4rank ? "HAS_4R " : "",
			 (data & REGISTERED_DIMM) ? 'R' : 'U');

		for (j = 0; j < 3; j++) {
			u32 banks, ranks, rows, cols;
			u32 size, npages;

			if (!FUNC2(dimm_dod[j]))
				continue;

			dimm = FUNC5(mci->layers, mci->dimms, mci->n_layers,
				       i, j, 0);
			banks = FUNC15(FUNC6(dimm_dod[j]));
			ranks = FUNC18(FUNC8(dimm_dod[j]));
			rows = FUNC19(FUNC9(dimm_dod[j]));
			cols = FUNC16(FUNC7(dimm_dod[j]));

			/* DDR3 has 8 I/O banks */
			size = (rows * cols * banks * ranks) >> (20 - 3);

			FUNC14(0, "\tdimm %d %d MiB offset: %x, bank: %d, rank: %d, row: %#x, col: %#x\n",
				 j, size,
				 FUNC11(dimm_dod[j]),
				 banks, ranks, rows, cols);

			npages = FUNC10(size);

			dimm->nr_pages = npages;

			switch (banks) {
			case 4:
				dimm->dtype = DEV_X4;
				break;
			case 8:
				dimm->dtype = DEV_X8;
				break;
			case 16:
				dimm->dtype = DEV_X16;
				break;
			default:
				dimm->dtype = DEV_UNKNOWN;
			}

			FUNC21(dimm->label, sizeof(dimm->label),
				 "CPU#%uChannel#%u_DIMM#%u",
				 pvt->i7core_dev->socket, i, j);
			dimm->grain = 8;
			dimm->edac_mode = mode;
			dimm->mtype = mtype;
		}

		FUNC20(pdev, MC_SAG_CH_0, &value[0]);
		FUNC20(pdev, MC_SAG_CH_1, &value[1]);
		FUNC20(pdev, MC_SAG_CH_2, &value[2]);
		FUNC20(pdev, MC_SAG_CH_3, &value[3]);
		FUNC20(pdev, MC_SAG_CH_4, &value[4]);
		FUNC20(pdev, MC_SAG_CH_5, &value[5]);
		FUNC20(pdev, MC_SAG_CH_6, &value[6]);
		FUNC20(pdev, MC_SAG_CH_7, &value[7]);
		FUNC14(1, "\t[%i] DIVBY3\tREMOVED\tOFFSET\n", i);
		for (j = 0; j < 8; j++)
			FUNC14(1, "\t\t%#x\t%#x\t%#x\n",
				 (value[j] >> 27) & 0x1,
				 (value[j] >> 24) & 0x7,
				 (value[j] & ((1 << 24) - 1)));
	}

	return 0;
}