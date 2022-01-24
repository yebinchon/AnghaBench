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
typedef  int u16 ;
struct memdev_dmi_entry {int size; int extended_size; int memory_type; int type_detail; char* total_width; char* data_width; int /*<<< orphan*/  handle; } ;
struct mem_ctl_info {int /*<<< orphan*/  n_layers; int /*<<< orphan*/  dimms; int /*<<< orphan*/  layers; } ;
struct ghes_edac_dimm_fill {int count; struct mem_ctl_info* mci; } ;
struct dmi_header {scalar_t__ type; } ;
struct dimm_info {size_t mtype; scalar_t__ edac_mode; int grain; int /*<<< orphan*/  smbios_handle; void* nr_pages; int /*<<< orphan*/  dtype; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DEV_UNKNOWN ; 
 scalar_t__ DMI_ENTRY_MEM_DEVICE ; 
 struct dimm_info* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EDAC_NONE ; 
 scalar_t__ EDAC_SECDED ; 
 size_t MEM_DDR ; 
 size_t MEM_DDR2 ; 
 size_t MEM_DDR3 ; 
 size_t MEM_DDR4 ; 
 size_t MEM_EDO ; 
 size_t MEM_FB_DDR2 ; 
 void* MEM_NVDIMM ; 
 size_t MEM_RDDR ; 
 size_t MEM_RDDR2 ; 
 size_t MEM_RDDR3 ; 
 size_t MEM_RDDR4 ; 
 size_t MEM_RDR ; 
 size_t MEM_RMBS ; 
 size_t MEM_SDR ; 
 size_t MEM_UNKNOWN ; 
 void* FUNC2 (int) ; 
 char* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int,char*,char*) ; 
 int* edac_mem_types ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(const struct dmi_header *dh, void *arg)
{
	struct ghes_edac_dimm_fill *dimm_fill = arg;
	struct mem_ctl_info *mci = dimm_fill->mci;

	if (dh->type == DMI_ENTRY_MEM_DEVICE) {
		struct memdev_dmi_entry *entry = (struct memdev_dmi_entry *)dh;
		struct dimm_info *dimm = FUNC1(mci->layers, mci->dimms,
						       mci->n_layers,
						       dimm_fill->count, 0, 0);
		u16 rdr_mask = FUNC0(7) | FUNC0(13);

		if (entry->size == 0xffff) {
			FUNC5("Can't get DIMM%i size\n",
				dimm_fill->count);
			dimm->nr_pages = FUNC2(32);/* Unknown */
		} else if (entry->size == 0x7fff) {
			dimm->nr_pages = FUNC2(entry->extended_size);
		} else {
			if (entry->size & FUNC0(15))
				dimm->nr_pages = FUNC2((entry->size & 0x7fff) << 10);
			else
				dimm->nr_pages = FUNC2(entry->size);
		}

		switch (entry->memory_type) {
		case 0x12:
			if (entry->type_detail & FUNC0(13))
				dimm->mtype = MEM_RDDR;
			else
				dimm->mtype = MEM_DDR;
			break;
		case 0x13:
			if (entry->type_detail & FUNC0(13))
				dimm->mtype = MEM_RDDR2;
			else
				dimm->mtype = MEM_DDR2;
			break;
		case 0x14:
			dimm->mtype = MEM_FB_DDR2;
			break;
		case 0x18:
			if (entry->type_detail & FUNC0(12))
				dimm->mtype = MEM_NVDIMM;
			else if (entry->type_detail & FUNC0(13))
				dimm->mtype = MEM_RDDR3;
			else
				dimm->mtype = MEM_DDR3;
			break;
		case 0x1a:
			if (entry->type_detail & FUNC0(12))
				dimm->mtype = MEM_NVDIMM;
			else if (entry->type_detail & FUNC0(13))
				dimm->mtype = MEM_RDDR4;
			else
				dimm->mtype = MEM_DDR4;
			break;
		default:
			if (entry->type_detail & FUNC0(6))
				dimm->mtype = MEM_RMBS;
			else if ((entry->type_detail & rdr_mask) == rdr_mask)
				dimm->mtype = MEM_RDR;
			else if (entry->type_detail & FUNC0(7))
				dimm->mtype = MEM_SDR;
			else if (entry->type_detail & FUNC0(9))
				dimm->mtype = MEM_EDO;
			else
				dimm->mtype = MEM_UNKNOWN;
		}

		/*
		 * Actually, we can only detect if the memory has bits for
		 * checksum or not
		 */
		if (entry->total_width == entry->data_width)
			dimm->edac_mode = EDAC_NONE;
		else
			dimm->edac_mode = EDAC_SECDED;

		dimm->dtype = DEV_UNKNOWN;
		dimm->grain = 128;		/* Likely, worse case */

		/*
		 * FIXME: It shouldn't be hard to also fill the DIMM labels
		 */

		if (dimm->nr_pages) {
			FUNC4(1, "DIMM%i: %s size = %d MB%s\n",
				dimm_fill->count, edac_mem_types[dimm->mtype],
				FUNC3(dimm->nr_pages),
				(dimm->edac_mode != EDAC_NONE) ? "(ECC)" : "");
			FUNC4(2, "\ttype %d, detail 0x%02x, width %d(total %d)\n",
				entry->memory_type, entry->type_detail,
				entry->total_width, entry->data_width);
		}

		dimm->smbios_handle = entry->handle;

		dimm_fill->count++;
	}
}