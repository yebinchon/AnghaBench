; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_constants_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_constants_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TAHITI_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@VERDE_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@HAINAN_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@mmGRBM_CNTL = common dso_local global i64 0, align 8
@GRBM_CNTL__READ_TIMEOUT__SHIFT = common dso_local global i32 0, align 4
@mmSRBM_INT_CNTL = common dso_local global i64 0, align 8
@mmSRBM_INT_ACK = common dso_local global i64 0, align 8
@mmBIF_FB_EN = common dso_local global i64 0, align 8
@BIF_FB_EN__FB_READ_EN_MASK = common dso_local global i32 0, align 4
@BIF_FB_EN__FB_WRITE_EN_MASK = common dso_local global i32 0, align 4
@mmMC_SHARED_CHMAP = common dso_local global i64 0, align 8
@mmMC_ARB_RAMCFG = common dso_local global i64 0, align 8
@MC_ARB_RAMCFG__NOOFCOLS_MASK = common dso_local global i32 0, align 4
@MC_ARB_RAMCFG__NOOFCOLS__SHIFT = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG__ROW_SIZE_MASK = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG__ROW_SIZE__SHIFT = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG__NUM_SHADER_ENGINES_MASK = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG__NUM_SHADER_ENGINES__SHIFT = common dso_local global i32 0, align 4
@mmGB_ADDR_CONFIG = common dso_local global i64 0, align 8
@mmDMIF_ADDR_CONFIG = common dso_local global i64 0, align 8
@mmDMIF_ADDR_CALC = common dso_local global i64 0, align 8
@mmHDP_ADDR_CONFIG = common dso_local global i64 0, align 8
@mmDMA_TILING_CONFIG = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@mmCP_QUEUE_THRESHOLDS = common dso_local global i64 0, align 8
@CP_QUEUE_THRESHOLDS__ROQ_IB1_START__SHIFT = common dso_local global i32 0, align 4
@CP_QUEUE_THRESHOLDS__ROQ_IB2_START__SHIFT = common dso_local global i32 0, align 4
@mmCP_MEQ_THRESHOLDS = common dso_local global i64 0, align 8
@CP_MEQ_THRESHOLDS__MEQ1_START__SHIFT = common dso_local global i32 0, align 4
@CP_MEQ_THRESHOLDS__MEQ2_START__SHIFT = common dso_local global i32 0, align 4
@mmSX_DEBUG_1 = common dso_local global i64 0, align 8
@mmSPI_CONFIG_CNTL_1 = common dso_local global i64 0, align 8
@SPI_CONFIG_CNTL_1__VTX_DONE_DELAY__SHIFT = common dso_local global i32 0, align 4
@mmPA_SC_FIFO_SIZE = common dso_local global i64 0, align 8
@PA_SC_FIFO_SIZE__SC_FRONTEND_PRIM_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE__SC_BACKEND_PRIM_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE__SC_HIZ_TILE_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE__SC_EARLYZ_TILE_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@mmVGT_NUM_INSTANCES = common dso_local global i64 0, align 8
@mmCP_PERFMON_CNTL = common dso_local global i64 0, align 8
@mmSQ_CONFIG = common dso_local global i64 0, align 8
@mmPA_SC_FORCE_EOV_MAX_CNTS = common dso_local global i64 0, align 8
@PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_CLK_CNT__SHIFT = common dso_local global i32 0, align 4
@PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_REZ_CNT__SHIFT = common dso_local global i32 0, align 4
@mmVGT_CACHE_INVALIDATION = common dso_local global i64 0, align 8
@VC_AND_TC = common dso_local global i32 0, align 4
@VGT_CACHE_INVALIDATION__CACHE_INVALIDATION__SHIFT = common dso_local global i32 0, align 4
@ES_AND_GS_AUTO = common dso_local global i32 0, align 4
@VGT_CACHE_INVALIDATION__AUTO_INVLD_EN__SHIFT = common dso_local global i32 0, align 4
@mmVGT_GS_VERTEX_REUSE = common dso_local global i64 0, align 8
@mmPA_SC_LINE_STIPPLE_STATE = common dso_local global i64 0, align 8
@mmCB_PERFCOUNTER0_SELECT0 = common dso_local global i64 0, align 8
@mmCB_PERFCOUNTER0_SELECT1 = common dso_local global i64 0, align 8
@mmCB_PERFCOUNTER1_SELECT0 = common dso_local global i64 0, align 8
@mmCB_PERFCOUNTER1_SELECT1 = common dso_local global i64 0, align 8
@mmCB_PERFCOUNTER2_SELECT0 = common dso_local global i64 0, align 8
@mmCB_PERFCOUNTER2_SELECT1 = common dso_local global i64 0, align 8
@mmCB_PERFCOUNTER3_SELECT0 = common dso_local global i64 0, align 8
@mmCB_PERFCOUNTER3_SELECT1 = common dso_local global i64 0, align 8
@mmHDP_HOST_PATH_CNTL = common dso_local global i64 0, align 8
@mmPA_CL_ENHANCE = common dso_local global i64 0, align 8
@PA_CL_ENHANCE__CLIP_VTX_REORDER_ENA_MASK = common dso_local global i32 0, align 4
@PA_CL_ENHANCE__NUM_CLIP_SEQ__SHIFT = common dso_local global i32 0, align 4
@mmUVD_UDEC_ADDR_CONFIG = common dso_local global i64 0, align 8
@mmUVD_UDEC_DBW_ADDR_CONFIG = common dso_local global i64 0, align 8
@mmUVD_UDEC_DB_ADDR_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v6_0_constants_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_constants_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %282 [
    i32 129, label %12
    i32 130, label %66
    i32 128, label %120
    i32 131, label %174
    i32 132, label %228
  ]

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 2, i32* %16, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 12, i32* %20, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 8, i32* %24, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  store i32 2, i32* %28, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  store i32 4, i32* %32, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  store i32 12, i32* %36, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 6
  store i32 256, i32* %40, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 7
  store i32 32, i32* %44, align 4
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 8
  store i32 8, i32* %48, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 9
  store i32 32, i32* %52, align 4
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 10
  store i32 256, i32* %56, align 4
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 11
  store i32 48, i32* %60, align 4
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 12
  store i32 304, i32* %64, align 4
  %65 = load i32, i32* @TAHITI_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %65, i32* %3, align 4
  br label %284

