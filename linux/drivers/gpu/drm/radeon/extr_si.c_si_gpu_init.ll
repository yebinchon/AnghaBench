; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@TAHITI_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@VERDE_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@HAINAN_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@GRBM_CNTL = common dso_local global i32 0, align 4
@SRBM_INT_CNTL = common dso_local global i32 0, align 4
@SRBM_INT_ACK = common dso_local global i32 0, align 4
@BIF_FB_EN = common dso_local global i32 0, align 4
@FB_READ_EN = common dso_local global i32 0, align 4
@FB_WRITE_EN = common dso_local global i32 0, align 4
@MC_SHARED_CHMAP = common dso_local global i32 0, align 4
@MC_ARB_RAMCFG = common dso_local global i32 0, align 4
@NOOFCOLS_MASK = common dso_local global i32 0, align 4
@NOOFCOLS_SHIFT = common dso_local global i32 0, align 4
@ROW_SIZE_MASK = common dso_local global i32 0, align 4
@NOOFBANK_MASK = common dso_local global i32 0, align 4
@NOOFBANK_SHIFT = common dso_local global i32 0, align 4
@PIPE_INTERLEAVE_SIZE_MASK = common dso_local global i32 0, align 4
@PIPE_INTERLEAVE_SIZE_SHIFT = common dso_local global i32 0, align 4
@ROW_SIZE_SHIFT = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG = common dso_local global i32 0, align 4
@DMIF_ADDR_CONFIG = common dso_local global i32 0, align 4
@DMIF_ADDR_CALC = common dso_local global i32 0, align 4
@HDP_ADDR_CONFIG = common dso_local global i32 0, align 4
@DMA_TILING_CONFIG = common dso_local global i32 0, align 4
@DMA0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@UVD_UDEC_ADDR_CONFIG = common dso_local global i32 0, align 4
@UVD_UDEC_DB_ADDR_CONFIG = common dso_local global i32 0, align 4
@UVD_UDEC_DBW_ADDR_CONFIG = common dso_local global i32 0, align 4
@CP_QUEUE_THRESHOLDS = common dso_local global i32 0, align 4
@CP_MEQ_THRESHOLDS = common dso_local global i32 0, align 4
@SX_DEBUG_1 = common dso_local global i32 0, align 4
@SPI_CONFIG_CNTL_1 = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE = common dso_local global i32 0, align 4
@VGT_NUM_INSTANCES = common dso_local global i32 0, align 4
@CP_PERFMON_CNTL = common dso_local global i32 0, align 4
@SQ_CONFIG = common dso_local global i32 0, align 4
@PA_SC_FORCE_EOV_MAX_CNTS = common dso_local global i32 0, align 4
@VGT_CACHE_INVALIDATION = common dso_local global i32 0, align 4
@VC_AND_TC = common dso_local global i32 0, align 4
@ES_AND_GS_AUTO = common dso_local global i32 0, align 4
@VGT_GS_VERTEX_REUSE = common dso_local global i32 0, align 4
@PA_SC_LINE_STIPPLE_STATE = common dso_local global i32 0, align 4
@CB_PERFCOUNTER0_SELECT0 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER0_SELECT1 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER1_SELECT0 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER1_SELECT1 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER2_SELECT0 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER2_SELECT1 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER3_SELECT0 = common dso_local global i32 0, align 4
@CB_PERFCOUNTER3_SELECT1 = common dso_local global i32 0, align 4
@HDP_MISC_CNTL = common dso_local global i32 0, align 4
@HDP_FLUSH_INVALIDATE_CACHE = common dso_local global i32 0, align 4
@HDP_HOST_PATH_CNTL = common dso_local global i32 0, align 4
@PA_CL_ENHANCE = common dso_local global i32 0, align 4
@CLIP_VTX_REORDER_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_gpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_gpu_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %123 [
    i32 129, label %14
    i32 130, label %68
    i32 128, label %122
    i32 131, label %177
    i32 132, label %231
  ]

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 2, i32* %18, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 12, i32* %22, align 4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 8, i32* %26, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i32 2, i32* %30, align 4
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i32 4, i32* %34, align 8
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  store i32 12, i32* %38, align 4
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  store i32 256, i32* %42, align 8
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 7
  store i32 32, i32* %46, align 4
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 8
  store i32 8, i32* %50, align 8
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 9
  store i32 32, i32* %54, align 4
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 10
  store i32 256, i32* %58, align 8
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 11
  store i32 48, i32* %62, align 4
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 12
  store i32 304, i32* %66, align 8
  %67 = load i32, i32* @TAHITI_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %67, i32* %3, align 4
  br label %285

