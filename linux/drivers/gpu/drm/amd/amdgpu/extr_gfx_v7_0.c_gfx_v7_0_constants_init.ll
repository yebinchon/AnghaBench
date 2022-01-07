; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_constants_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_constants_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@mmGRBM_CNTL = common dso_local global i32 0, align 4
@GRBM_CNTL__READ_TIMEOUT__SHIFT = common dso_local global i32 0, align 4
@mmGB_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmHDP_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmDMIF_ADDR_CALC = common dso_local global i32 0, align 4
@mmCP_MEQ_THRESHOLDS = common dso_local global i32 0, align 4
@CP_MEQ_THRESHOLDS__MEQ1_START__SHIFT = common dso_local global i32 0, align 4
@CP_MEQ_THRESHOLDS__MEQ2_START__SHIFT = common dso_local global i32 0, align 4
@SH_MEM_CONFIG = common dso_local global i32 0, align 4
@ALIGNMENT_MODE = common dso_local global i32 0, align 4
@SH_MEM_ALIGNMENT_MODE_UNALIGNED = common dso_local global i32 0, align 4
@DEFAULT_MTYPE = common dso_local global i32 0, align 4
@MTYPE_NC = common dso_local global i32 0, align 4
@APE1_MTYPE = common dso_local global i32 0, align 4
@MTYPE_UC = common dso_local global i32 0, align 4
@PRIVATE_ATC = common dso_local global i32 0, align 4
@SH_STATIC_MEM_CONFIG = common dso_local global i32 0, align 4
@SWIZZLE_ENABLE = common dso_local global i32 0, align 4
@ELEMENT_SIZE = common dso_local global i32 0, align 4
@INDEX_STRIDE = common dso_local global i32 0, align 4
@mmSH_STATIC_MEM_CONFIG = common dso_local global i32 0, align 4
@mmSH_MEM_CONFIG = common dso_local global i32 0, align 4
@mmSH_MEM_APE1_BASE = common dso_local global i32 0, align 4
@mmSH_MEM_APE1_LIMIT = common dso_local global i32 0, align 4
@mmSH_MEM_BASES = common dso_local global i32 0, align 4
@mmSX_DEBUG_1 = common dso_local global i32 0, align 4
@mmTA_CNTL_AUX = common dso_local global i32 0, align 4
@mmSPI_CONFIG_CNTL = common dso_local global i32 0, align 4
@mmSQ_CONFIG = common dso_local global i32 0, align 4
@mmDB_DEBUG = common dso_local global i32 0, align 4
@mmDB_DEBUG2 = common dso_local global i32 0, align 4
@mmDB_DEBUG3 = common dso_local global i32 0, align 4
@mmCB_HW_CONTROL = common dso_local global i32 0, align 4
@mmSPI_CONFIG_CNTL_1 = common dso_local global i32 0, align 4
@SPI_CONFIG_CNTL_1__VTX_DONE_DELAY__SHIFT = common dso_local global i32 0, align 4
@mmPA_SC_FIFO_SIZE = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE__SC_FRONTEND_PRIM_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE__SC_BACKEND_PRIM_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE__SC_HIZ_TILE_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE__SC_EARLYZ_TILE_FIFO_SIZE__SHIFT = common dso_local global i32 0, align 4
@mmVGT_NUM_INSTANCES = common dso_local global i32 0, align 4
@mmCP_PERFMON_CNTL = common dso_local global i32 0, align 4
@mmPA_SC_FORCE_EOV_MAX_CNTS = common dso_local global i32 0, align 4
@PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_CLK_CNT__SHIFT = common dso_local global i32 0, align 4
@PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_REZ_CNT__SHIFT = common dso_local global i32 0, align 4
@mmVGT_CACHE_INVALIDATION = common dso_local global i32 0, align 4
@VC_AND_TC = common dso_local global i32 0, align 4
@VGT_CACHE_INVALIDATION__CACHE_INVALIDATION__SHIFT = common dso_local global i32 0, align 4
@ES_AND_GS_AUTO = common dso_local global i32 0, align 4
@VGT_CACHE_INVALIDATION__AUTO_INVLD_EN__SHIFT = common dso_local global i32 0, align 4
@mmVGT_GS_VERTEX_REUSE = common dso_local global i32 0, align 4
@mmPA_SC_LINE_STIPPLE_STATE = common dso_local global i32 0, align 4
@mmPA_CL_ENHANCE = common dso_local global i32 0, align 4
@PA_CL_ENHANCE__CLIP_VTX_REORDER_ENA_MASK = common dso_local global i32 0, align 4
@PA_CL_ENHANCE__NUM_CLIP_SEQ__SHIFT = common dso_local global i32 0, align 4
@mmPA_SC_ENHANCE = common dso_local global i32 0, align 4
@PA_SC_ENHANCE__ENABLE_PA_SC_OUT_OF_ORDER_MASK = common dso_local global i32 0, align 4
@mmSPI_ARB_PRIORITY = common dso_local global i32 0, align 4
@SPI_ARB_PRIORITY = common dso_local global i32 0, align 4
@PIPE_ORDER_TS0 = common dso_local global i32 0, align 4
@PIPE_ORDER_TS1 = common dso_local global i32 0, align 4
@PIPE_ORDER_TS2 = common dso_local global i32 0, align 4
@PIPE_ORDER_TS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v7_0_constants_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_constants_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %8 = load i32, i32* @mmGRBM_CNTL, align 4
  %9 = load i32, i32* @GRBM_CNTL__READ_TIMEOUT__SHIFT, align 4
  %10 = shl i32 255, %9
  %11 = call i32 @WREG32(i32 %8, i32 %10)
  %12 = load i32, i32* @mmGB_ADDR_CONFIG, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @WREG32(i32 %12, i32 %17)
  %19 = load i32, i32* @mmHDP_ADDR_CONFIG, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @WREG32(i32 %19, i32 %24)
  %26 = load i32, i32* @mmDMIF_ADDR_CALC, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @WREG32(i32 %26, i32 %31)
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = call i32 @gfx_v7_0_tiling_mode_table_init(%struct.amdgpu_device* %33)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = call i32 @gfx_v7_0_setup_rb(%struct.amdgpu_device* %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = call i32 @gfx_v7_0_get_cu_info(%struct.amdgpu_device* %37)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = call i32 @gfx_v7_0_config_init(%struct.amdgpu_device* %39)
  %41 = load i32, i32* @mmCP_MEQ_THRESHOLDS, align 4
  %42 = load i32, i32* @CP_MEQ_THRESHOLDS__MEQ1_START__SHIFT, align 4
  %43 = shl i32 48, %42
  %44 = load i32, i32* @CP_MEQ_THRESHOLDS__MEQ2_START__SHIFT, align 4
  %45 = shl i32 96, %44
  %46 = or i32 %43, %45
  %47 = call i32 @WREG32(i32 %41, i32 %46)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = call i32 @gfx_v7_0_select_se_sh(%struct.amdgpu_device* %51, i32 -1, i32 -1, i32 -1)
  %53 = load i32, i32* @SH_MEM_CONFIG, align 4
  %54 = load i32, i32* @ALIGNMENT_MODE, align 4
  %55 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %56 = call i32 @REG_SET_FIELD(i32 0, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SH_MEM_CONFIG, align 4
  %59 = load i32, i32* @DEFAULT_MTYPE, align 4
  %60 = load i32, i32* @MTYPE_NC, align 4
  %61 = call i32 @REG_SET_FIELD(i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SH_MEM_CONFIG, align 4
  %64 = load i32, i32* @APE1_MTYPE, align 4
  %65 = load i32, i32* @MTYPE_UC, align 4
  %66 = call i32 @REG_SET_FIELD(i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SH_MEM_CONFIG, align 4
  %69 = load i32, i32* @PRIVATE_ATC, align 4
  %70 = call i32 @REG_SET_FIELD(i32 %67, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @SH_STATIC_MEM_CONFIG, align 4
  %72 = load i32, i32* @SWIZZLE_ENABLE, align 4
  %73 = call i32 @REG_SET_FIELD(i32 0, i32 %71, i32 %72, i32 1)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @SH_STATIC_MEM_CONFIG, align 4
  %76 = load i32, i32* @ELEMENT_SIZE, align 4
  %77 = call i32 @REG_SET_FIELD(i32 %74, i32 %75, i32 %76, i32 1)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @SH_STATIC_MEM_CONFIG, align 4
  %80 = load i32, i32* @INDEX_STRIDE, align 4
  %81 = call i32 @REG_SET_FIELD(i32 %78, i32 %79, i32 %80, i32 3)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* @mmSH_STATIC_MEM_CONFIG, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @WREG32(i32 %82, i32 %83)
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 2
  %87 = call i32 @mutex_lock(i32* %86)
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %122, %1
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %89, %96
  br i1 %97, label %98, label %125

98:                                               ; preds = %88
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %108

102:                                              ; preds = %98
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 48
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %102, %101
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @cik_srbm_select(%struct.amdgpu_device* %109, i32 0, i32 0, i32 0, i32 %110)
  %112 = load i32, i32* @mmSH_MEM_CONFIG, align 4
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @WREG32(i32 %112, i32 %113)
  %115 = load i32, i32* @mmSH_MEM_APE1_BASE, align 4
  %116 = call i32 @WREG32(i32 %115, i32 1)
  %117 = load i32, i32* @mmSH_MEM_APE1_LIMIT, align 4
  %118 = call i32 @WREG32(i32 %117, i32 0)
  %119 = load i32, i32* @mmSH_MEM_BASES, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @WREG32(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %88

125:                                              ; preds = %88
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %127 = call i32 @cik_srbm_select(%struct.amdgpu_device* %126, i32 0, i32 0, i32 0, i32 0)
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 2
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %132 = call i32 @gfx_v7_0_init_compute_vmid(%struct.amdgpu_device* %131)
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %134 = call i32 @gfx_v7_0_init_gds_vmid(%struct.amdgpu_device* %133)
  %135 = load i32, i32* @mmSX_DEBUG_1, align 4
  %136 = call i32 @WREG32(i32 %135, i32 32)
  %137 = load i32, i32* @mmTA_CNTL_AUX, align 4
  %138 = call i32 @WREG32(i32 %137, i32 65536)
  %139 = load i32, i32* @mmSPI_CONFIG_CNTL, align 4
  %140 = call i32 @RREG32(i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, 50331648
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* @mmSPI_CONFIG_CNTL, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @WREG32(i32 %143, i32 %144)
  %146 = load i32, i32* @mmSQ_CONFIG, align 4
  %147 = call i32 @WREG32(i32 %146, i32 1)
  %148 = load i32, i32* @mmDB_DEBUG, align 4
  %149 = call i32 @WREG32(i32 %148, i32 0)
  %150 = load i32, i32* @mmDB_DEBUG2, align 4
  %151 = call i32 @RREG32(i32 %150)
  %152 = and i32 %151, 267386880
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, 1024
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* @mmDB_DEBUG2, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @WREG32(i32 %155, i32 %156)
  %158 = load i32, i32* @mmDB_DEBUG3, align 4
  %159 = call i32 @RREG32(i32 %158)
  %160 = and i32 %159, -131613
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = or i32 %161, 131584
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* @mmDB_DEBUG3, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @WREG32(i32 %163, i32 %164)
  %166 = load i32, i32* @mmCB_HW_CONTROL, align 4
  %167 = call i32 @RREG32(i32 %166)
  %168 = and i32 %167, -65537
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = or i32 %169, 98824
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* @mmCB_HW_CONTROL, align 4
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @WREG32(i32 %171, i32 %172)
  %174 = load i32, i32* @mmSPI_CONFIG_CNTL_1, align 4
  %175 = load i32, i32* @SPI_CONFIG_CNTL_1__VTX_DONE_DELAY__SHIFT, align 4
  %176 = shl i32 4, %175
  %177 = call i32 @WREG32(i32 %174, i32 %176)
  %178 = load i32, i32* @mmPA_SC_FIFO_SIZE, align 4
  %179 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %180 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @PA_SC_FIFO_SIZE__SC_FRONTEND_PRIM_FIFO_SIZE__SHIFT, align 4
  %185 = shl i32 %183, %184
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %187 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @PA_SC_FIFO_SIZE__SC_BACKEND_PRIM_FIFO_SIZE__SHIFT, align 4
  %192 = shl i32 %190, %191
  %193 = or i32 %185, %192
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %195 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @PA_SC_FIFO_SIZE__SC_HIZ_TILE_FIFO_SIZE__SHIFT, align 4
  %200 = shl i32 %198, %199
  %201 = or i32 %193, %200
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %203 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @PA_SC_FIFO_SIZE__SC_EARLYZ_TILE_FIFO_SIZE__SHIFT, align 4
  %208 = shl i32 %206, %207
  %209 = or i32 %201, %208
  %210 = call i32 @WREG32(i32 %178, i32 %209)
  %211 = load i32, i32* @mmVGT_NUM_INSTANCES, align 4
  %212 = call i32 @WREG32(i32 %211, i32 1)
  %213 = load i32, i32* @mmCP_PERFMON_CNTL, align 4
  %214 = call i32 @WREG32(i32 %213, i32 0)
  %215 = load i32, i32* @mmSQ_CONFIG, align 4
  %216 = call i32 @WREG32(i32 %215, i32 0)
  %217 = load i32, i32* @mmPA_SC_FORCE_EOV_MAX_CNTS, align 4
  %218 = load i32, i32* @PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_CLK_CNT__SHIFT, align 4
  %219 = shl i32 4095, %218
  %220 = load i32, i32* @PA_SC_FORCE_EOV_MAX_CNTS__FORCE_EOV_MAX_REZ_CNT__SHIFT, align 4
  %221 = shl i32 255, %220
  %222 = or i32 %219, %221
  %223 = call i32 @WREG32(i32 %217, i32 %222)
  %224 = load i32, i32* @mmVGT_CACHE_INVALIDATION, align 4
  %225 = load i32, i32* @VC_AND_TC, align 4
  %226 = load i32, i32* @VGT_CACHE_INVALIDATION__CACHE_INVALIDATION__SHIFT, align 4
  %227 = shl i32 %225, %226
  %228 = load i32, i32* @ES_AND_GS_AUTO, align 4
  %229 = load i32, i32* @VGT_CACHE_INVALIDATION__AUTO_INVLD_EN__SHIFT, align 4
  %230 = shl i32 %228, %229
  %231 = or i32 %227, %230
  %232 = call i32 @WREG32(i32 %224, i32 %231)
  %233 = load i32, i32* @mmVGT_GS_VERTEX_REUSE, align 4
  %234 = call i32 @WREG32(i32 %233, i32 16)
  %235 = load i32, i32* @mmPA_SC_LINE_STIPPLE_STATE, align 4
  %236 = call i32 @WREG32(i32 %235, i32 0)
  %237 = load i32, i32* @mmPA_CL_ENHANCE, align 4
  %238 = load i32, i32* @PA_CL_ENHANCE__CLIP_VTX_REORDER_ENA_MASK, align 4
  %239 = load i32, i32* @PA_CL_ENHANCE__NUM_CLIP_SEQ__SHIFT, align 4
  %240 = shl i32 3, %239
  %241 = or i32 %238, %240
  %242 = call i32 @WREG32(i32 %237, i32 %241)
  %243 = load i32, i32* @mmPA_SC_ENHANCE, align 4
  %244 = load i32, i32* @PA_SC_ENHANCE__ENABLE_PA_SC_OUT_OF_ORDER_MASK, align 4
  %245 = call i32 @WREG32(i32 %243, i32 %244)
  %246 = load i32, i32* @mmSPI_ARB_PRIORITY, align 4
  %247 = call i32 @RREG32(i32 %246)
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* @SPI_ARB_PRIORITY, align 4
  %250 = load i32, i32* @PIPE_ORDER_TS0, align 4
  %251 = call i32 @REG_SET_FIELD(i32 %248, i32 %249, i32 %250, i32 2)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* @SPI_ARB_PRIORITY, align 4
  %254 = load i32, i32* @PIPE_ORDER_TS1, align 4
  %255 = call i32 @REG_SET_FIELD(i32 %252, i32 %253, i32 %254, i32 2)
  store i32 %255, i32* %6, align 4
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* @SPI_ARB_PRIORITY, align 4
  %258 = load i32, i32* @PIPE_ORDER_TS2, align 4
  %259 = call i32 @REG_SET_FIELD(i32 %256, i32 %257, i32 %258, i32 2)
  store i32 %259, i32* %6, align 4
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* @SPI_ARB_PRIORITY, align 4
  %262 = load i32, i32* @PIPE_ORDER_TS3, align 4
  %263 = call i32 @REG_SET_FIELD(i32 %260, i32 %261, i32 %262, i32 2)
  store i32 %263, i32* %6, align 4
  %264 = load i32, i32* @mmSPI_ARB_PRIORITY, align 4
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @WREG32(i32 %264, i32 %265)
  %267 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %268 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %267, i32 0, i32 0
  %269 = call i32 @mutex_unlock(i32* %268)
  %270 = call i32 @udelay(i32 50)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @gfx_v7_0_tiling_mode_table_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v7_0_setup_rb(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v7_0_get_cu_info(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v7_0_config_init(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v7_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @cik_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gfx_v7_0_init_compute_vmid(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v7_0_init_gds_vmid(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