66:                                               ; preds = %1
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 2, i32* %70, align 4
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 8, i32* %74, align 4
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i32 5, i32* %78, align 4
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  store i32 2, i32* %82, align 4
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i32 4, i32* %86, align 4
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 5
  store i32 8, i32* %90, align 4
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 6
  store i32 256, i32* %94, align 4
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 7
  store i32 32, i32* %98, align 4
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 8
  store i32 8, i32* %102, align 4
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 9
  store i32 32, i32* %106, align 4
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 10
  store i32 256, i32* %110, align 4
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 11
  store i32 48, i32* %114, align 4
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 12
  store i32 304, i32* %118, align 4
  %119 = load i32, i32* @TAHITI_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %119, i32* %3, align 4
  br label %284

120:                                              ; preds = %1
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %122 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 4
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %126 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  store i32 4, i32* %128, align 4
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %130 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  store i32 5, i32* %132, align 4
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  store i32 2, i32* %136, align 4
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 4
  store i32 4, i32* %140, align 4
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 5
  store i32 4, i32* %144, align 4
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 6
  store i32 256, i32* %148, align 4
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %150 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 7
  store i32 32, i32* %152, align 4
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 8
  store i32 8, i32* %156, align 4
  %157 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %158 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 9
  store i32 32, i32* %160, align 4
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %162 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 10
  store i32 64, i32* %164, align 4
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %166 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 11
  store i32 48, i32* %168, align 4
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 12
  store i32 304, i32* %172, align 4
  %173 = load i32, i32* @VERDE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %173, i32* %3, align 4
  br label %284

