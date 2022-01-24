#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct arm_smmu_device {int features; scalar_t__ version; unsigned int streamid_mask; unsigned int num_mapping_groups; int pgshift; int numpage; unsigned int num_s2_context_banks; unsigned int num_context_banks; unsigned int ipa_size; unsigned int pa_size; unsigned int va_size; int pgsize_bitmap; TYPE_1__* impl; int /*<<< orphan*/  dev; void* cbs; int /*<<< orphan*/  global_sync_lock; int /*<<< orphan*/  stream_map_mutex; int /*<<< orphan*/ * s2crs; void* smrs; } ;
struct TYPE_4__ {unsigned long pgsize_bitmap; } ;
struct TYPE_3__ {int (* cfg_probe ) (struct arm_smmu_device*) ;} ;

/* Variables and functions */
 int ARM_SMMU_FEAT_COHERENT_WALK ; 
 int ARM_SMMU_FEAT_EXIDS ; 
 int ARM_SMMU_FEAT_FMT_AARCH32_L ; 
 int ARM_SMMU_FEAT_FMT_AARCH32_S ; 
 int ARM_SMMU_FEAT_FMT_AARCH64_16K ; 
 int ARM_SMMU_FEAT_FMT_AARCH64_4K ; 
 int ARM_SMMU_FEAT_FMT_AARCH64_64K ; 
 int ARM_SMMU_FEAT_STREAM_MATCH ; 
 int ARM_SMMU_FEAT_TRANS_NESTED ; 
 int ARM_SMMU_FEAT_TRANS_OPS ; 
 int ARM_SMMU_FEAT_TRANS_S1 ; 
 int ARM_SMMU_FEAT_TRANS_S2 ; 
 int ARM_SMMU_FEAT_VMID16 ; 
 int /*<<< orphan*/  ARM_SMMU_GR0_ID0 ; 
 int /*<<< orphan*/  ARM_SMMU_GR0_ID1 ; 
 int /*<<< orphan*/  ARM_SMMU_GR0_ID2 ; 
 scalar_t__ ARM_SMMU_V1_64K ; 
 scalar_t__ ARM_SMMU_V2 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ID0_ATOSNS ; 
 int ID0_CTTW ; 
 int ID0_EXIDS ; 
 int ID0_NTS ; 
 int /*<<< orphan*/  ID0_NUMSIDB ; 
 int /*<<< orphan*/  ID0_NUMSMRG ; 
 int ID0_PTFS_NO_AARCH32 ; 
 int ID0_PTFS_NO_AARCH32S ; 
 int ID0_S1TS ; 
 int ID0_S2TS ; 
 int ID0_SMS ; 
 int /*<<< orphan*/  ID1_NUMCB ; 
 int /*<<< orphan*/  ID1_NUMPAGENDXB ; 
 int /*<<< orphan*/  ID1_NUMS2CB ; 
 int ID1_PAGESIZE ; 
 int /*<<< orphan*/  ID2_IAS ; 
 int /*<<< orphan*/  ID2_OAS ; 
 int ID2_PTFS_16K ; 
 int ID2_PTFS_4K ; 
 int ID2_PTFS_64K ; 
 int /*<<< orphan*/  ID2_UBS ; 
 int ID2_VMID16 ; 
 int SZ_16K ; 
 int SZ_16M ; 
 int SZ_1G ; 
 int SZ_1M ; 
 int SZ_2M ; 
 int SZ_32M ; 
 int SZ_4K ; 
 int SZ_512M ; 
 int SZ_64K ; 
 int FUNC2 (struct arm_smmu_device*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned int) ; 
 TYPE_2__ arm_smmu_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC7 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int force_stage ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s2cr_init_val ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct arm_smmu_device*) ; 