68:                                               ; preds = %1
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 2, i32* %72, align 8
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 8, i32* %76, align 4
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 5, i32* %80, align 8
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 2, i32* %84, align 4
  %85 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  store i32 4, i32* %88, align 8
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  store i32 8, i32* %92, align 4
  %93 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 6
  store i32 256, i32* %96, align 8
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 7
  store i32 32, i32* %100, align 4
  %101 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 8
  store i32 8, i32* %104, align 8
  %105 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 9
  store i32 32, i32* %108, align 4
  %109 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 10
  store i32 256, i32* %112, align 8
  %113 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 11
  store i32 48, i32* %116, align 4
  %117 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 12
  store i32 304, i32* %120, align 8
  %121 = load i32, i32* @TAHITI_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %121, i32* %3, align 4
  br label %285

122:                                              ; preds = %1
  br label %123

123:                                              ; preds = %1, %122
  %124 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 4, i32* %131, align 4
  %132 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  store i32 5, i32* %135, align 8
  %136 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  store i32 2, i32* %139, align 4
  %140 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  store i32 4, i32* %143, align 8
  %144 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 5
  store i32 4, i32* %147, align 4
  %148 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 6
  store i32 256, i32* %151, align 8
  %152 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 7
  store i32 32, i32* %155, align 4
  %156 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 8
  store i32 8, i32* %159, align 8
  %160 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %161 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 9
  store i32 32, i32* %163, align 4
  %164 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 10
  store i32 64, i32* %167, align 8
  %168 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 11
  store i32 48, i32* %171, align 4
  %172 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 12
  store i32 304, i32* %175, align 8
  %176 = load i32, i32* @VERDE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %176, i32* %3, align 4
  br label %285

177:                                              ; preds = %1
  %178 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %179 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  %182 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %183 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  store i32 4, i32* %185, align 4
  %186 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  store i32 6, i32* %189, align 8
  %190 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %191 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  store i32 1, i32* %193, align 4
  %194 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 4
  store i32 2, i32* %197, align 8
  %198 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 5
  store i32 4, i32* %201, align 4
  %202 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %203 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 6
  store i32 256, i32* %205, align 8
  %206 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %207 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 7
  store i32 16, i32* %209, align 4
  %210 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 8
  store i32 8, i32* %213, align 8
  %214 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 9
  store i32 32, i32* %217, align 4
  %218 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %219 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 10
  store i32 64, i32* %221, align 8
  %222 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %223 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 11
  store i32 48, i32* %225, align 4
  %226 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %227 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 12
  store i32 304, i32* %229, align 8
  %230 = load i32, i32* @VERDE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %230, i32* %3, align 4
  br label %285

231:                                              ; preds = %1
  %232 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %233 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  store i32 1, i32* %235, align 8
  %236 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %237 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 1
  store i32 4, i32* %239, align 4
  %240 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %241 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  store i32 5, i32* %243, align 8
  %244 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %245 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 3
  store i32 1, i32* %247, align 4
  %248 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 4
  store i32 1, i32* %251, align 8
  %252 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %253 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 5
  store i32 2, i32* %255, align 4
  %256 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %257 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 6
  store i32 256, i32* %259, align 8
  %260 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %261 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 7
  store i32 16, i32* %263, align 4
  %264 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %265 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 8
  store i32 8, i32* %267, align 8
  %268 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %269 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 9
  store i32 32, i32* %271, align 4
  %272 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %273 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 10
  store i32 64, i32* %275, align 8
  %276 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %277 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 11
  store i32 48, i32* %279, align 4
  %280 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %281 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 12
  store i32 304, i32* %283, align 8
  %284 = load i32, i32* @HAINAN_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %284, i32* %3, align 4
  br label %285

285:                                              ; preds = %231, %177, %123, %68, %14
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %286

286:                                              ; preds = %305, %285
  %287 = load i32, i32* %9, align 4
  %288 = icmp slt i32 %287, 32
  br i1 %288, label %289, label %310