174:                                              ; preds = %1
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 4
  %179 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %180 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  store i32 4, i32* %182, align 4
  %183 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %184 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  store i32 6, i32* %186, align 4
  %187 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %188 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 3
  store i32 1, i32* %190, align 4
  %191 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %192 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 4
  store i32 2, i32* %194, align 4
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %196 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 5
  store i32 4, i32* %198, align 4
  %199 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %200 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 6
  store i32 256, i32* %202, align 4
  %203 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %204 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 7
  store i32 16, i32* %206, align 4
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %208 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 8
  store i32 8, i32* %210, align 4
  %211 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %212 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 9
  store i32 32, i32* %214, align 4
  %215 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %216 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 10
  store i32 64, i32* %218, align 4
  %219 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %220 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 11
  store i32 48, i32* %222, align 4
  %223 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %224 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 12
  store i32 304, i32* %226, align 4
  %227 = load i32, i32* @VERDE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %227, i32* %3, align 4
  br label %284

228:                                              ; preds = %1
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %230 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  store i32 1, i32* %232, align 4
  %233 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %234 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  store i32 4, i32* %236, align 4
  %237 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %238 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 2
  store i32 5, i32* %240, align 4
  %241 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %242 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 3
  store i32 1, i32* %244, align 4
  %245 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %246 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 4
  store i32 1, i32* %248, align 4
  %249 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %250 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 5
  store i32 2, i32* %252, align 4
  %253 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %254 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 6
  store i32 256, i32* %256, align 4
  %257 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %258 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 7
  store i32 16, i32* %260, align 4
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %262 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 8
  store i32 8, i32* %264, align 4
  %265 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %266 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 9
  store i32 32, i32* %268, align 4
  %269 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %270 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 10
  store i32 64, i32* %272, align 4
  %273 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %274 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 11
  store i32 48, i32* %276, align 4
  %277 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %278 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 12
  store i32 304, i32* %280, align 4
  %281 = load i32, i32* @HAINAN_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %281, i32* %3, align 4
  br label %284

282:                                              ; preds = %1
  %283 = call i32 (...) @BUG()
  br label %284

284:                                              ; preds = %282, %228, %174, %120, %66, %12
  %285 = load i64, i64* @mmGRBM_CNTL, align 8
  %286 = load i32, i32* @GRBM_CNTL__READ_TIMEOUT__SHIFT, align 4
  %287 = shl i32 255, %286
  %288 = call i32 @WREG32(i64 %285, i32 %287)
  %289 = load i64, i64* @mmSRBM_INT_CNTL, align 8
  %290 = call i32 @WREG32(i64 %289, i32 1)
  %291 = load i64, i64* @mmSRBM_INT_ACK, align 8
  %292 = call i32 @WREG32(i64 %291, i32 1)
  %293 = load i64, i64* @mmBIF_FB_EN, align 8
  %294 = load i32, i32* @BIF_FB_EN__FB_READ_EN_MASK, align 4
  %295 = load i32, i32* @BIF_FB_EN__FB_WRITE_EN_MASK, align 4
  %296 = or i32 %294, %295
  %297 = call i32 @WREG32(i64 %293, i32 %296)
  %298 = load i64, i64* @mmMC_SHARED_CHMAP, align 8
  %299 = call i8* @RREG32(i64 %298)
  %300 = ptrtoint i8* %299 to i32
  store i32 %300, i32* %4, align 4
  %301 = load i64, i64* @mmMC_ARB_RAMCFG, align 8
  %302 = call i8* @RREG32(i64 %301)
  %303 = ptrtoint i8* %302 to i32
  %304 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %305 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 13
  store i32 %303, i32* %307, align 4
  %308 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %309 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 13
  %312 = load i32, i32* %311, align 4
  store i32 %312, i32* %5, align 4
  %313 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %314 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %319 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 14
  store i32 %317, i32* %321, align 4
  %322 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %323 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 15
  store i32 256, i32* %325, align 4
  %326 = load i32, i32* %5, align 4
  %327 = load i32, i32* @MC_ARB_RAMCFG__NOOFCOLS_MASK, align 4
  %328 = and i32 %326, %327
  %329 = load i32, i32* @MC_ARB_RAMCFG__NOOFCOLS__SHIFT, align 4
  %330 = ashr i32 %328, %329
  store i32 %330, i32* %8, align 4
  %331 = load i32, i32* %8, align 4
  %332 = add nsw i32 8, %331
  %333 = shl i32 1, %332
  %334 = mul nsw i32 4, %333
  %335 = sdiv i32 %334, 1024
  %336 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %337 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 16
  store i32 %335, i32* %339, align 4
  %340 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %341 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 16
  %344 = load i32, i32* %343, align 4
  %345 = icmp sgt i32 %344, 4
  br i1 %345, label %346, label %351

