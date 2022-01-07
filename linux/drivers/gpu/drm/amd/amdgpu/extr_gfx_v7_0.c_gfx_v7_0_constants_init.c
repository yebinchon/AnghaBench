
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int gb_addr_config; int sc_prim_fifo_size_frontend; int sc_prim_fifo_size_backend; int sc_hiz_tile_fifo_size; int sc_earlyz_tile_fifo_size; } ;
struct TYPE_10__ {TYPE_4__ config; } ;
struct TYPE_8__ {int shared_aperture_start; } ;
struct TYPE_7__ {TYPE_1__* id_mgr; } ;
struct amdgpu_device {int grbm_idx_mutex; TYPE_5__ gfx; int srbm_mutex; TYPE_3__ gmc; TYPE_2__ vm_manager; } ;
struct TYPE_6__ {int num_ids; } ;


 int ALIGNMENT_MODE ;
 int APE1_MTYPE ;
 int CP_MEQ_THRESHOLDS__MEQ1_START__SHIFT ;
 int CP_MEQ_THRESHOLDS__MEQ2_START__SHIFT ;
 int DEFAULT_MTYPE ;
 int ELEMENT_SIZE ;
 int ES_AND_GS_AUTO ;
 int GRBM_CNTL__READ_TIMEOUT__SHIFT ;
 int INDEX_STRIDE ;
 int MTYPE_NC ;
 int MTYPE_UC ;
 int PA_CL_ENHANCE__CLIP_VTX_REORDER_ENA_MASK ;
 int PA_CL_ENHANCE__NUM_CLIP_SEQ__SHIFT ;
 int PA_SC_ENHANCE__ENABLE_PA_SC_OUT_OF_ORDER_MASK ;
 int PA_SC_FIFO_SIZE__SC_BACKEND_PRIM_FIFO_SIZE__SHIFT ;
 int PA_SC_FIFO_SIZE__SC_EARLYZ_TILE_FIFO_SIZE__SHIFT ;
 int PA_SC_FIFO_SIZE__SC_FRONTEND_PRIM_FIFO_SIZE__SHIFT ;
 int PA_SC_FIFO_SIZE__SC_HIZ_TILE_FIFO_SIZE__SHIFT ;
 int PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_CLK_CNT__SHIFT ;
 int PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_REZ_CNT__SHIFT ;
 int PIPE_ORDER_TS0 ;
 int PIPE_ORDER_TS1 ;
 int PIPE_ORDER_TS2 ;
 int PIPE_ORDER_TS3 ;
 int PRIVATE_ATC ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (int ) ;
 int SH_MEM_ALIGNMENT_MODE_UNALIGNED ;
 int SH_MEM_CONFIG ;
 int SH_STATIC_MEM_CONFIG ;
 int SPI_ARB_PRIORITY ;
 int SPI_CONFIG_CNTL_1__VTX_DONE_DELAY__SHIFT ;
 int SWIZZLE_ENABLE ;
 int VC_AND_TC ;
 int VGT_CACHE_INVALIDATION__AUTO_INVLD_EN__SHIFT ;
 int VGT_CACHE_INVALIDATION__CACHE_INVALIDATION__SHIFT ;
 int WREG32 (int ,int) ;
 int cik_srbm_select (struct amdgpu_device*,int ,int ,int ,int) ;
 int gfx_v7_0_config_init (struct amdgpu_device*) ;
 int gfx_v7_0_get_cu_info (struct amdgpu_device*) ;
 int gfx_v7_0_init_compute_vmid (struct amdgpu_device*) ;
 int gfx_v7_0_init_gds_vmid (struct amdgpu_device*) ;
 int gfx_v7_0_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int gfx_v7_0_setup_rb (struct amdgpu_device*) ;
 int gfx_v7_0_tiling_mode_table_init (struct amdgpu_device*) ;
 int mmCB_HW_CONTROL ;
 int mmCP_MEQ_THRESHOLDS ;
 int mmCP_PERFMON_CNTL ;
 int mmDB_DEBUG ;
 int mmDB_DEBUG2 ;
 int mmDB_DEBUG3 ;
 int mmDMIF_ADDR_CALC ;
 int mmGB_ADDR_CONFIG ;
 int mmGRBM_CNTL ;
 int mmHDP_ADDR_CONFIG ;
 int mmPA_CL_ENHANCE ;
 int mmPA_SC_ENHANCE ;
 int mmPA_SC_FIFO_SIZE ;
 int mmPA_SC_FORCE_EOV_MAX_CNTS ;
 int mmPA_SC_LINE_STIPPLE_STATE ;
 int mmSH_MEM_APE1_BASE ;
 int mmSH_MEM_APE1_LIMIT ;
 int mmSH_MEM_BASES ;
 int mmSH_MEM_CONFIG ;
 int mmSH_STATIC_MEM_CONFIG ;
 int mmSPI_ARB_PRIORITY ;
 int mmSPI_CONFIG_CNTL ;
 int mmSPI_CONFIG_CNTL_1 ;
 int mmSQ_CONFIG ;
 int mmSX_DEBUG_1 ;
 int mmTA_CNTL_AUX ;
 int mmVGT_CACHE_INVALIDATION ;
 int mmVGT_GS_VERTEX_REUSE ;
 int mmVGT_NUM_INSTANCES ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v7_0_constants_init(struct amdgpu_device *adev)
{
 u32 sh_mem_cfg, sh_static_mem_cfg, sh_mem_base;
 u32 tmp;
 int i;

 WREG32(mmGRBM_CNTL, (0xff << GRBM_CNTL__READ_TIMEOUT__SHIFT));

 WREG32(mmGB_ADDR_CONFIG, adev->gfx.config.gb_addr_config);
 WREG32(mmHDP_ADDR_CONFIG, adev->gfx.config.gb_addr_config);
 WREG32(mmDMIF_ADDR_CALC, adev->gfx.config.gb_addr_config);

 gfx_v7_0_tiling_mode_table_init(adev);

 gfx_v7_0_setup_rb(adev);
 gfx_v7_0_get_cu_info(adev);
 gfx_v7_0_config_init(adev);


 WREG32(mmCP_MEQ_THRESHOLDS,
        (0x30 << CP_MEQ_THRESHOLDS__MEQ1_START__SHIFT) |
        (0x60 << CP_MEQ_THRESHOLDS__MEQ2_START__SHIFT));

 mutex_lock(&adev->grbm_idx_mutex);




 gfx_v7_0_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);



 sh_mem_cfg = REG_SET_FIELD(0, SH_MEM_CONFIG, ALIGNMENT_MODE,
       SH_MEM_ALIGNMENT_MODE_UNALIGNED);
 sh_mem_cfg = REG_SET_FIELD(sh_mem_cfg, SH_MEM_CONFIG, DEFAULT_MTYPE,
       MTYPE_NC);
 sh_mem_cfg = REG_SET_FIELD(sh_mem_cfg, SH_MEM_CONFIG, APE1_MTYPE,
       MTYPE_UC);
 sh_mem_cfg = REG_SET_FIELD(sh_mem_cfg, SH_MEM_CONFIG, PRIVATE_ATC, 0);

 sh_static_mem_cfg = REG_SET_FIELD(0, SH_STATIC_MEM_CONFIG,
       SWIZZLE_ENABLE, 1);
 sh_static_mem_cfg = REG_SET_FIELD(sh_static_mem_cfg, SH_STATIC_MEM_CONFIG,
       ELEMENT_SIZE, 1);
 sh_static_mem_cfg = REG_SET_FIELD(sh_static_mem_cfg, SH_STATIC_MEM_CONFIG,
       INDEX_STRIDE, 3);
 WREG32(mmSH_STATIC_MEM_CONFIG, sh_static_mem_cfg);

 mutex_lock(&adev->srbm_mutex);
 for (i = 0; i < adev->vm_manager.id_mgr[0].num_ids; i++) {
  if (i == 0)
   sh_mem_base = 0;
  else
   sh_mem_base = adev->gmc.shared_aperture_start >> 48;
  cik_srbm_select(adev, 0, 0, 0, i);

  WREG32(mmSH_MEM_CONFIG, sh_mem_cfg);
  WREG32(mmSH_MEM_APE1_BASE, 1);
  WREG32(mmSH_MEM_APE1_LIMIT, 0);
  WREG32(mmSH_MEM_BASES, sh_mem_base);
 }
 cik_srbm_select(adev, 0, 0, 0, 0);
 mutex_unlock(&adev->srbm_mutex);

 gfx_v7_0_init_compute_vmid(adev);
 gfx_v7_0_init_gds_vmid(adev);

 WREG32(mmSX_DEBUG_1, 0x20);

 WREG32(mmTA_CNTL_AUX, 0x00010000);

 tmp = RREG32(mmSPI_CONFIG_CNTL);
 tmp |= 0x03000000;
 WREG32(mmSPI_CONFIG_CNTL, tmp);

 WREG32(mmSQ_CONFIG, 1);

 WREG32(mmDB_DEBUG, 0);

 tmp = RREG32(mmDB_DEBUG2) & ~0xf00fffff;
 tmp |= 0x00000400;
 WREG32(mmDB_DEBUG2, tmp);

 tmp = RREG32(mmDB_DEBUG3) & ~0x0002021c;
 tmp |= 0x00020200;
 WREG32(mmDB_DEBUG3, tmp);

 tmp = RREG32(mmCB_HW_CONTROL) & ~0x00010000;
 tmp |= 0x00018208;
 WREG32(mmCB_HW_CONTROL, tmp);

 WREG32(mmSPI_CONFIG_CNTL_1, (4 << SPI_CONFIG_CNTL_1__VTX_DONE_DELAY__SHIFT));

 WREG32(mmPA_SC_FIFO_SIZE,
  ((adev->gfx.config.sc_prim_fifo_size_frontend << PA_SC_FIFO_SIZE__SC_FRONTEND_PRIM_FIFO_SIZE__SHIFT) |
  (adev->gfx.config.sc_prim_fifo_size_backend << PA_SC_FIFO_SIZE__SC_BACKEND_PRIM_FIFO_SIZE__SHIFT) |
  (adev->gfx.config.sc_hiz_tile_fifo_size << PA_SC_FIFO_SIZE__SC_HIZ_TILE_FIFO_SIZE__SHIFT) |
  (adev->gfx.config.sc_earlyz_tile_fifo_size << PA_SC_FIFO_SIZE__SC_EARLYZ_TILE_FIFO_SIZE__SHIFT)));

 WREG32(mmVGT_NUM_INSTANCES, 1);

 WREG32(mmCP_PERFMON_CNTL, 0);

 WREG32(mmSQ_CONFIG, 0);

 WREG32(mmPA_SC_FORCE_EOV_MAX_CNTS,
  ((4095 << PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_CLK_CNT__SHIFT) |
  (255 << PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_REZ_CNT__SHIFT)));

 WREG32(mmVGT_CACHE_INVALIDATION,
  (VC_AND_TC << VGT_CACHE_INVALIDATION__CACHE_INVALIDATION__SHIFT) |
  (ES_AND_GS_AUTO << VGT_CACHE_INVALIDATION__AUTO_INVLD_EN__SHIFT));

 WREG32(mmVGT_GS_VERTEX_REUSE, 16);
 WREG32(mmPA_SC_LINE_STIPPLE_STATE, 0);

 WREG32(mmPA_CL_ENHANCE, PA_CL_ENHANCE__CLIP_VTX_REORDER_ENA_MASK |
   (3 << PA_CL_ENHANCE__NUM_CLIP_SEQ__SHIFT));
 WREG32(mmPA_SC_ENHANCE, PA_SC_ENHANCE__ENABLE_PA_SC_OUT_OF_ORDER_MASK);

 tmp = RREG32(mmSPI_ARB_PRIORITY);
 tmp = REG_SET_FIELD(tmp, SPI_ARB_PRIORITY, PIPE_ORDER_TS0, 2);
 tmp = REG_SET_FIELD(tmp, SPI_ARB_PRIORITY, PIPE_ORDER_TS1, 2);
 tmp = REG_SET_FIELD(tmp, SPI_ARB_PRIORITY, PIPE_ORDER_TS2, 2);
 tmp = REG_SET_FIELD(tmp, SPI_ARB_PRIORITY, PIPE_ORDER_TS3, 2);
 WREG32(mmSPI_ARB_PRIORITY, tmp);

 mutex_unlock(&adev->grbm_idx_mutex);

 udelay(50);
}