289:                                              ; preds = %286
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 11284, %290
  %292 = call i32 @WREG32(i32 %291, i32 0)
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 11288, %293
  %295 = call i32 @WREG32(i32 %294, i32 0)
  %296 = load i32, i32* %10, align 4
  %297 = add nsw i32 11292, %296
  %298 = call i32 @WREG32(i32 %297, i32 0)
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 11296, %299
  %301 = call i32 @WREG32(i32 %300, i32 0)
  %302 = load i32, i32* %10, align 4
  %303 = add nsw i32 11300, %302
  %304 = call i32 @WREG32(i32 %303, i32 0)
  br label %305

305:                                              ; preds = %289
  %306 = load i32, i32* %9, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %9, align 4
  %308 = load i32, i32* %10, align 4
  %309 = add nsw i32 %308, 24
  store i32 %309, i32* %10, align 4
  br label %286

310:                                              ; preds = %286
  %311 = load i32, i32* @GRBM_CNTL, align 4
  %312 = call i32 @GRBM_READ_TIMEOUT(i32 255)
  %313 = call i32 @WREG32(i32 %311, i32 %312)
  %314 = load i32, i32* @SRBM_INT_CNTL, align 4
  %315 = call i32 @WREG32(i32 %314, i32 1)
  %316 = load i32, i32* @SRBM_INT_ACK, align 4
  %317 = call i32 @WREG32(i32 %316, i32 1)
  %318 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %319 = call i32 @evergreen_fix_pci_max_read_req_size(%struct.radeon_device* %318)
  %320 = load i32, i32* @BIF_FB_EN, align 4
  %321 = load i32, i32* @FB_READ_EN, align 4
  %322 = load i32, i32* @FB_WRITE_EN, align 4
  %323 = or i32 %321, %322
  %324 = call i32 @WREG32(i32 %320, i32 %323)
  %325 = load i32, i32* @MC_SHARED_CHMAP, align 4
  %326 = call i32 @RREG32(i32 %325)
  store i32 %326, i32* %4, align 4
  %327 = load i32, i32* @MC_ARB_RAMCFG, align 4
  %328 = call i32 @RREG32(i32 %327)
  store i32 %328, i32* %5, align 4
  %329 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %330 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %335 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 13
  store i32 %333, i32* %337, align 4
  %338 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %339 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 14
  store i32 256, i32* %341, align 8
  %342 = load i32, i32* %5, align 4
  %343 = load i32, i32* @NOOFCOLS_MASK, align 4
  %344 = and i32 %342, %343
  %345 = load i32, i32* @NOOFCOLS_SHIFT, align 4
  %346 = ashr i32 %344, %345
  store i32 %346, i32* %8, align 4
  %347 = load i32, i32* %8, align 4
  %348 = add nsw i32 8, %347
  %349 = shl i32 1, %348
  %350 = mul nsw i32 4, %349
  %351 = sdiv i32 %350, 1024
  %352 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %353 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 15
  store i32 %351, i32* %355, align 4
  %356 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %357 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %358, i32 0, i32 15
  %360 = load i32, i32* %359, align 4
  %361 = icmp sgt i32 %360, 4
  br i1 %361, label %362, label %367

362:                                              ; preds = %310
  %363 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %364 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 15
  store i32 4, i32* %366, align 4
  br label %367

367:                                              ; preds = %362, %310
  %368 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %369 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 16
  store i32 32, i32* %371, align 8
  %372 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %373 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 17
  store i32 1, i32* %375, align 4
  %376 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %377 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 18
  store i32 64, i32* %379, align 8
  %380 = load i32, i32* @ROW_SIZE_MASK, align 4
  %381 = xor i32 %380, -1
  %382 = load i32, i32* %3, align 4
  %383 = and i32 %382, %381
  store i32 %383, i32* %3, align 4
  %384 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %385 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %386, i32 0, i32 15
  %388 = load i32, i32* %387, align 4
  switch i32 %388, label %390 [
    i32 1, label %389
    i32 2, label %394
    i32 4, label %398
  ]

389:                                              ; preds = %367
  br label %390

390:                                              ; preds = %367, %389
  %391 = call i32 @ROW_SIZE(i32 0)
  %392 = load i32, i32* %3, align 4
  %393 = or i32 %392, %391
  store i32 %393, i32* %3, align 4
  br label %402