346:                                              ; preds = %284
  %347 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %348 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 16
  store i32 4, i32* %350, align 4
  br label %351

351:                                              ; preds = %346, %284
  %352 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %353 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 17
  store i32 32, i32* %355, align 4
  %356 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %357 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %358, i32 0, i32 18
  store i32 1, i32* %359, align 4
  %360 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %361 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 19
  store i32 64, i32* %363, align 4
  %364 = load i32, i32* @GB_ADDR_CONFIG__ROW_SIZE_MASK, align 4
  %365 = xor i32 %364, -1
  %366 = load i32, i32* %3, align 4
  %367 = and i32 %366, %365
  store i32 %367, i32* %3, align 4
  %368 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %369 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 16
  %372 = load i32, i32* %371, align 4
  switch i32 %372, label %374 [
    i32 1, label %373
    i32 2, label %379
    i32 4, label %384
  ]

373:                                              ; preds = %351
  br label %374

374:                                              ; preds = %351, %373
  %375 = load i32, i32* @GB_ADDR_CONFIG__ROW_SIZE__SHIFT, align 4
  %376 = shl i32 0, %375
  %377 = load i32, i32* %3, align 4
  %378 = or i32 %377, %376
  store i32 %378, i32* %3, align 4
  br label %389

379:                                              ; preds = %351
  %380 = load i32, i32* @GB_ADDR_CONFIG__ROW_SIZE__SHIFT, align 4
  %381 = shl i32 1, %380
  %382 = load i32, i32* %3, align 4
  %383 = or i32 %382, %381
  store i32 %383, i32* %3, align 4
  br label %389

384:                                              ; preds = %351
  %385 = load i32, i32* @GB_ADDR_CONFIG__ROW_SIZE__SHIFT, align 4
  %386 = shl i32 2, %385
  %387 = load i32, i32* %3, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %3, align 4
  br label %389

389:                                              ; preds = %384, %379, %374
  %390 = load i32, i32* @GB_ADDR_CONFIG__NUM_SHADER_ENGINES_MASK, align 4
  %391 = xor i32 %390, -1
  %392 = load i32, i32* %3, align 4
  %393 = and i32 %392, %391
  store i32 %393, i32* %3, align 4
  %394 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %395 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = icmp eq i32 %398, 2
  br i1 %399, label %400, label %405

400:                                              ; preds = %389
  %401 = load i32, i32* @GB_ADDR_CONFIG__NUM_SHADER_ENGINES__SHIFT, align 4
  %402 = shl i32 1, %401
  %403 = load i32, i32* %3, align 4
  %404 = or i32 %403, %402
  store i32 %404, i32* %3, align 4
  br label %405

