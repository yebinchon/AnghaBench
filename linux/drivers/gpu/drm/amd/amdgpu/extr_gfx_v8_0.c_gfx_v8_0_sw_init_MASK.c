#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vi_mqd_allocation {int dummy; } ;
struct amdgpu_ring {int use_doorbell; int /*<<< orphan*/  doorbell_index; int /*<<< orphan*/  name; int /*<<< orphan*/ * ring_obj; } ;
struct amdgpu_kiq {int /*<<< orphan*/  irq; int /*<<< orphan*/  ring; } ;
struct TYPE_11__ {int num_mec; int num_pipe_per_mec; int num_queue_per_pipe; } ;
struct TYPE_9__ {TYPE_2__* funcs; } ;
struct TYPE_7__ {int /*<<< orphan*/  work; } ;
struct TYPE_12__ {int num_gfx_rings; int ce_ram_size; struct amdgpu_kiq kiq; TYPE_5__ mec; int /*<<< orphan*/  eop_irq; struct amdgpu_ring* gfx_ring; TYPE_3__ rlc; int /*<<< orphan*/  gfx_current_status; TYPE_1__ sq_work; int /*<<< orphan*/  sq_irq; int /*<<< orphan*/  cp_ecc_error_irq; int /*<<< orphan*/  priv_inst_irq; int /*<<< orphan*/  priv_reg_irq; } ;
struct TYPE_10__ {int /*<<< orphan*/  gfx_ring0; } ;
struct amdgpu_device {int asic_type; TYPE_6__ gfx; TYPE_4__ doorbell_index; } ;
struct TYPE_8__ {int (* init ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP ; 
 int /*<<< orphan*/  AMDGPU_GFX_NORMAL_MODE ; 
 int /*<<< orphan*/  AMDGPU_IRQ_CLIENTID_LEGACY ; 
#define  CHIP_CARRIZO 136 
#define  CHIP_FIJI 135 
#define  CHIP_POLARIS10 134 
#define  CHIP_POLARIS11 133 
#define  CHIP_POLARIS12 132 
#define  CHIP_STONEY 131 
#define  CHIP_TONGA 130 
#define  CHIP_TOPAZ 129 
#define  CHIP_VEGAM 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GFX8_MEC_HPD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VISLANDS30_IV_SRCID_CP_ECC_ERROR ; 
 int /*<<< orphan*/  VISLANDS30_IV_SRCID_CP_END_OF_PIPE ; 
 int /*<<< orphan*/  VISLANDS30_IV_SRCID_CP_PRIV_INSTR_FAULT ; 
 int /*<<< orphan*/  VISLANDS30_IV_SRCID_CP_PRIV_REG_FAULT ; 
 int /*<<< orphan*/  VISLANDS30_IV_SRCID_SQ_INTERRUPT_MSG ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int,int,int) ; 
 int FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct amdgpu_device*,int) ; 
 int FUNC6 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct amdgpu_device*,struct amdgpu_ring*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct amdgpu_device*,int,int,int,int) ; 
 int FUNC9 (struct amdgpu_device*) ; 
 int FUNC10 (struct amdgpu_device*) ; 
 int FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  gfx_v8_0_sq_irq_work_func ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC15(void *handle)
{
	int i, j, k, r, ring_id;
	struct amdgpu_ring *ring;
	struct amdgpu_kiq *kiq;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	switch (adev->asic_type) {
	case CHIP_TONGA:
	case CHIP_CARRIZO:
	case CHIP_FIJI:
	case CHIP_POLARIS10:
	case CHIP_POLARIS11:
	case CHIP_POLARIS12:
	case CHIP_VEGAM:
		adev->gfx.mec.num_mec = 2;
		break;
	case CHIP_TOPAZ:
	case CHIP_STONEY:
	default:
		adev->gfx.mec.num_mec = 1;
		break;
	}

	adev->gfx.mec.num_pipe_per_mec = 4;
	adev->gfx.mec.num_queue_per_pipe = 8;

	/* EOP Event */
	r = FUNC6(adev, AMDGPU_IRQ_CLIENTID_LEGACY, VISLANDS30_IV_SRCID_CP_END_OF_PIPE, &adev->gfx.eop_irq);
	if (r)
		return r;

	/* Privileged reg */
	r = FUNC6(adev, AMDGPU_IRQ_CLIENTID_LEGACY, VISLANDS30_IV_SRCID_CP_PRIV_REG_FAULT,
			      &adev->gfx.priv_reg_irq);
	if (r)
		return r;

	/* Privileged inst */
	r = FUNC6(adev, AMDGPU_IRQ_CLIENTID_LEGACY, VISLANDS30_IV_SRCID_CP_PRIV_INSTR_FAULT,
			      &adev->gfx.priv_inst_irq);
	if (r)
		return r;

	/* Add CP EDC/ECC irq  */
	r = FUNC6(adev, AMDGPU_IRQ_CLIENTID_LEGACY, VISLANDS30_IV_SRCID_CP_ECC_ERROR,
			      &adev->gfx.cp_ecc_error_irq);
	if (r)
		return r;

	/* SQ interrupts. */
	r = FUNC6(adev, AMDGPU_IRQ_CLIENTID_LEGACY, VISLANDS30_IV_SRCID_SQ_INTERRUPT_MSG,
			      &adev->gfx.sq_irq);
	if (r) {
		FUNC0("amdgpu_irq_add() for SQ failed: %d\n", r);
		return r;
	}

	FUNC1(&adev->gfx.sq_work.work, gfx_v8_0_sq_irq_work_func);

	adev->gfx.gfx_current_status = AMDGPU_GFX_NORMAL_MODE;

	FUNC12(adev);

	r = FUNC10(adev);
	if (r) {
		FUNC0("Failed to load gfx firmware!\n");
		return r;
	}

	r = adev->gfx.rlc.funcs->init(adev);
	if (r) {
		FUNC0("Failed to init rlc BOs!\n");
		return r;
	}

	r = FUNC11(adev);
	if (r) {
		FUNC0("Failed to init MEC BOs!\n");
		return r;
	}

	/* set up the gfx ring */
	for (i = 0; i < adev->gfx.num_gfx_rings; i++) {
		ring = &adev->gfx.gfx_ring[i];
		ring->ring_obj = NULL;
		FUNC13(ring->name, "gfx");
		/* no gfx doorbells on iceland */
		if (adev->asic_type != CHIP_TOPAZ) {
			ring->use_doorbell = true;
			ring->doorbell_index = adev->doorbell_index.gfx_ring0;
		}

		r = FUNC7(adev, ring, 1024, &adev->gfx.eop_irq,
				     AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP);
		if (r)
			return r;
	}


	/* set up the compute queues - allocate horizontally across pipes */
	ring_id = 0;
	for (i = 0; i < adev->gfx.mec.num_mec; ++i) {
		for (j = 0; j < adev->gfx.mec.num_queue_per_pipe; j++) {
			for (k = 0; k < adev->gfx.mec.num_pipe_per_mec; k++) {
				if (!FUNC2(adev, i, k, j))
					continue;

				r = FUNC8(adev,
								ring_id,
								i, k, j);
				if (r)
					return r;

				ring_id++;
			}
		}
	}

	r = FUNC3(adev, GFX8_MEC_HPD_SIZE);
	if (r) {
		FUNC0("Failed to init KIQ BOs!\n");
		return r;
	}

	kiq = &adev->gfx.kiq;
	r = FUNC4(adev, &kiq->ring, &kiq->irq);
	if (r)
		return r;

	/* create MQD for all compute queues as well as KIQ for SRIOV case */
	r = FUNC5(adev, sizeof(struct vi_mqd_allocation));
	if (r)
		return r;

	adev->gfx.ce_ram_size = 0x8000;

	r = FUNC9(adev);
	if (r)
		return r;

	return 0;
}