394:                                              ; preds = %367
  %395 = call i32 @ROW_SIZE(i32 1)
  %396 = load i32, i32* %3, align 4
  %397 = or i32 %396, %395
  store i32 %397, i32* %3, align 4
  br label %402

398:                                              ; preds = %367
  %399 = call i32 @ROW_SIZE(i32 2)
  %400 = load i32, i32* %3, align 4
  %401 = or i32 %400, %399
  store i32 %401, i32* %3, align 4
  br label %402

402:                                              ; preds = %398, %394, %390
  %403 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %404 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 19
  store i32 0, i32* %406, align 4
  %407 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %408 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 13
  %411 = load i32, i32* %410, align 4
  switch i32 %411, label %433 [
    i32 1, label %412
    i32 2, label %418
    i32 4, label %425
    i32 8, label %432
  ]

412:                                              ; preds = %402
  %413 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %414 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 19
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %416, align 4
  br label %440

418:                                              ; preds = %402
  %419 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %420 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i32 0, i32 19
  %423 = load i32, i32* %422, align 4
  %424 = or i32 %423, 1
  store i32 %424, i32* %422, align 4
  br label %440

425:                                              ; preds = %402
  %426 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %427 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 19
  %430 = load i32, i32* %429, align 4
  %431 = or i32 %430, 2
  store i32 %431, i32* %429, align 4
  br label %440

432:                                              ; preds = %402
  br label %433

433:                                              ; preds = %402, %432
  %434 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %435 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i32 0, i32 19
  %438 = load i32, i32* %437, align 4
  %439 = or i32 %438, 3
  store i32 %439, i32* %437, align 4
  br label %440

440:                                              ; preds = %433, %425, %418, %412
  %441 = load i32, i32* %5, align 4
  %442 = load i32, i32* @NOOFBANK_MASK, align 4
  %443 = and i32 %441, %442
  %444 = load i32, i32* @NOOFBANK_SHIFT, align 4
  %445 = ashr i32 %443, %444
  switch i32 %445, label %460 [
    i32 0, label %446
    i32 1, label %452
    i32 2, label %459
  ]

446:                                              ; preds = %440
  %447 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %448 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 19
  %451 = load i32, i32* %450, align 4
  store i32 %451, i32* %450, align 4
  br label %467

452:                                              ; preds = %440
  %453 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %454 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 19
  %457 = load i32, i32* %456, align 4
  %458 = or i32 %457, 16
  store i32 %458, i32* %456, align 4
  br label %467

459:                                              ; preds = %440
  br label %460

460:                                              ; preds = %440, %459
  %461 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %462 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %463, i32 0, i32 19
  %465 = load i32, i32* %464, align 4
  %466 = or i32 %465, 32
  store i32 %466, i32* %464, align 4
  br label %467

467:                                              ; preds = %460, %452, %446
  %468 = load i32, i32* %3, align 4
  %469 = load i32, i32* @PIPE_INTERLEAVE_SIZE_MASK, align 4
  %470 = and i32 %468, %469
  %471 = load i32, i32* @PIPE_INTERLEAVE_SIZE_SHIFT, align 4
  %472 = ashr i32 %470, %471
  %473 = shl i32 %472, 8
  %474 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %475 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 19
  %478 = load i32, i32* %477, align 4
  %479 = or i32 %478, %473
  store i32 %479, i32* %477, align 4
  %480 = load i32, i32* %3, align 4
  %481 = load i32, i32* @ROW_SIZE_MASK, align 4
  %482 = and i32 %480, %481
  %483 = load i32, i32* @ROW_SIZE_SHIFT, align 4
  %484 = ashr i32 %482, %483
  %485 = shl i32 %484, 12
  %486 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %487 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %488, i32 0, i32 19
  %490 = load i32, i32* %489, align 4
  %491 = or i32 %490, %485
  store i32 %491, i32* %489, align 4
  %492 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %493 = load i32, i32* %3, align 4
  %494 = call i32 @WREG32(i32 %492, i32 %493)
  %495 = load i32, i32* @DMIF_ADDR_CONFIG, align 4
  %496 = load i32, i32* %3, align 4
  %497 = call i32 @WREG32(i32 %495, i32 %496)
  %498 = load i32, i32* @DMIF_ADDR_CALC, align 4
  %499 = load i32, i32* %3, align 4
  %500 = call i32 @WREG32(i32 %498, i32 %499)
  %501 = load i32, i32* @HDP_ADDR_CONFIG, align 4
  %502 = load i32, i32* %3, align 4
  %503 = call i32 @WREG32(i32 %501, i32 %502)
  %504 = load i32, i32* @DMA_TILING_CONFIG, align 4
  %505 = load i32, i32* @DMA0_REGISTER_OFFSET, align 4
  %506 = add nsw i32 %504, %505
  %507 = load i32, i32* %3, align 4
  %508 = call i32 @WREG32(i32 %506, i32 %507)
  %509 = load i32, i32* @DMA_TILING_CONFIG, align 4
  %510 = load i32, i32* @DMA1_REGISTER_OFFSET, align 4
  %511 = add nsw i32 %509, %510
  %512 = load i32, i32* %3, align 4
  %513 = call i32 @WREG32(i32 %511, i32 %512)
  %514 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %515 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %514, i32 0, i32 2
  %516 = load i64, i64* %515, align 8
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %528