405:                                              ; preds = %400, %389
  %406 = load i32, i32* %3, align 4
  %407 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %408 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 20
  store i32 %406, i32* %410, align 4
  %411 = load i64, i64* @mmGB_ADDR_CONFIG, align 8
  %412 = load i32, i32* %3, align 4
  %413 = call i32 @WREG32(i64 %411, i32 %412)
  %414 = load i64, i64* @mmDMIF_ADDR_CONFIG, align 8
  %415 = load i32, i32* %3, align 4
  %416 = call i32 @WREG32(i64 %414, i32 %415)
  %417 = load i64, i64* @mmDMIF_ADDR_CALC, align 8
  %418 = load i32, i32* %3, align 4
  %419 = call i32 @WREG32(i64 %417, i32 %418)
  %420 = load i64, i64* @mmHDP_ADDR_CONFIG, align 8
  %421 = load i32, i32* %3, align 4
  %422 = call i32 @WREG32(i64 %420, i32 %421)
  %423 = load i64, i64* @mmDMA_TILING_CONFIG, align 8
  %424 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %425 = add nsw i64 %423, %424
  %426 = load i32, i32* %3, align 4
  %427 = call i32 @WREG32(i64 %425, i32 %426)
  %428 = load i64, i64* @mmDMA_TILING_CONFIG, align 8
  %429 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %430 = add nsw i64 %428, %429
  %431 = load i32, i32* %3, align 4
  %432 = call i32 @WREG32(i64 %430, i32 %431)
  %433 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %434 = call i32 @gfx_v6_0_tiling_mode_table_init(%struct.amdgpu_device* %433)
  %435 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %436 = call i32 @gfx_v6_0_setup_rb(%struct.amdgpu_device* %435)
  %437 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %438 = call i32 @gfx_v6_0_setup_spi(%struct.amdgpu_device* %437)
  %439 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %440 = call i32 @gfx_v6_0_get_cu_info(%struct.amdgpu_device* %439)
  %441 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %442 = call i32 @gfx_v6_0_config_init(%struct.amdgpu_device* %441)
  %443 = load i64, i64* @mmCP_QUEUE_THRESHOLDS, align 8
  %444 = load i32, i32* @CP_QUEUE_THRESHOLDS__ROQ_IB1_START__SHIFT, align 4
  %445 = shl i32 22, %444
  %446 = load i32, i32* @CP_QUEUE_THRESHOLDS__ROQ_IB2_START__SHIFT, align 4
  %447 = shl i32 43, %446
  %448 = or i32 %445, %447
  %449 = call i32 @WREG32(i64 %443, i32 %448)
  %450 = load i64, i64* @mmCP_MEQ_THRESHOLDS, align 8
  %451 = load i32, i32* @CP_MEQ_THRESHOLDS__MEQ1_START__SHIFT, align 4
  %452 = shl i32 48, %451
  %453 = load i32, i32* @CP_MEQ_THRESHOLDS__MEQ2_START__SHIFT, align 4
  %454 = shl i32 96, %453
  %455 = or i32 %452, %454
  %456 = call i32 @WREG32(i64 %450, i32 %455)
  %457 = load i64, i64* @mmSX_DEBUG_1, align 8
  %458 = call i8* @RREG32(i64 %457)
  %459 = ptrtoint i8* %458 to i32
  store i32 %459, i32* %6, align 4
  %460 = load i64, i64* @mmSX_DEBUG_1, align 8
  %461 = load i32, i32* %6, align 4
  %462 = call i32 @WREG32(i64 %460, i32 %461)
  %463 = load i64, i64* @mmSPI_CONFIG_CNTL_1, align 8
  %464 = load i32, i32* @SPI_CONFIG_CNTL_1__VTX_DONE_DELAY__SHIFT, align 4
  %465 = shl i32 4, %464
  %466 = call i32 @WREG32(i64 %463, i32 %465)
  %467 = load i64, i64* @mmPA_SC_FIFO_SIZE, align 8
  %468 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %469 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %470, i32 0, i32 9
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* @PA_SC_FIFO_SIZE__SC_FRONTEND_PRIM_FIFO_SIZE__SHIFT, align 4
  %474 = shl i32 %472, %473
  %475 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %476 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %477, i32 0, i32 10
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* @PA_SC_FIFO_SIZE__SC_BACKEND_PRIM_FIFO_SIZE__SHIFT, align 4
  %481 = shl i32 %479, %480
  %482 = or i32 %474, %481
  %483 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %484 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 11
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @PA_SC_FIFO_SIZE__SC_HIZ_TILE_FIFO_SIZE__SHIFT, align 4
  %489 = shl i32 %487, %488
  %490 = or i32 %482, %489
  %491 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %492 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %493, i32 0, i32 12
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* @PA_SC_FIFO_SIZE__SC_EARLYZ_TILE_FIFO_SIZE__SHIFT, align 4
  %497 = shl i32 %495, %496
  %498 = or i32 %490, %497
  %499 = call i32 @WREG32(i64 %467, i32 %498)
  %500 = load i64, i64* @mmVGT_NUM_INSTANCES, align 8
  %501 = call i32 @WREG32(i64 %500, i32 1)
  %502 = load i64, i64* @mmCP_PERFMON_CNTL, align 8
  %503 = call i32 @WREG32(i64 %502, i32 0)
  %504 = load i64, i64* @mmSQ_CONFIG, align 8
  %505 = call i32 @WREG32(i64 %504, i32 0)
  %506 = load i64, i64* @mmPA_SC_FORCE_EOV_MAX_CNTS, align 8
  %507 = load i32, i32* @PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_CLK_CNT__SHIFT, align 4
  %508 = shl i32 4095, %507
  %509 = load i32, i32* @PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_REZ_CNT__SHIFT, align 4
  %510 = shl i32 255, %509
  %511 = or i32 %508, %510
  %512 = call i32 @WREG32(i64 %506, i32 %511)
  %513 = load i64, i64* @mmVGT_CACHE_INVALIDATION, align 8
  %514 = load i32, i32* @VC_AND_TC, align 4
  %515 = load i32, i32* @VGT_CACHE_INVALIDATION__CACHE_INVALIDATION__SHIFT, align 4
  %516 = shl i32 %514, %515
  %517 = load i32, i32* @ES_AND_GS_AUTO, align 4
  %518 = load i32, i32* @VGT_CACHE_INVALIDATION__AUTO_INVLD_EN__SHIFT, align 4
  %519 = shl i32 %517, %518
  %520 = or i32 %516, %519
  %521 = call i32 @WREG32(i64 %513, i32 %520)
  %522 = load i64, i64* @mmVGT_GS_VERTEX_REUSE, align 8
  %523 = call i32 @WREG32(i64 %522, i32 16)
  %524 = load i64, i64* @mmPA_SC_LINE_STIPPLE_STATE, align 8
  %525 = call i32 @WREG32(i64 %524, i32 0)
  %526 = load i64, i64* @mmCB_PERFCOUNTER0_SELECT0, align 8
  %527 = call i32 @WREG32(i64 %526, i32 0)
  %528 = load i64, i64* @mmCB_PERFCOUNTER0_SELECT1, align 8
  %529 = call i32 @WREG32(i64 %528, i32 0)
  %530 = load i64, i64* @mmCB_PERFCOUNTER1_SELECT0, align 8
  %531 = call i32 @WREG32(i64 %530, i32 0)
  %532 = load i64, i64* @mmCB_PERFCOUNTER1_SELECT1, align 8
  %533 = call i32 @WREG32(i64 %532, i32 0)
  %534 = load i64, i64* @mmCB_PERFCOUNTER2_SELECT0, align 8
  %535 = call i32 @WREG32(i64 %534, i32 0)
  %536 = load i64, i64* @mmCB_PERFCOUNTER2_SELECT1, align 8
  %537 = call i32 @WREG32(i64 %536, i32 0)
  %538 = load i64, i64* @mmCB_PERFCOUNTER3_SELECT0, align 8
  %539 = call i32 @WREG32(i64 %538, i32 0)
  %540 = load i64, i64* @mmCB_PERFCOUNTER3_SELECT1, align 8
  %541 = call i32 @WREG32(i64 %540, i32 0)
  %542 = load i64, i64* @mmHDP_HOST_PATH_CNTL, align 8
  %543 = call i8* @RREG32(i64 %542)
  %544 = ptrtoint i8* %543 to i32
  store i32 %544, i32* %7, align 4
  %545 = load i64, i64* @mmHDP_HOST_PATH_CNTL, align 8
  %546 = load i32, i32* %7, align 4
  %547 = call i32 @WREG32(i64 %545, i32 %546)
  %548 = load i64, i64* @mmPA_CL_ENHANCE, align 8
  %549 = load i32, i32* @PA_CL_ENHANCE__CLIP_VTX_REORDER_ENA_MASK, align 4
  %550 = load i32, i32* @PA_CL_ENHANCE__NUM_CLIP_SEQ__SHIFT, align 4
  %551 = shl i32 3, %550
  %552 = or i32 %549, %551
  %553 = call i32 @WREG32(i64 %548, i32 %552)
  %554 = call i32 @udelay(i32 50)
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i8* @RREG32(i64) #1

declare dso_local i32 @gfx_v6_0_tiling_mode_table_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v6_0_setup_rb(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v6_0_setup_spi(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v6_0_get_cu_info(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v6_0_config_init(%struct.amdgpu_device*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