__attribute__((used)) static int FUNC13(struct arm_smmu_device *smmu)
{
	unsigned int size;
	u32 id;
	bool cttw_reg, cttw_fw = smmu->features & ARM_SMMU_FEAT_COHERENT_WALK;
	int i;

	FUNC5(smmu->dev, "probing hardware configuration...\n");
	FUNC5(smmu->dev, "SMMUv%d with:\n",
			smmu->version == ARM_SMMU_V2 ? 2 : 1);

	/* ID0 */
	id = FUNC2(smmu, ARM_SMMU_GR0_ID0);

	/* Restrict available stages based on module parameter */
	if (force_stage == 1)
		id &= ~(ID0_S2TS | ID0_NTS);
	else if (force_stage == 2)
		id &= ~(ID0_S1TS | ID0_NTS);

	if (id & ID0_S1TS) {
		smmu->features |= ARM_SMMU_FEAT_TRANS_S1;
		FUNC5(smmu->dev, "\tstage 1 translation\n");
	}

	if (id & ID0_S2TS) {
		smmu->features |= ARM_SMMU_FEAT_TRANS_S2;
		FUNC5(smmu->dev, "\tstage 2 translation\n");
	}

	if (id & ID0_NTS) {
		smmu->features |= ARM_SMMU_FEAT_TRANS_NESTED;
		FUNC5(smmu->dev, "\tnested translation\n");
	}

	if (!(smmu->features &
		(ARM_SMMU_FEAT_TRANS_S1 | ARM_SMMU_FEAT_TRANS_S2))) {
		FUNC4(smmu->dev, "\tno translation support!\n");
		return -ENODEV;
	}

	if ((id & ID0_S1TS) &&
		((smmu->version < ARM_SMMU_V2) || !(id & ID0_ATOSNS))) {
		smmu->features |= ARM_SMMU_FEAT_TRANS_OPS;
		FUNC5(smmu->dev, "\taddress translation ops\n");
	}

	/*
	 * In order for DMA API calls to work properly, we must defer to what
	 * the FW says about coherency, regardless of what the hardware claims.
	 * Fortunately, this also opens up a workaround for systems where the
	 * ID register value has ended up configured incorrectly.
	 */
	cttw_reg = !!(id & ID0_CTTW);
	if (cttw_fw || cttw_reg)
		FUNC5(smmu->dev, "\t%scoherent table walk\n",
			   cttw_fw ? "" : "non-");
	if (cttw_fw != cttw_reg)
		FUNC5(smmu->dev,
			   "\t(IDR0.CTTW overridden by FW configuration)\n");

	/* Max. number of entries we have for stream matching/indexing */
	if (smmu->version == ARM_SMMU_V2 && id & ID0_EXIDS) {
		smmu->features |= ARM_SMMU_FEAT_EXIDS;
		size = 1 << 16;
	} else {
		size = 1 << FUNC1(ID0_NUMSIDB, id);
	}
	smmu->streamid_mask = size - 1;
	if (id & ID0_SMS) {
		smmu->features |= ARM_SMMU_FEAT_STREAM_MATCH;
		size = FUNC1(ID0_NUMSMRG, id);
		if (size == 0) {
			FUNC4(smmu->dev,
				"stream-matching supported, but no SMRs present!\n");
			return -ENODEV;
		}

		/* Zero-initialised to mark as invalid */
		smmu->smrs = FUNC7(smmu->dev, size, sizeof(*smmu->smrs),
					  GFP_KERNEL);
		if (!smmu->smrs)
			return -ENOMEM;

		FUNC5(smmu->dev,
			   "\tstream matching with %u register groups", size);
	}
	/* s2cr->type == 0 means translation, so initialise explicitly */
	smmu->s2crs = FUNC8(smmu->dev, size, sizeof(*smmu->s2crs),
					 GFP_KERNEL);
	if (!smmu->s2crs)
		return -ENOMEM;
	for (i = 0; i < size; i++)
		smmu->s2crs[i] = s2cr_init_val;

	smmu->num_mapping_groups = size;
	FUNC10(&smmu->stream_map_mutex);
	FUNC11(&smmu->global_sync_lock);

	if (smmu->version < ARM_SMMU_V2 || !(id & ID0_PTFS_NO_AARCH32)) {
		smmu->features |= ARM_SMMU_FEAT_FMT_AARCH32_L;
		if (!(id & ID0_PTFS_NO_AARCH32S))
			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH32_S;
	}

	/* ID1 */
	id = FUNC2(smmu, ARM_SMMU_GR0_ID1);
	smmu->pgshift = (id & ID1_PAGESIZE) ? 16 : 12;

	/* Check for size mismatch of SMMU address space from mapped region */
	size = 1 << (FUNC1(ID1_NUMPAGENDXB, id) + 1);
	if (smmu->numpage != 2 * size << smmu->pgshift)
		FUNC6(smmu->dev,
			"SMMU address space size (0x%x) differs from mapped region size (0x%x)!\n",
			2 * size << smmu->pgshift, smmu->numpage);
	/* Now properly encode NUMPAGE to subsequently derive SMMU_CB_BASE */
	smmu->numpage = size;

	smmu->num_s2_context_banks = FUNC1(ID1_NUMS2CB, id);
	smmu->num_context_banks = FUNC1(ID1_NUMCB, id);
	if (smmu->num_s2_context_banks > smmu->num_context_banks) {
		FUNC4(smmu->dev, "impossible number of S2 context banks!\n");
		return -ENODEV;
	}
	FUNC5(smmu->dev, "\t%u context banks (%u stage-2 only)\n",
		   smmu->num_context_banks, smmu->num_s2_context_banks);
	smmu->cbs = FUNC7(smmu->dev, smmu->num_context_banks,
				 sizeof(*smmu->cbs), GFP_KERNEL);
	if (!smmu->cbs)
		return -ENOMEM;

	/* ID2 */
	id = FUNC2(smmu, ARM_SMMU_GR0_ID2);
	size = FUNC3(FUNC1(ID2_IAS, id));
	smmu->ipa_size = size;

	/* The output mask is also applied for bypass */
	size = FUNC3(FUNC1(ID2_OAS, id));
	smmu->pa_size = size;

	if (id & ID2_VMID16)
		smmu->features |= ARM_SMMU_FEAT_VMID16;

	/*
	 * What the page table walker can address actually depends on which
	 * descriptor format is in use, but since a) we don't know that yet,
	 * and b) it can vary per context bank, this will have to do...
	 */
	if (FUNC9(smmu->dev, FUNC0(size)))
		FUNC6(smmu->dev,
			 "failed to set DMA mask for table walker\n");

	if (smmu->version < ARM_SMMU_V2) {
		smmu->va_size = smmu->ipa_size;
		if (smmu->version == ARM_SMMU_V1_64K)
			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_64K;
	} else {
		size = FUNC1(ID2_UBS, id);
		smmu->va_size = FUNC3(size);
		if (id & ID2_PTFS_4K)
			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_4K;
		if (id & ID2_PTFS_16K)
			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_16K;
		if (id & ID2_PTFS_64K)
			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_64K;
	}

	/* Now we've corralled the various formats, what'll it do? */
	if (smmu->features & ARM_SMMU_FEAT_FMT_AARCH32_S)
		smmu->pgsize_bitmap |= SZ_4K | SZ_64K | SZ_1M | SZ_16M;
	if (smmu->features &
	    (ARM_SMMU_FEAT_FMT_AARCH32_L | ARM_SMMU_FEAT_FMT_AARCH64_4K))
		smmu->pgsize_bitmap |= SZ_4K | SZ_2M | SZ_1G;
	if (smmu->features & ARM_SMMU_FEAT_FMT_AARCH64_16K)
		smmu->pgsize_bitmap |= SZ_16K | SZ_32M;
	if (smmu->features & ARM_SMMU_FEAT_FMT_AARCH64_64K)
		smmu->pgsize_bitmap |= SZ_64K | SZ_512M;

	if (arm_smmu_ops.pgsize_bitmap == -1UL)
		arm_smmu_ops.pgsize_bitmap = smmu->pgsize_bitmap;
	else
		arm_smmu_ops.pgsize_bitmap |= smmu->pgsize_bitmap;
	FUNC5(smmu->dev, "\tSupported page sizes: 0x%08lx\n",
		   smmu->pgsize_bitmap);


	if (smmu->features & ARM_SMMU_FEAT_TRANS_S1)
		FUNC5(smmu->dev, "\tStage-1: %lu-bit VA -> %lu-bit IPA\n",
			   smmu->va_size, smmu->ipa_size);

	if (smmu->features & ARM_SMMU_FEAT_TRANS_S2)
		FUNC5(smmu->dev, "\tStage-2: %lu-bit IPA -> %lu-bit PA\n",
			   smmu->ipa_size, smmu->pa_size);

	if (smmu->impl && smmu->impl->cfg_probe)
		return smmu->impl->cfg_probe(smmu);

	return 0;
}