518:                                              ; preds = %467
  %519 = load i32, i32* @UVD_UDEC_ADDR_CONFIG, align 4
  %520 = load i32, i32* %3, align 4
  %521 = call i32 @WREG32(i32 %519, i32 %520)
  %522 = load i32, i32* @UVD_UDEC_DB_ADDR_CONFIG, align 4
  %523 = load i32, i32* %3, align 4
  %524 = call i32 @WREG32(i32 %522, i32 %523)
  %525 = load i32, i32* @UVD_UDEC_DBW_ADDR_CONFIG, align 4
  %526 = load i32, i32* %3, align 4
  %527 = call i32 @WREG32(i32 %525, i32 %526)
  br label %528

528:                                              ; preds = %518, %467
  %529 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %530 = call i32 @si_tiling_mode_table_init(%struct.radeon_device* %529)
  %531 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %532 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %533 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %538 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %539, i32 0, i32 3
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %543 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %544, i32 0, i32 4
  %546 = load i32, i32* %545, align 8
  %547 = call i32 @si_setup_rb(%struct.radeon_device* %531, i32 %536, i32 %541, i32 %546)
  %548 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %549 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %550 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 8
  %554 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %555 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %556, i32 0, i32 3
  %558 = load i32, i32* %557, align 4
  %559 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %560 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %561, i32 0, i32 2
  %563 = load i32, i32* %562, align 8
  %564 = call i32 @si_setup_spi(%struct.radeon_device* %548, i32 %553, i32 %558, i32 %563)
  %565 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %566 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %565, i32 0, i32 1
  %567 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %567, i32 0, i32 20
  store i64 0, i64* %568, align 8
  store i32 0, i32* %9, align 4
  br label %569

569:                                              ; preds = %602, %528
  %570 = load i32, i32* %9, align 4
  %571 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %572 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %571, i32 0, i32 1
  %573 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = icmp slt i32 %570, %575
  br i1 %576, label %577, label %605

577:                                              ; preds = %569
  store i32 0, i32* %10, align 4
  br label %578

578:                                              ; preds = %598, %577
  %579 = load i32, i32* %10, align 4
  %580 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %581 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %580, i32 0, i32 1
  %582 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %582, i32 0, i32 3
  %584 = load i32, i32* %583, align 4
  %585 = icmp slt i32 %579, %584
  br i1 %585, label %586, label %601

586:                                              ; preds = %578
  %587 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %588 = load i32, i32* %9, align 4
  %589 = load i32, i32* %10, align 4
  %590 = call i32 @si_get_cu_active_bitmap(%struct.radeon_device* %587, i32 %588, i32 %589)
  %591 = call i64 @hweight32(i32 %590)
  %592 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %593 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %592, i32 0, i32 1
  %594 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %593, i32 0, i32 0
  %595 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %594, i32 0, i32 20
  %596 = load i64, i64* %595, align 8
  %597 = add nsw i64 %596, %591
  store i64 %597, i64* %595, align 8
  br label %598

598:                                              ; preds = %586
  %599 = load i32, i32* %10, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %10, align 4
  br label %578

601:                                              ; preds = %578
  br label %602

