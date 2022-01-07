; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@GB_ADDR_CONFIG = common dso_local global i32 0, align 4
@BONAIRE_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@HAWAII_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
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
@HDP_ADDR_CONFIG = common dso_local global i32 0, align 4
@DMIF_ADDR_CALC = common dso_local global i32 0, align 4
@SDMA0_TILING_CONFIG = common dso_local global i32 0, align 4
@SDMA0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@SDMA1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@UVD_UDEC_ADDR_CONFIG = common dso_local global i32 0, align 4
@UVD_UDEC_DB_ADDR_CONFIG = common dso_local global i32 0, align 4
@UVD_UDEC_DBW_ADDR_CONFIG = common dso_local global i32 0, align 4
@CP_MEQ_THRESHOLDS = common dso_local global i32 0, align 4
@SX_DEBUG_1 = common dso_local global i32 0, align 4
@TA_CNTL_AUX = common dso_local global i32 0, align 4
@SPI_CONFIG_CNTL = common dso_local global i32 0, align 4
@SQ_CONFIG = common dso_local global i32 0, align 4
@DB_DEBUG = common dso_local global i32 0, align 4
@DB_DEBUG2 = common dso_local global i32 0, align 4
@DB_DEBUG3 = common dso_local global i32 0, align 4
@CB_HW_CONTROL = common dso_local global i32 0, align 4
@SPI_CONFIG_CNTL_1 = common dso_local global i32 0, align 4
@PA_SC_FIFO_SIZE = common dso_local global i32 0, align 4
@VGT_NUM_INSTANCES = common dso_local global i32 0, align 4
@CP_PERFMON_CNTL = common dso_local global i32 0, align 4
@PA_SC_FORCE_EOV_MAX_CNTS = common dso_local global i32 0, align 4
@VGT_CACHE_INVALIDATION = common dso_local global i32 0, align 4
@VC_AND_TC = common dso_local global i32 0, align 4
@ES_AND_GS_AUTO = common dso_local global i32 0, align 4
@VGT_GS_VERTEX_REUSE = common dso_local global i32 0, align 4
@PA_SC_LINE_STIPPLE_STATE = common dso_local global i32 0, align 4
@HDP_MISC_CNTL = common dso_local global i32 0, align 4
@HDP_FLUSH_INVALIDATE_CACHE = common dso_local global i32 0, align 4
@HDP_HOST_PATH_CNTL = common dso_local global i32 0, align 4
@PA_CL_ENHANCE = common dso_local global i32 0, align 4
@CLIP_VTX_REORDER_ENA = common dso_local global i32 0, align 4
@PA_SC_ENHANCE = common dso_local global i32 0, align 4
@ENABLE_PA_SC_OUT_OF_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @cik_gpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_gpu_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %10 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %11 = call i32 @RREG32(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %178 [
    i32 132, label %15
    i32 131, label %69
    i32 129, label %123
    i32 130, label %177
    i32 128, label %177
  ]

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 4, i32* %23, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 7, i32* %27, align 8
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i32 1, i32* %31, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  store i32 2, i32* %35, align 8
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  store i32 4, i32* %39, align 4
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 6
  store i32 256, i32* %43, align 8
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 7
  store i32 32, i32* %47, align 4
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 8
  store i32 8, i32* %51, align 8
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 9
  store i32 32, i32* %55, align 4
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 10
  store i32 256, i32* %59, align 8
  %60 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 11
  store i32 48, i32* %63, align 4
  %64 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 12
  store i32 304, i32* %67, align 8
  %68 = load i32, i32* @BONAIRE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %68, i32* %3, align 4
  br label %232

69:                                               ; preds = %1
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 4, i32* %73, align 8
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 16, i32* %77, align 4
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 11, i32* %81, align 8
  %82 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  store i32 1, i32* %85, align 4
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  store i32 4, i32* %89, align 8
  %90 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 5
  store i32 16, i32* %93, align 4
  %94 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 6
  store i32 256, i32* %97, align 8
  %98 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 7
  store i32 32, i32* %101, align 4
  %102 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 8
  store i32 8, i32* %105, align 8
  %106 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 9
  store i32 32, i32* %109, align 4
  %110 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 10
  store i32 256, i32* %113, align 8
  %114 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 11
  store i32 48, i32* %117, align 4
  %118 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 12
  store i32 304, i32* %121, align 8
  %122 = load i32, i32* @HAWAII_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %122, i32* %3, align 4
  br label %232

123:                                              ; preds = %1
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
  store i32 8, i32* %135, align 8
  %136 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 4
  store i32 2, i32* %139, align 8
  %140 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  store i32 1, i32* %143, align 4
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
  store i32 16, i32* %155, align 4
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
  store i32 256, i32* %167, align 8
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
  %176 = load i32, i32* @BONAIRE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %176, i32* %3, align 4
  br label %232

177:                                              ; preds = %1, %1
  br label %178

178:                                              ; preds = %1, %177
  %179 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %180 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  %183 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %184 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  store i32 2, i32* %186, align 4
  %187 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %188 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  store i32 2, i32* %190, align 8
  %191 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %192 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 3
  store i32 1, i32* %194, align 4
  %195 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %196 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 4
  store i32 1, i32* %198, align 8
  %199 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %200 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 5
  store i32 2, i32* %202, align 4
  %203 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %204 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 6
  store i32 256, i32* %206, align 8
  %207 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %208 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 7
  store i32 16, i32* %210, align 4
  %211 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %212 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 8
  store i32 8, i32* %214, align 8
  %215 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 9
  store i32 32, i32* %218, align 4
  %219 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %220 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 10
  store i32 256, i32* %222, align 8
  %223 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %224 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 11
  store i32 48, i32* %226, align 4
  %227 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 12
  store i32 304, i32* %230, align 8
  %231 = load i32, i32* @BONAIRE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %178, %123, %69, %15
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %233

233:                                              ; preds = %252, %232
  %234 = load i32, i32* %8, align 4
  %235 = icmp slt i32 %234, 32
  br i1 %235, label %236, label %257

236:                                              ; preds = %233
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 11284, %237
  %239 = call i32 @WREG32(i32 %238, i32 0)
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 11288, %240
  %242 = call i32 @WREG32(i32 %241, i32 0)
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 11292, %243
  %245 = call i32 @WREG32(i32 %244, i32 0)
  %246 = load i32, i32* %9, align 4
  %247 = add nsw i32 11296, %246
  %248 = call i32 @WREG32(i32 %247, i32 0)
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 11300, %249
  %251 = call i32 @WREG32(i32 %250, i32 0)
  br label %252

252:                                              ; preds = %236
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %8, align 4
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, 24
  store i32 %256, i32* %9, align 4
  br label %233

257:                                              ; preds = %233
  %258 = load i32, i32* @GRBM_CNTL, align 4
  %259 = call i32 @GRBM_READ_TIMEOUT(i32 255)
  %260 = call i32 @WREG32(i32 %258, i32 %259)
  %261 = load i32, i32* @SRBM_INT_CNTL, align 4
  %262 = call i32 @WREG32(i32 %261, i32 1)
  %263 = load i32, i32* @SRBM_INT_ACK, align 4
  %264 = call i32 @WREG32(i32 %263, i32 1)
  %265 = load i32, i32* @BIF_FB_EN, align 4
  %266 = load i32, i32* @FB_READ_EN, align 4
  %267 = load i32, i32* @FB_WRITE_EN, align 4
  %268 = or i32 %266, %267
  %269 = call i32 @WREG32(i32 %265, i32 %268)
  %270 = load i32, i32* @MC_SHARED_CHMAP, align 4
  %271 = call i32 @RREG32(i32 %270)
  store i32 %271, i32* %4, align 4
  %272 = load i32, i32* @MC_ARB_RAMCFG, align 4
  %273 = call i32 @RREG32(i32 %272)
  store i32 %273, i32* %5, align 4
  %274 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %275 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %280 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 13
  store i32 %278, i32* %282, align 4
  %283 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %284 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 14
  store i32 256, i32* %286, align 8
  %287 = load i32, i32* %5, align 4
  %288 = load i32, i32* @NOOFCOLS_MASK, align 4
  %289 = and i32 %287, %288
  %290 = load i32, i32* @NOOFCOLS_SHIFT, align 4
  %291 = ashr i32 %289, %290
  store i32 %291, i32* %7, align 4
  %292 = load i32, i32* %7, align 4
  %293 = add nsw i32 8, %292
  %294 = shl i32 1, %293
  %295 = mul nsw i32 4, %294
  %296 = sdiv i32 %295, 1024
  %297 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %298 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 15
  store i32 %296, i32* %300, align 4
  %301 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %302 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 15
  %305 = load i32, i32* %304, align 4
  %306 = icmp sgt i32 %305, 4
  br i1 %306, label %307, label %312

307:                                              ; preds = %257
  %308 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %309 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 15
  store i32 4, i32* %311, align 4
  br label %312

312:                                              ; preds = %307, %257
  %313 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %314 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 16
  store i32 32, i32* %316, align 8
  %317 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %318 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 17
  store i32 1, i32* %320, align 4
  %321 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %322 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 18
  store i32 64, i32* %324, align 8
  %325 = load i32, i32* @ROW_SIZE_MASK, align 4
  %326 = xor i32 %325, -1
  %327 = load i32, i32* %3, align 4
  %328 = and i32 %327, %326
  store i32 %328, i32* %3, align 4
  %329 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %330 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 15
  %333 = load i32, i32* %332, align 4
  switch i32 %333, label %335 [
    i32 1, label %334
    i32 2, label %339
    i32 4, label %343
  ]

334:                                              ; preds = %312
  br label %335

335:                                              ; preds = %312, %334
  %336 = call i32 @ROW_SIZE(i32 0)
  %337 = load i32, i32* %3, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %3, align 4
  br label %347

339:                                              ; preds = %312
  %340 = call i32 @ROW_SIZE(i32 1)
  %341 = load i32, i32* %3, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %3, align 4
  br label %347

343:                                              ; preds = %312
  %344 = call i32 @ROW_SIZE(i32 2)
  %345 = load i32, i32* %3, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %3, align 4
  br label %347

347:                                              ; preds = %343, %339, %335
  %348 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %349 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 19
  store i32 0, i32* %351, align 4
  %352 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %353 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 13
  %356 = load i32, i32* %355, align 4
  switch i32 %356, label %378 [
    i32 1, label %357
    i32 2, label %363
    i32 4, label %370
    i32 8, label %377
  ]

357:                                              ; preds = %347
  %358 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %359 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 19
  %362 = load i32, i32* %361, align 4
  store i32 %362, i32* %361, align 4
  br label %385

363:                                              ; preds = %347
  %364 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %365 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 19
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, 1
  store i32 %369, i32* %367, align 4
  br label %385

370:                                              ; preds = %347
  %371 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %372 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 19
  %375 = load i32, i32* %374, align 4
  %376 = or i32 %375, 2
  store i32 %376, i32* %374, align 4
  br label %385

377:                                              ; preds = %347
  br label %378

378:                                              ; preds = %347, %377
  %379 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %380 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 19
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, 3
  store i32 %384, i32* %382, align 4
  br label %385

385:                                              ; preds = %378, %370, %363, %357
  %386 = load i32, i32* %5, align 4
  %387 = load i32, i32* @NOOFBANK_MASK, align 4
  %388 = and i32 %386, %387
  %389 = load i32, i32* @NOOFBANK_SHIFT, align 4
  %390 = ashr i32 %388, %389
  %391 = shl i32 %390, 4
  %392 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %393 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 19
  %396 = load i32, i32* %395, align 4
  %397 = or i32 %396, %391
  store i32 %397, i32* %395, align 4
  %398 = load i32, i32* %3, align 4
  %399 = load i32, i32* @PIPE_INTERLEAVE_SIZE_MASK, align 4
  %400 = and i32 %398, %399
  %401 = load i32, i32* @PIPE_INTERLEAVE_SIZE_SHIFT, align 4
  %402 = ashr i32 %400, %401
  %403 = shl i32 %402, 8
  %404 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %405 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 19
  %408 = load i32, i32* %407, align 4
  %409 = or i32 %408, %403
  store i32 %409, i32* %407, align 4
  %410 = load i32, i32* %3, align 4
  %411 = load i32, i32* @ROW_SIZE_MASK, align 4
  %412 = and i32 %410, %411
  %413 = load i32, i32* @ROW_SIZE_SHIFT, align 4
  %414 = ashr i32 %412, %413
  %415 = shl i32 %414, 12
  %416 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %417 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 19
  %420 = load i32, i32* %419, align 4
  %421 = or i32 %420, %415
  store i32 %421, i32* %419, align 4
  %422 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %423 = load i32, i32* %3, align 4
  %424 = call i32 @WREG32(i32 %422, i32 %423)
  %425 = load i32, i32* @HDP_ADDR_CONFIG, align 4
  %426 = load i32, i32* %3, align 4
  %427 = call i32 @WREG32(i32 %425, i32 %426)
  %428 = load i32, i32* @DMIF_ADDR_CALC, align 4
  %429 = load i32, i32* %3, align 4
  %430 = call i32 @WREG32(i32 %428, i32 %429)
  %431 = load i32, i32* @SDMA0_TILING_CONFIG, align 4
  %432 = load i32, i32* @SDMA0_REGISTER_OFFSET, align 4
  %433 = add nsw i32 %431, %432
  %434 = load i32, i32* %3, align 4
  %435 = and i32 %434, 112
  %436 = call i32 @WREG32(i32 %433, i32 %435)
  %437 = load i32, i32* @SDMA0_TILING_CONFIG, align 4
  %438 = load i32, i32* @SDMA1_REGISTER_OFFSET, align 4
  %439 = add nsw i32 %437, %438
  %440 = load i32, i32* %3, align 4
  %441 = and i32 %440, 112
  %442 = call i32 @WREG32(i32 %439, i32 %441)
  %443 = load i32, i32* @UVD_UDEC_ADDR_CONFIG, align 4
  %444 = load i32, i32* %3, align 4
  %445 = call i32 @WREG32(i32 %443, i32 %444)
  %446 = load i32, i32* @UVD_UDEC_DB_ADDR_CONFIG, align 4
  %447 = load i32, i32* %3, align 4
  %448 = call i32 @WREG32(i32 %446, i32 %447)
  %449 = load i32, i32* @UVD_UDEC_DBW_ADDR_CONFIG, align 4
  %450 = load i32, i32* %3, align 4
  %451 = call i32 @WREG32(i32 %449, i32 %450)
  %452 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %453 = call i32 @cik_tiling_mode_table_init(%struct.radeon_device* %452)
  %454 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %455 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %456 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %461 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %466 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 4
  %469 = load i32, i32* %468, align 8
  %470 = call i32 @cik_setup_rb(%struct.radeon_device* %454, i32 %459, i32 %464, i32 %469)
  %471 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %472 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 20
  store i64 0, i64* %474, align 8
  store i32 0, i32* %8, align 4
  br label %475

475:                                              ; preds = %508, %385
  %476 = load i32, i32* %8, align 4
  %477 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %478 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = icmp slt i32 %476, %481
  br i1 %482, label %483, label %511

483:                                              ; preds = %475
  store i32 0, i32* %9, align 4
  br label %484

484:                                              ; preds = %504, %483
  %485 = load i32, i32* %9, align 4
  %486 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %487 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %488, i32 0, i32 3
  %490 = load i32, i32* %489, align 4
  %491 = icmp slt i32 %485, %490
  br i1 %491, label %492, label %507

492:                                              ; preds = %484
  %493 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %494 = load i32, i32* %8, align 4
  %495 = load i32, i32* %9, align 4
  %496 = call i32 @cik_get_cu_active_bitmap(%struct.radeon_device* %493, i32 %494, i32 %495)
  %497 = call i64 @hweight32(i32 %496)
  %498 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %499 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %500, i32 0, i32 20
  %502 = load i64, i64* %501, align 8
  %503 = add nsw i64 %502, %497
  store i64 %503, i64* %501, align 8
  br label %504

504:                                              ; preds = %492
  %505 = load i32, i32* %9, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %9, align 4
  br label %484

507:                                              ; preds = %484
  br label %508

508:                                              ; preds = %507
  %509 = load i32, i32* %8, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %8, align 4
  br label %475

511:                                              ; preds = %475
  %512 = load i32, i32* @CP_MEQ_THRESHOLDS, align 4
  %513 = call i32 @MEQ1_START(i32 48)
  %514 = call i32 @MEQ2_START(i32 96)
  %515 = or i32 %513, %514
  %516 = call i32 @WREG32(i32 %512, i32 %515)
  %517 = load i32, i32* @SX_DEBUG_1, align 4
  %518 = call i32 @WREG32(i32 %517, i32 32)
  %519 = load i32, i32* @TA_CNTL_AUX, align 4
  %520 = call i32 @WREG32(i32 %519, i32 65536)
  %521 = load i32, i32* @SPI_CONFIG_CNTL, align 4
  %522 = call i32 @RREG32(i32 %521)
  store i32 %522, i32* %7, align 4
  %523 = load i32, i32* %7, align 4
  %524 = or i32 %523, 50331648
  store i32 %524, i32* %7, align 4
  %525 = load i32, i32* @SPI_CONFIG_CNTL, align 4
  %526 = load i32, i32* %7, align 4
  %527 = call i32 @WREG32(i32 %525, i32 %526)
  %528 = load i32, i32* @SQ_CONFIG, align 4
  %529 = call i32 @WREG32(i32 %528, i32 1)
  %530 = load i32, i32* @DB_DEBUG, align 4
  %531 = call i32 @WREG32(i32 %530, i32 0)
  %532 = load i32, i32* @DB_DEBUG2, align 4
  %533 = call i32 @RREG32(i32 %532)
  %534 = and i32 %533, 267386880
  store i32 %534, i32* %7, align 4
  %535 = load i32, i32* %7, align 4
  %536 = or i32 %535, 1024
  store i32 %536, i32* %7, align 4
  %537 = load i32, i32* @DB_DEBUG2, align 4
  %538 = load i32, i32* %7, align 4
  %539 = call i32 @WREG32(i32 %537, i32 %538)
  %540 = load i32, i32* @DB_DEBUG3, align 4
  %541 = call i32 @RREG32(i32 %540)
  %542 = and i32 %541, -131613
  store i32 %542, i32* %7, align 4
  %543 = load i32, i32* %7, align 4
  %544 = or i32 %543, 131584
  store i32 %544, i32* %7, align 4
  %545 = load i32, i32* @DB_DEBUG3, align 4
  %546 = load i32, i32* %7, align 4
  %547 = call i32 @WREG32(i32 %545, i32 %546)
  %548 = load i32, i32* @CB_HW_CONTROL, align 4
  %549 = call i32 @RREG32(i32 %548)
  %550 = and i32 %549, -65537
  store i32 %550, i32* %7, align 4
  %551 = load i32, i32* %7, align 4
  %552 = or i32 %551, 98824
  store i32 %552, i32* %7, align 4
  %553 = load i32, i32* @CB_HW_CONTROL, align 4
  %554 = load i32, i32* %7, align 4
  %555 = call i32 @WREG32(i32 %553, i32 %554)
  %556 = load i32, i32* @SPI_CONFIG_CNTL_1, align 4
  %557 = call i32 @VTX_DONE_DELAY(i32 4)
  %558 = call i32 @WREG32(i32 %556, i32 %557)
  %559 = load i32, i32* @PA_SC_FIFO_SIZE, align 4
  %560 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %561 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %562, i32 0, i32 9
  %564 = load i32, i32* %563, align 4
  %565 = call i32 @SC_FRONTEND_PRIM_FIFO_SIZE(i32 %564)
  %566 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %567 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %566, i32 0, i32 1
  %568 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %567, i32 0, i32 0
  %569 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %568, i32 0, i32 10
  %570 = load i32, i32* %569, align 8
  %571 = call i32 @SC_BACKEND_PRIM_FIFO_SIZE(i32 %570)
  %572 = or i32 %565, %571
  %573 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %574 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %575, i32 0, i32 11
  %577 = load i32, i32* %576, align 4
  %578 = call i32 @SC_HIZ_TILE_FIFO_SIZE(i32 %577)
  %579 = or i32 %572, %578
  %580 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %581 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %580, i32 0, i32 1
  %582 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %582, i32 0, i32 12
  %584 = load i32, i32* %583, align 8
  %585 = call i32 @SC_EARLYZ_TILE_FIFO_SIZE(i32 %584)
  %586 = or i32 %579, %585
  %587 = call i32 @WREG32(i32 %559, i32 %586)
  %588 = load i32, i32* @VGT_NUM_INSTANCES, align 4
  %589 = call i32 @WREG32(i32 %588, i32 1)
  %590 = load i32, i32* @CP_PERFMON_CNTL, align 4
  %591 = call i32 @WREG32(i32 %590, i32 0)
  %592 = load i32, i32* @SQ_CONFIG, align 4
  %593 = call i32 @WREG32(i32 %592, i32 0)
  %594 = load i32, i32* @PA_SC_FORCE_EOV_MAX_CNTS, align 4
  %595 = call i32 @FORCE_EOV_MAX_CLK_CNT(i32 4095)
  %596 = call i32 @FORCE_EOV_MAX_REZ_CNT(i32 255)
  %597 = or i32 %595, %596
  %598 = call i32 @WREG32(i32 %594, i32 %597)
  %599 = load i32, i32* @VGT_CACHE_INVALIDATION, align 4
  %600 = load i32, i32* @VC_AND_TC, align 4
  %601 = call i32 @CACHE_INVALIDATION(i32 %600)
  %602 = load i32, i32* @ES_AND_GS_AUTO, align 4
  %603 = call i32 @AUTO_INVLD_EN(i32 %602)
  %604 = or i32 %601, %603
  %605 = call i32 @WREG32(i32 %599, i32 %604)
  %606 = load i32, i32* @VGT_GS_VERTEX_REUSE, align 4
  %607 = call i32 @WREG32(i32 %606, i32 16)
  %608 = load i32, i32* @PA_SC_LINE_STIPPLE_STATE, align 4
  %609 = call i32 @WREG32(i32 %608, i32 0)
  %610 = load i32, i32* @HDP_MISC_CNTL, align 4
  %611 = call i32 @RREG32(i32 %610)
  store i32 %611, i32* %7, align 4
  %612 = load i32, i32* @HDP_FLUSH_INVALIDATE_CACHE, align 4
  %613 = load i32, i32* %7, align 4
  %614 = or i32 %613, %612
  store i32 %614, i32* %7, align 4
  %615 = load i32, i32* @HDP_MISC_CNTL, align 4
  %616 = load i32, i32* %7, align 4
  %617 = call i32 @WREG32(i32 %615, i32 %616)
  %618 = load i32, i32* @HDP_HOST_PATH_CNTL, align 4
  %619 = call i32 @RREG32(i32 %618)
  store i32 %619, i32* %6, align 4
  %620 = load i32, i32* @HDP_HOST_PATH_CNTL, align 4
  %621 = load i32, i32* %6, align 4
  %622 = call i32 @WREG32(i32 %620, i32 %621)
  %623 = load i32, i32* @PA_CL_ENHANCE, align 4
  %624 = load i32, i32* @CLIP_VTX_REORDER_ENA, align 4
  %625 = call i32 @NUM_CLIP_SEQ(i32 3)
  %626 = or i32 %624, %625
  %627 = call i32 @WREG32(i32 %623, i32 %626)
  %628 = load i32, i32* @PA_SC_ENHANCE, align 4
  %629 = load i32, i32* @ENABLE_PA_SC_OUT_OF_ORDER, align 4
  %630 = call i32 @WREG32(i32 %628, i32 %629)
  %631 = call i32 @udelay(i32 50)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @GRBM_READ_TIMEOUT(i32) #1

declare dso_local i32 @ROW_SIZE(i32) #1

declare dso_local i32 @cik_tiling_mode_table_init(%struct.radeon_device*) #1

declare dso_local i32 @cik_setup_rb(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i64 @hweight32(i32) #1

declare dso_local i32 @cik_get_cu_active_bitmap(%struct.radeon_device*, i32, i32) #1

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
