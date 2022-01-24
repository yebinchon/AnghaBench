#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct amdgpu_ring {int ring_size; void* wptr; int /*<<< orphan*/  gpu_addr; } ;
struct TYPE_7__ {int gb_addr_config; } ;
struct TYPE_8__ {TYPE_3__ config; } ;
struct TYPE_6__ {int num_vcn_inst; int harvest_config; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_2__ vcn; } ;
struct TYPE_5__ {struct amdgpu_ring ring_jpeg; } ;

/* Variables and functions */
 int JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT ; 
 int JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT ; 
 int JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT ; 
 int JPEG_CGC_CTRL__JMCIF_MODE_MASK ; 
 int JPEG_CGC_CTRL__JPEG2_DEC_MODE_MASK ; 
 int JPEG_CGC_CTRL__JPEG_DEC_MODE_MASK ; 
 int JPEG_CGC_CTRL__JRBBM_MODE_MASK ; 
 int JPEG_CGC_GATE__JMCIF_MASK ; 
 int JPEG_CGC_GATE__JPEG2_DEC_MASK ; 
 int JPEG_CGC_GATE__JPEG_DEC_MASK ; 
 int JPEG_CGC_GATE__JRBBM_MASK ; 
 int /*<<< orphan*/  JPEG_SYS_INT_EN__DJRBC_MASK ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  UVD_JMI_CNTL__SOFT_RESET_MASK ; 
 int /*<<< orphan*/  UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK ; 
 int /*<<< orphan*/  VCN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmJPEG_CGC_CTRL ; 
 int /*<<< orphan*/  mmJPEG_CGC_GATE ; 
 int /*<<< orphan*/  mmJPEG_DEC_GFX10_ADDR_CONFIG ; 
 int /*<<< orphan*/  mmJPEG_DEC_GFX8_ADDR_CONFIG ; 
 int /*<<< orphan*/  mmJPEG_SYS_INT_EN ; 
 int /*<<< orphan*/  mmUVD_JMI_CNTL ; 
 int /*<<< orphan*/  mmUVD_JPEG_POWER_STATUS ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_CNTL ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_RPTR ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_SIZE ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_WPTR ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_VMID ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	uint32_t tmp;
	int i;

	for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
		if (adev->vcn.harvest_config & (1 << i))
			continue;
		ring = &adev->vcn.inst[i].ring_jpeg;
		/* disable anti hang mechanism */
		FUNC2(FUNC1(UVD, i, mmUVD_JPEG_POWER_STATUS), 0,
			~UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK);

		/* JPEG disable CGC */
		tmp = FUNC0(VCN, i, mmJPEG_CGC_CTRL);
		tmp |= 1 << JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT;
		tmp |= 1 << JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT;
		tmp |= 4 << JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT;
		FUNC3(VCN, i, mmJPEG_CGC_CTRL, tmp);

		tmp = FUNC0(VCN, i, mmJPEG_CGC_GATE);
		tmp &= ~(JPEG_CGC_GATE__JPEG_DEC_MASK
			| JPEG_CGC_GATE__JPEG2_DEC_MASK
			| JPEG_CGC_GATE__JMCIF_MASK
			| JPEG_CGC_GATE__JRBBM_MASK);
		FUNC3(VCN, i, mmJPEG_CGC_GATE, tmp);

		tmp = FUNC0(VCN, i, mmJPEG_CGC_CTRL);
		tmp &= ~(JPEG_CGC_CTRL__JPEG_DEC_MODE_MASK
			| JPEG_CGC_CTRL__JPEG2_DEC_MODE_MASK
			| JPEG_CGC_CTRL__JMCIF_MODE_MASK
			| JPEG_CGC_CTRL__JRBBM_MODE_MASK);
		FUNC3(VCN, i, mmJPEG_CGC_CTRL, tmp);

		/* MJPEG global tiling registers */
		FUNC3(UVD, i, mmJPEG_DEC_GFX8_ADDR_CONFIG,
			adev->gfx.config.gb_addr_config);
		FUNC3(UVD, i, mmJPEG_DEC_GFX10_ADDR_CONFIG,
			adev->gfx.config.gb_addr_config);

		/* enable JMI channel */
		FUNC2(FUNC1(UVD, i, mmUVD_JMI_CNTL), 0,
			~UVD_JMI_CNTL__SOFT_RESET_MASK);

		/* enable System Interrupt for JRBC */
		FUNC2(FUNC1(VCN, i, mmJPEG_SYS_INT_EN),
			JPEG_SYS_INT_EN__DJRBC_MASK,
			~JPEG_SYS_INT_EN__DJRBC_MASK);

		FUNC3(UVD, i, mmUVD_LMI_JRBC_RB_VMID, 0);
		FUNC3(UVD, i, mmUVD_JRBC_RB_CNTL, (0x00000001L | 0x00000002L));
		FUNC3(UVD, i, mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW,
			FUNC4(ring->gpu_addr));
		FUNC3(UVD, i, mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH,
			FUNC5(ring->gpu_addr));
		FUNC3(UVD, i, mmUVD_JRBC_RB_RPTR, 0);
		FUNC3(UVD, i, mmUVD_JRBC_RB_WPTR, 0);
		FUNC3(UVD, i, mmUVD_JRBC_RB_CNTL, 0x00000002L);
		FUNC3(UVD, i, mmUVD_JRBC_RB_SIZE, ring->ring_size / 4);
		ring->wptr = FUNC0(UVD, i, mmUVD_JRBC_RB_WPTR);
	}

	return 0;
}