602:                                              ; preds = %601
  %603 = load i32, i32* %9, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %9, align 4
  br label %569

605:                                              ; preds = %569
  %606 = load i32, i32* @CP_QUEUE_THRESHOLDS, align 4
  %607 = call i32 @ROQ_IB1_START(i32 22)
  %608 = call i32 @ROQ_IB2_START(i32 43)
  %609 = or i32 %607, %608
  %610 = call i32 @WREG32(i32 %606, i32 %609)
  %611 = load i32, i32* @CP_MEQ_THRESHOLDS, align 4
  %612 = call i32 @MEQ1_START(i32 48)
  %613 = call i32 @MEQ2_START(i32 96)
  %614 = or i32 %612, %613
  %615 = call i32 @WREG32(i32 %611, i32 %614)
  %616 = load i32, i32* @SX_DEBUG_1, align 4
  %617 = call i32 @RREG32(i32 %616)
  store i32 %617, i32* %6, align 4
  %618 = load i32, i32* @SX_DEBUG_1, align 4
  %619 = load i32, i32* %6, align 4
  %620 = call i32 @WREG32(i32 %618, i32 %619)
  %621 = load i32, i32* @SPI_CONFIG_CNTL_1, align 4
  %622 = call i32 @VTX_DONE_DELAY(i32 4)
  %623 = call i32 @WREG32(i32 %621, i32 %622)
  %624 = load i32, i32* @PA_SC_FIFO_SIZE, align 4
  %625 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %626 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %625, i32 0, i32 1
  %627 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %626, i32 0, i32 0
  %628 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %627, i32 0, i32 9
  %629 = load i32, i32* %628, align 4
  %630 = call i32 @SC_FRONTEND_PRIM_FIFO_SIZE(i32 %629)
  %631 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %632 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %632, i32 0, i32 0
  %634 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %633, i32 0, i32 10
  %635 = load i32, i32* %634, align 8
  %636 = call i32 @SC_BACKEND_PRIM_FIFO_SIZE(i32 %635)
  %637 = or i32 %630, %636
  %638 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %639 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %638, i32 0, i32 1
  %640 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %639, i32 0, i32 0
  %641 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %640, i32 0, i32 11
  %642 = load i32, i32* %641, align 4
  %643 = call i32 @SC_HIZ_TILE_FIFO_SIZE(i32 %642)
  %644 = or i32 %637, %643
  %645 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %646 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %645, i32 0, i32 1
  %647 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %646, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %647, i32 0, i32 12
  %649 = load i32, i32* %648, align 8
  %650 = call i32 @SC_EARLYZ_TILE_FIFO_SIZE(i32 %649)
  %651 = or i32 %644, %650
  %652 = call i32 @WREG32(i32 %624, i32 %651)
  %653 = load i32, i32* @VGT_NUM_INSTANCES, align 4
  %654 = call i32 @WREG32(i32 %653, i32 1)
  %655 = load i32, i32* @CP_PERFMON_CNTL, align 4
  %656 = call i32 @WREG32(i32 %655, i32 0)
  %657 = load i32, i32* @SQ_CONFIG, align 4
  %658 = call i32 @WREG32(i32 %657, i32 0)
  %659 = load i32, i32* @PA_SC_FORCE_EOV_MAX_CNTS, align 4
  %660 = call i32 @FORCE_EOV_MAX_CLK_CNT(i32 4095)
  %661 = call i32 @FORCE_EOV_MAX_REZ_CNT(i32 255)
  %662 = or i32 %660, %661
  %663 = call i32 @WREG32(i32 %659, i32 %662)
  %664 = load i32, i32* @VGT_CACHE_INVALIDATION, align 4
  %665 = load i32, i32* @VC_AND_TC, align 4
  %666 = call i32 @CACHE_INVALIDATION(i32 %665)
  %667 = load i32, i32* @ES_AND_GS_AUTO, align 4
  %668 = call i32 @AUTO_INVLD_EN(i32 %667)
  %669 = or i32 %666, %668
  %670 = call i32 @WREG32(i32 %664, i32 %669)
  %671 = load i32, i32* @VGT_GS_VERTEX_REUSE, align 4
  %672 = call i32 @WREG32(i32 %671, i32 16)
  %673 = load i32, i32* @PA_SC_LINE_STIPPLE_STATE, align 4
  %674 = call i32 @WREG32(i32 %673, i32 0)
  %675 = load i32, i32* @CB_PERFCOUNTER0_SELECT0, align 4
  %676 = call i32 @WREG32(i32 %675, i32 0)
  %677 = load i32, i32* @CB_PERFCOUNTER0_SELECT1, align 4
  %678 = call i32 @WREG32(i32 %677, i32 0)
  %679 = load i32, i32* @CB_PERFCOUNTER1_SELECT0, align 4
  %680 = call i32 @WREG32(i32 %679, i32 0)
  %681 = load i32, i32* @CB_PERFCOUNTER1_SELECT1, align 4
  %682 = call i32 @WREG32(i32 %681, i32 0)
  %683 = load i32, i32* @CB_PERFCOUNTER2_SELECT0, align 4
  %684 = call i32 @WREG32(i32 %683, i32 0)
  %685 = load i32, i32* @CB_PERFCOUNTER2_SELECT1, align 4
  %686 = call i32 @WREG32(i32 %685, i32 0)
  %687 = load i32, i32* @CB_PERFCOUNTER3_SELECT0, align 4
  %688 = call i32 @WREG32(i32 %687, i32 0)
  %689 = load i32, i32* @CB_PERFCOUNTER3_SELECT1, align 4
  %690 = call i32 @WREG32(i32 %689, i32 0)
  %691 = load i32, i32* @HDP_MISC_CNTL, align 4
  %692 = call i32 @RREG32(i32 %691)
  store i32 %692, i32* %8, align 4
  %693 = load i32, i32* @HDP_FLUSH_INVALIDATE_CACHE, align 4
  %694 = load i32, i32* %8, align 4
  %695 = or i32 %694, %693
  store i32 %695, i32* %8, align 4
  %696 = load i32, i32* @HDP_MISC_CNTL, align 4
  %697 = load i32, i32* %8, align 4
  %698 = call i32 @WREG32(i32 %696, i32 %697)
  %699 = load i32, i32* @HDP_HOST_PATH_CNTL, align 4
  %700 = call i32 @RREG32(i32 %699)
  store i32 %700, i32* %7, align 4
  %701 = load i32, i32* @HDP_HOST_PATH_CNTL, align 4
  %702 = load i32, i32* %7, align 4
  %703 = call i32 @WREG32(i32 %701, i32 %702)
  %704 = load i32, i32* @PA_CL_ENHANCE, align 4
  %705 = load i32, i32* @CLIP_VTX_REORDER_ENA, align 4
  %706 = call i32 @NUM_CLIP_SEQ(i32 3)
  %707 = or i32 %705, %706
  %708 = call i32 @WREG32(i32 %704, i32 %707)
  %709 = call i32 @udelay(i32 50)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @GRBM_READ_TIMEOUT(i32) #1

