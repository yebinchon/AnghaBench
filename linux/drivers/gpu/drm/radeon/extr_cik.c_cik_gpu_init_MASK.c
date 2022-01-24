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
struct TYPE_3__ {int max_shader_engines; int max_tile_pipes; int max_cu_per_sh; int max_sh_per_se; int max_backends_per_se; int max_texture_channel_caches; int max_gprs; int max_gs_threads; int max_hw_contexts; int sc_prim_fifo_size_frontend; int sc_prim_fifo_size_backend; int sc_hiz_tile_fifo_size; int sc_earlyz_tile_fifo_size; int num_tile_pipes; int mem_max_burst_length_bytes; int mem_row_size_in_kb; int shader_engine_tile_size; int num_gpus; int multi_gpu_tile_size; int tile_config; scalar_t__ active_cus; } ;
struct TYPE_4__ {TYPE_1__ cik; } ;
struct radeon_device {int family; TYPE_2__ config; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BIF_FB_EN ; 
 int BONAIRE_GB_ADDR_CONFIG_GOLDEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int CB_HW_CONTROL ; 
#define  CHIP_BONAIRE 132 
#define  CHIP_HAWAII 131 
#define  CHIP_KABINI 130 
#define  CHIP_KAVERI 129 
#define  CHIP_MULLINS 128 
 int CLIP_VTX_REORDER_ENA ; 
 int CP_MEQ_THRESHOLDS ; 
 int CP_PERFMON_CNTL ; 
 int DB_DEBUG ; 
 int DB_DEBUG2 ; 
 int DB_DEBUG3 ; 
 int DMIF_ADDR_CALC ; 
 int ENABLE_PA_SC_OUT_OF_ORDER ; 
 int /*<<< orphan*/  ES_AND_GS_AUTO ; 
 int FB_READ_EN ; 
 int FB_WRITE_EN ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int GB_ADDR_CONFIG ; 
 int GRBM_CNTL ; 
 int FUNC4 (int) ; 
 int HAWAII_GB_ADDR_CONFIG_GOLDEN ; 
 int HDP_ADDR_CONFIG ; 
 int HDP_FLUSH_INVALIDATE_CACHE ; 
 int HDP_HOST_PATH_CNTL ; 
 int HDP_MISC_CNTL ; 
 int MC_ARB_RAMCFG ; 
 int MC_SHARED_CHMAP ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int NOOFBANK_MASK ; 
 int NOOFBANK_SHIFT ; 
 int NOOFCOLS_MASK ; 
 int NOOFCOLS_SHIFT ; 
 int FUNC7 (int) ; 
 int PA_CL_ENHANCE ; 
 int PA_SC_ENHANCE ; 
 int PA_SC_FIFO_SIZE ; 
 int PA_SC_FORCE_EOV_MAX_CNTS ; 
 int PA_SC_LINE_STIPPLE_STATE ; 
 int PIPE_INTERLEAVE_SIZE_MASK ; 
 int PIPE_INTERLEAVE_SIZE_SHIFT ; 
 int FUNC8 (int) ; 
 int ROW_SIZE_MASK ; 
 int ROW_SIZE_SHIFT ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int SDMA0_REGISTER_OFFSET ; 
 int SDMA0_TILING_CONFIG ; 
 int SDMA1_REGISTER_OFFSET ; 
 int SPI_CONFIG_CNTL ; 
 int SPI_CONFIG_CNTL_1 ; 
 int SQ_CONFIG ; 
 int SRBM_INT_ACK ; 
 int SRBM_INT_CNTL ; 
 int SX_DEBUG_1 ; 
 int TA_CNTL_AUX ; 
 int UVD_UDEC_ADDR_CONFIG ; 
 int UVD_UDEC_DBW_ADDR_CONFIG ; 
 int UVD_UDEC_DB_ADDR_CONFIG ; 
 int /*<<< orphan*/  VC_AND_TC ; 
 int VGT_CACHE_INVALIDATION ; 
 int VGT_GS_VERTEX_REUSE ; 
 int VGT_NUM_INSTANCES ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static void FUNC21(struct radeon_device *rdev)
{
	u32 gb_addr_config = FUNC9(GB_ADDR_CONFIG);
	u32 mc_shared_chmap, mc_arb_ramcfg;
	u32 hdp_host_path_cntl;
	u32 tmp;
	int i, j;

	switch (rdev->family) {
	case CHIP_BONAIRE:
		rdev->config.cik.max_shader_engines = 2;
		rdev->config.cik.max_tile_pipes = 4;
		rdev->config.cik.max_cu_per_sh = 7;
		rdev->config.cik.max_sh_per_se = 1;
		rdev->config.cik.max_backends_per_se = 2;
		rdev->config.cik.max_texture_channel_caches = 4;
		rdev->config.cik.max_gprs = 256;
		rdev->config.cik.max_gs_threads = 32;
		rdev->config.cik.max_hw_contexts = 8;

		rdev->config.cik.sc_prim_fifo_size_frontend = 0x20;
		rdev->config.cik.sc_prim_fifo_size_backend = 0x100;
		rdev->config.cik.sc_hiz_tile_fifo_size = 0x30;
		rdev->config.cik.sc_earlyz_tile_fifo_size = 0x130;
		gb_addr_config = BONAIRE_GB_ADDR_CONFIG_GOLDEN;
		break;
	case CHIP_HAWAII:
		rdev->config.cik.max_shader_engines = 4;
		rdev->config.cik.max_tile_pipes = 16;
		rdev->config.cik.max_cu_per_sh = 11;
		rdev->config.cik.max_sh_per_se = 1;
		rdev->config.cik.max_backends_per_se = 4;
		rdev->config.cik.max_texture_channel_caches = 16;
		rdev->config.cik.max_gprs = 256;
		rdev->config.cik.max_gs_threads = 32;
		rdev->config.cik.max_hw_contexts = 8;

		rdev->config.cik.sc_prim_fifo_size_frontend = 0x20;
		rdev->config.cik.sc_prim_fifo_size_backend = 0x100;
		rdev->config.cik.sc_hiz_tile_fifo_size = 0x30;
		rdev->config.cik.sc_earlyz_tile_fifo_size = 0x130;
		gb_addr_config = HAWAII_GB_ADDR_CONFIG_GOLDEN;
		break;
	case CHIP_KAVERI:
		rdev->config.cik.max_shader_engines = 1;
		rdev->config.cik.max_tile_pipes = 4;
		rdev->config.cik.max_cu_per_sh = 8;
		rdev->config.cik.max_backends_per_se = 2;
		rdev->config.cik.max_sh_per_se = 1;
		rdev->config.cik.max_texture_channel_caches = 4;
		rdev->config.cik.max_gprs = 256;
		rdev->config.cik.max_gs_threads = 16;
		rdev->config.cik.max_hw_contexts = 8;

		rdev->config.cik.sc_prim_fifo_size_frontend = 0x20;
		rdev->config.cik.sc_prim_fifo_size_backend = 0x100;
		rdev->config.cik.sc_hiz_tile_fifo_size = 0x30;
		rdev->config.cik.sc_earlyz_tile_fifo_size = 0x130;
		gb_addr_config = BONAIRE_GB_ADDR_CONFIG_GOLDEN;
		break;
	case CHIP_KABINI:
	case CHIP_MULLINS:
	default:
		rdev->config.cik.max_shader_engines = 1;
		rdev->config.cik.max_tile_pipes = 2;
		rdev->config.cik.max_cu_per_sh = 2;
		rdev->config.cik.max_sh_per_se = 1;
		rdev->config.cik.max_backends_per_se = 1;
		rdev->config.cik.max_texture_channel_caches = 2;
		rdev->config.cik.max_gprs = 256;
		rdev->config.cik.max_gs_threads = 16;
		rdev->config.cik.max_hw_contexts = 8;

		rdev->config.cik.sc_prim_fifo_size_frontend = 0x20;
		rdev->config.cik.sc_prim_fifo_size_backend = 0x100;
		rdev->config.cik.sc_hiz_tile_fifo_size = 0x30;
		rdev->config.cik.sc_earlyz_tile_fifo_size = 0x130;
		gb_addr_config = BONAIRE_GB_ADDR_CONFIG_GOLDEN;
		break;
	}

	/* Initialize HDP */
	for (i = 0, j = 0; i < 32; i++, j += 0x18) {
		FUNC15((0x2c14 + j), 0x00000000);
		FUNC15((0x2c18 + j), 0x00000000);
		FUNC15((0x2c1c + j), 0x00000000);
		FUNC15((0x2c20 + j), 0x00000000);
		FUNC15((0x2c24 + j), 0x00000000);
	}

	FUNC15(GRBM_CNTL, FUNC4(0xff));
	FUNC15(SRBM_INT_CNTL, 0x1);
	FUNC15(SRBM_INT_ACK, 0x1);

	FUNC15(BIF_FB_EN, FB_READ_EN | FB_WRITE_EN);

	mc_shared_chmap = FUNC9(MC_SHARED_CHMAP);
	mc_arb_ramcfg = FUNC9(MC_ARB_RAMCFG);

	rdev->config.cik.num_tile_pipes = rdev->config.cik.max_tile_pipes;
	rdev->config.cik.mem_max_burst_length_bytes = 256;
	tmp = (mc_arb_ramcfg & NOOFCOLS_MASK) >> NOOFCOLS_SHIFT;
	rdev->config.cik.mem_row_size_in_kb = (4 * (1 << (8 + tmp))) / 1024;
	if (rdev->config.cik.mem_row_size_in_kb > 4)
		rdev->config.cik.mem_row_size_in_kb = 4;
	/* XXX use MC settings? */
	rdev->config.cik.shader_engine_tile_size = 32;
	rdev->config.cik.num_gpus = 1;
	rdev->config.cik.multi_gpu_tile_size = 64;

	/* fix up row size */
	gb_addr_config &= ~ROW_SIZE_MASK;
	switch (rdev->config.cik.mem_row_size_in_kb) {
	case 1:
	default:
		gb_addr_config |= FUNC8(0);
		break;
	case 2:
		gb_addr_config |= FUNC8(1);
		break;
	case 4:
		gb_addr_config |= FUNC8(2);
		break;
	}

	/* setup tiling info dword.  gb_addr_config is not adequate since it does
	 * not have bank info, so create a custom tiling dword.
	 * bits 3:0   num_pipes
	 * bits 7:4   num_banks
	 * bits 11:8  group_size
	 * bits 15:12 row_size
	 */
	rdev->config.cik.tile_config = 0;
	switch (rdev->config.cik.num_tile_pipes) {
	case 1:
		rdev->config.cik.tile_config |= (0 << 0);
		break;
	case 2:
		rdev->config.cik.tile_config |= (1 << 0);
		break;
	case 4:
		rdev->config.cik.tile_config |= (2 << 0);
		break;
	case 8:
	default:
		/* XXX what about 12? */
		rdev->config.cik.tile_config |= (3 << 0);
		break;
	}
	rdev->config.cik.tile_config |=
		((mc_arb_ramcfg & NOOFBANK_MASK) >> NOOFBANK_SHIFT) << 4;
	rdev->config.cik.tile_config |=
		((gb_addr_config & PIPE_INTERLEAVE_SIZE_MASK) >> PIPE_INTERLEAVE_SIZE_SHIFT) << 8;
	rdev->config.cik.tile_config |=
		((gb_addr_config & ROW_SIZE_MASK) >> ROW_SIZE_SHIFT) << 12;

	FUNC15(GB_ADDR_CONFIG, gb_addr_config);
	FUNC15(HDP_ADDR_CONFIG, gb_addr_config);
	FUNC15(DMIF_ADDR_CALC, gb_addr_config);
	FUNC15(SDMA0_TILING_CONFIG + SDMA0_REGISTER_OFFSET, gb_addr_config & 0x70);
	FUNC15(SDMA0_TILING_CONFIG + SDMA1_REGISTER_OFFSET, gb_addr_config & 0x70);
	FUNC15(UVD_UDEC_ADDR_CONFIG, gb_addr_config);
	FUNC15(UVD_UDEC_DB_ADDR_CONFIG, gb_addr_config);
	FUNC15(UVD_UDEC_DBW_ADDR_CONFIG, gb_addr_config);

	FUNC18(rdev);

	FUNC17(rdev, rdev->config.cik.max_shader_engines,
		     rdev->config.cik.max_sh_per_se,
		     rdev->config.cik.max_backends_per_se);

	rdev->config.cik.active_cus = 0;
	for (i = 0; i < rdev->config.cik.max_shader_engines; i++) {
		for (j = 0; j < rdev->config.cik.max_sh_per_se; j++) {
			rdev->config.cik.active_cus +=
				FUNC19(FUNC16(rdev, i, j));
		}
	}

	/* set HW defaults for 3D engine */
	FUNC15(CP_MEQ_THRESHOLDS, FUNC5(0x30) | FUNC6(0x60));

	FUNC15(SX_DEBUG_1, 0x20);

	FUNC15(TA_CNTL_AUX, 0x00010000);

	tmp = FUNC9(SPI_CONFIG_CNTL);
	tmp |= 0x03000000;
	FUNC15(SPI_CONFIG_CNTL, tmp);

	FUNC15(SQ_CONFIG, 1);

	FUNC15(DB_DEBUG, 0);

	tmp = FUNC9(DB_DEBUG2) & ~0xf00fffff;
	tmp |= 0x00000400;
	FUNC15(DB_DEBUG2, tmp);

	tmp = FUNC9(DB_DEBUG3) & ~0x0002021c;
	tmp |= 0x00020200;
	FUNC15(DB_DEBUG3, tmp);

	tmp = FUNC9(CB_HW_CONTROL) & ~0x00010000;
	tmp |= 0x00018208;
	FUNC15(CB_HW_CONTROL, tmp);

	FUNC15(SPI_CONFIG_CNTL_1, FUNC14(4));

	FUNC15(PA_SC_FIFO_SIZE, (FUNC12(rdev->config.cik.sc_prim_fifo_size_frontend) |
				 FUNC10(rdev->config.cik.sc_prim_fifo_size_backend) |
				 FUNC13(rdev->config.cik.sc_hiz_tile_fifo_size) |
				 FUNC11(rdev->config.cik.sc_earlyz_tile_fifo_size)));

	FUNC15(VGT_NUM_INSTANCES, 1);

	FUNC15(CP_PERFMON_CNTL, 0);

	FUNC15(SQ_CONFIG, 0);

	FUNC15(PA_SC_FORCE_EOV_MAX_CNTS, (FUNC2(4095) |
					  FUNC3(255)));

	FUNC15(VGT_CACHE_INVALIDATION, FUNC1(VC_AND_TC) |
	       FUNC0(ES_AND_GS_AUTO));

	FUNC15(VGT_GS_VERTEX_REUSE, 16);
	FUNC15(PA_SC_LINE_STIPPLE_STATE, 0);

	tmp = FUNC9(HDP_MISC_CNTL);
	tmp |= HDP_FLUSH_INVALIDATE_CACHE;
	FUNC15(HDP_MISC_CNTL, tmp);

	hdp_host_path_cntl = FUNC9(HDP_HOST_PATH_CNTL);
	FUNC15(HDP_HOST_PATH_CNTL, hdp_host_path_cntl);

	FUNC15(PA_CL_ENHANCE, CLIP_VTX_REORDER_ENA | FUNC7(3));
	FUNC15(PA_SC_ENHANCE, ENABLE_PA_SC_OUT_OF_ORDER);

	FUNC20(50);
}