declare dso_local i32 @evergreen_fix_pci_max_read_req_size(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @ROW_SIZE(i32) #1

declare dso_local i32 @si_tiling_mode_table_init(%struct.radeon_device*) #1

declare dso_local i32 @si_setup_rb(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @si_setup_spi(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i64 @hweight32(i32) #1

declare dso_local i32 @si_get_cu_active_bitmap(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @ROQ_IB1_START(i32) #1

declare dso_local i32 @ROQ_IB2_START(i32) #1

declare dso_local i32 @MEQ1_START(i32) #1

declare dso_local i32 @MEQ2_START(i32) #1

declare dso_local i32 @VTX_DONE_DELAY(i32) #1

declare dso_local i32 @SC_FRONTEND_PRIM_FIFO_SIZE(i32) #1

declare dso_local i32 @SC_BACKEND_PRIM_FIFO_SIZE(i32) #1

declare dso_local i32 @SC_HIZ_TILE_FIFO_SIZE(i32) #1

declare dso_local i32 @SC_EARLYZ_TILE_FIFO_SIZE(i32) #1

declare dso_local i32 @FORCE_EOV_MAX_CLK_CNT(i32) #1

declare dso_local i32 @FORCE_EOV_MAX_REZ_CNT(i32) #1

declare dso_local i32 @CACHE_INVALIDATION(i32) #1

declare dso_local i32 @AUTO_INVLD_EN(i32) #1

declare dso_local i32 @NUM_CLIP_SEQ(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
