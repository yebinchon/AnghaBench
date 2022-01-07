; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { i32, i32 }

@GMU_OOB_GPU_SET = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_SECVID_TSB_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_SECVID_TSB_TRUSTED_SIZE = common dso_local global i32 0, align 4
@REG_A6XX_CP_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_VSC_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_GRAS_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_RB_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_PC_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_HLSQ_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_VFD_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_VPC_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_SP_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_TPL1_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_VBIF_GATE_OFF_WRREQ_EN = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_VBIF_CLIENT_QOS_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_PERFCTR_GPU_BUSY_MASKED = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_WRITE_RANGE_MAX_LO = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_WRITE_RANGE_MAX_HI = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_TRAP_BASE_LO = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_TRAP_BASE_HI = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_WRITE_THRU_BASE_LO = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_WRITE_THRU_BASE_HI = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_GMEM_RANGE_MIN_LO = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_GMEM_RANGE_MIN_HI = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_GMEM_RANGE_MAX_LO = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_GMEM_RANGE_MAX_HI = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_FILTER_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_CACHE_WAYS = common dso_local global i32 0, align 4
@REG_A6XX_CP_ROQ_THRESHOLDS_2 = common dso_local global i32 0, align 4
@REG_A6XX_CP_ROQ_THRESHOLDS_1 = common dso_local global i32 0, align 4
@REG_A6XX_CP_MEM_POOL_SIZE = common dso_local global i32 0, align 4
@REG_A6XX_PC_DBG_ECO_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_CP_AHB_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_PERFCTR_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_CP_PERFCTR_CP_SEL_0 = common dso_local global i32 0, align 4
@PERF_CP_ALWAYS_COUNT = common dso_local global i32 0, align 4
@REG_A6XX_RB_NC_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_TPL1_NC_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_SP_NC_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_MODE_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_INTERFACE_HANG_INT_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_UCHE_CLIENT_PF = common dso_local global i32 0, align 4
@REG_A6XX_CP_PROTECT_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_INT_0_MASK = common dso_local global i32 0, align 4
@A6XX_INT_MASK = common dso_local global i32 0, align 4
@REG_A6XX_CP_SQE_CNTL = common dso_local global i32 0, align 4
@CP_SET_SECURE_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Zap shader not enabled - using SECVID_TRUST_CNTL instead\0A\00", align 1
@REG_A6XX_RBBM_SECVID_TRUST_CNTL = common dso_local global i32 0, align 4
@GMU_OOB_BOOT_SLUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a6xx_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_hw_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca %struct.a6xx_gpu*, align 8
  %6 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %8 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %7)
  store %struct.adreno_gpu* %8, %struct.adreno_gpu** %4, align 8
  %9 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %10 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %9)
  store %struct.a6xx_gpu* %10, %struct.a6xx_gpu** %5, align 8
  %11 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %12 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %11, i32 0, i32 0
  %13 = load i32, i32* @GMU_OOB_GPU_SET, align 4
  %14 = call i32 @a6xx_gmu_set_oob(i32* %12, i32 %13)
  %15 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %16 = load i32, i32* @REG_A6XX_RBBM_SECVID_TSB_CNTL, align 4
  %17 = call i32 @gpu_write(%struct.msm_gpu* %15, i32 %16, i32 0)
  %18 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %19 = load i32, i32* @REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO, align 4
  %20 = load i32, i32* @REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI, align 4
  %21 = call i32 @gpu_write64(%struct.msm_gpu* %18, i32 %19, i32 %20, i32 0)
  %22 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %23 = load i32, i32* @REG_A6XX_RBBM_SECVID_TSB_TRUSTED_SIZE, align 4
  %24 = call i32 @gpu_write(%struct.msm_gpu* %22, i32 %23, i32 0)
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %26 = load i32, i32* @REG_A6XX_CP_ADDR_MODE_CNTL, align 4
  %27 = call i32 @gpu_write(%struct.msm_gpu* %25, i32 %26, i32 1)
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %29 = load i32, i32* @REG_A6XX_VSC_ADDR_MODE_CNTL, align 4
  %30 = call i32 @gpu_write(%struct.msm_gpu* %28, i32 %29, i32 1)
  %31 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %32 = load i32, i32* @REG_A6XX_GRAS_ADDR_MODE_CNTL, align 4
  %33 = call i32 @gpu_write(%struct.msm_gpu* %31, i32 %32, i32 1)
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %35 = load i32, i32* @REG_A6XX_RB_ADDR_MODE_CNTL, align 4
  %36 = call i32 @gpu_write(%struct.msm_gpu* %34, i32 %35, i32 1)
  %37 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %38 = load i32, i32* @REG_A6XX_PC_ADDR_MODE_CNTL, align 4
  %39 = call i32 @gpu_write(%struct.msm_gpu* %37, i32 %38, i32 1)
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %41 = load i32, i32* @REG_A6XX_HLSQ_ADDR_MODE_CNTL, align 4
  %42 = call i32 @gpu_write(%struct.msm_gpu* %40, i32 %41, i32 1)
  %43 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %44 = load i32, i32* @REG_A6XX_VFD_ADDR_MODE_CNTL, align 4
  %45 = call i32 @gpu_write(%struct.msm_gpu* %43, i32 %44, i32 1)
  %46 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %47 = load i32, i32* @REG_A6XX_VPC_ADDR_MODE_CNTL, align 4
  %48 = call i32 @gpu_write(%struct.msm_gpu* %46, i32 %47, i32 1)
  %49 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %50 = load i32, i32* @REG_A6XX_UCHE_ADDR_MODE_CNTL, align 4
  %51 = call i32 @gpu_write(%struct.msm_gpu* %49, i32 %50, i32 1)
  %52 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %53 = load i32, i32* @REG_A6XX_SP_ADDR_MODE_CNTL, align 4
  %54 = call i32 @gpu_write(%struct.msm_gpu* %52, i32 %53, i32 1)
  %55 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %56 = load i32, i32* @REG_A6XX_TPL1_ADDR_MODE_CNTL, align 4
  %57 = call i32 @gpu_write(%struct.msm_gpu* %55, i32 %56, i32 1)
  %58 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %59 = load i32, i32* @REG_A6XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL, align 4
  %60 = call i32 @gpu_write(%struct.msm_gpu* %58, i32 %59, i32 1)
  %61 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %62 = call i32 @a6xx_set_hwcg(%struct.msm_gpu* %61, i32 1)
  %63 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %64 = load i32, i32* @REG_A6XX_VBIF_GATE_OFF_WRREQ_EN, align 4
  %65 = call i32 @gpu_write(%struct.msm_gpu* %63, i32 %64, i32 9)
  %66 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %67 = load i32, i32* @REG_A6XX_RBBM_VBIF_CLIENT_QOS_CNTL, align 4
  %68 = call i32 @gpu_write(%struct.msm_gpu* %66, i32 %67, i32 3)
  %69 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %70 = load i32, i32* @REG_A6XX_RBBM_PERFCTR_GPU_BUSY_MASKED, align 4
  %71 = call i32 @gpu_write(%struct.msm_gpu* %69, i32 %70, i32 -1)
  %72 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %73 = load i32, i32* @REG_A6XX_UCHE_WRITE_RANGE_MAX_LO, align 4
  %74 = call i32 @gpu_write(%struct.msm_gpu* %72, i32 %73, i32 -64)
  %75 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %76 = load i32, i32* @REG_A6XX_UCHE_WRITE_RANGE_MAX_HI, align 4
  %77 = call i32 @gpu_write(%struct.msm_gpu* %75, i32 %76, i32 131071)
  %78 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %79 = load i32, i32* @REG_A6XX_UCHE_TRAP_BASE_LO, align 4
  %80 = call i32 @gpu_write(%struct.msm_gpu* %78, i32 %79, i32 -4096)
  %81 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %82 = load i32, i32* @REG_A6XX_UCHE_TRAP_BASE_HI, align 4
  %83 = call i32 @gpu_write(%struct.msm_gpu* %81, i32 %82, i32 131071)
  %84 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %85 = load i32, i32* @REG_A6XX_UCHE_WRITE_THRU_BASE_LO, align 4
  %86 = call i32 @gpu_write(%struct.msm_gpu* %84, i32 %85, i32 -4096)
  %87 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %88 = load i32, i32* @REG_A6XX_UCHE_WRITE_THRU_BASE_HI, align 4
  %89 = call i32 @gpu_write(%struct.msm_gpu* %87, i32 %88, i32 131071)
  %90 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %91 = load i32, i32* @REG_A6XX_UCHE_GMEM_RANGE_MIN_LO, align 4
  %92 = load i32, i32* @REG_A6XX_UCHE_GMEM_RANGE_MIN_HI, align 4
  %93 = call i32 @gpu_write64(%struct.msm_gpu* %90, i32 %91, i32 %92, i32 1048576)
  %94 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %95 = load i32, i32* @REG_A6XX_UCHE_GMEM_RANGE_MAX_LO, align 4
  %96 = load i32, i32* @REG_A6XX_UCHE_GMEM_RANGE_MAX_HI, align 4
  %97 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %98 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 1048576, %99
  %101 = sub nsw i32 %100, 1
  %102 = call i32 @gpu_write64(%struct.msm_gpu* %94, i32 %95, i32 %96, i32 %101)
  %103 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %104 = load i32, i32* @REG_A6XX_UCHE_FILTER_CNTL, align 4
  %105 = call i32 @gpu_write(%struct.msm_gpu* %103, i32 %104, i32 2052)
  %106 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %107 = load i32, i32* @REG_A6XX_UCHE_CACHE_WAYS, align 4
  %108 = call i32 @gpu_write(%struct.msm_gpu* %106, i32 %107, i32 4)
  %109 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %110 = load i32, i32* @REG_A6XX_CP_ROQ_THRESHOLDS_2, align 4
  %111 = call i32 @gpu_write(%struct.msm_gpu* %109, i32 %110, i32 16777408)
  %112 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %113 = load i32, i32* @REG_A6XX_CP_ROQ_THRESHOLDS_1, align 4
  %114 = call i32 @gpu_write(%struct.msm_gpu* %112, i32 %113, i32 -2143275476)
  %115 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %116 = load i32, i32* @REG_A6XX_CP_MEM_POOL_SIZE, align 4
  %117 = call i32 @gpu_write(%struct.msm_gpu* %115, i32 %116, i32 128)
  %118 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %119 = load i32, i32* @REG_A6XX_PC_DBG_ECO_CNTL, align 4
  %120 = call i32 @gpu_write(%struct.msm_gpu* %118, i32 %119, i32 1572864)
  %121 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %122 = load i32, i32* @REG_A6XX_CP_AHB_CNTL, align 4
  %123 = call i32 @gpu_write(%struct.msm_gpu* %121, i32 %122, i32 1)
  %124 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %125 = load i32, i32* @REG_A6XX_RBBM_PERFCTR_CNTL, align 4
  %126 = call i32 @gpu_write(%struct.msm_gpu* %124, i32 %125, i32 1)
  %127 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %128 = load i32, i32* @REG_A6XX_CP_PERFCTR_CP_SEL_0, align 4
  %129 = load i32, i32* @PERF_CP_ALWAYS_COUNT, align 4
  %130 = call i32 @gpu_write(%struct.msm_gpu* %127, i32 %128, i32 %129)
  %131 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %132 = load i32, i32* @REG_A6XX_RB_NC_MODE_CNTL, align 4
  %133 = call i32 @gpu_write(%struct.msm_gpu* %131, i32 %132, i32 4)
  %134 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %135 = load i32, i32* @REG_A6XX_TPL1_NC_MODE_CNTL, align 4
  %136 = call i32 @gpu_write(%struct.msm_gpu* %134, i32 %135, i32 4)
  %137 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %138 = load i32, i32* @REG_A6XX_SP_NC_MODE_CNTL, align 4
  %139 = call i32 @gpu_write(%struct.msm_gpu* %137, i32 %138, i32 4)
  %140 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %141 = load i32, i32* @REG_A6XX_UCHE_MODE_CNTL, align 4
  %142 = call i32 @gpu_write(%struct.msm_gpu* %140, i32 %141, i32 4194304)
  %143 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %144 = load i32, i32* @REG_A6XX_RBBM_INTERFACE_HANG_INT_CNTL, align 4
  %145 = call i32 @gpu_write(%struct.msm_gpu* %143, i32 %144, i32 1075838975)
  %146 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %147 = load i32, i32* @REG_A6XX_UCHE_CLIENT_PF, align 4
  %148 = call i32 @gpu_write(%struct.msm_gpu* %146, i32 %147, i32 1)
  %149 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %150 = load i32, i32* @REG_A6XX_CP_PROTECT_CNTL, align 4
  %151 = call i32 @gpu_write(%struct.msm_gpu* %149, i32 %150, i32 3)
  %152 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %153 = call i32 @REG_A6XX_CP_PROTECT(i32 0)
  %154 = call i32 @A6XX_PROTECT_RDONLY(i32 1536, i32 81)
  %155 = call i32 @gpu_write(%struct.msm_gpu* %152, i32 %153, i32 %154)
  %156 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %157 = call i32 @REG_A6XX_CP_PROTECT(i32 1)
  %158 = call i32 @A6XX_PROTECT_RW(i32 44624, i32 2)
  %159 = call i32 @gpu_write(%struct.msm_gpu* %156, i32 %157, i32 %158)
  %160 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %161 = call i32 @REG_A6XX_CP_PROTECT(i32 2)
  %162 = call i32 @A6XX_PROTECT_RW(i32 38436, i32 19)
  %163 = call i32 @gpu_write(%struct.msm_gpu* %160, i32 %161, i32 %162)
  %164 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %165 = call i32 @REG_A6XX_CP_PROTECT(i32 3)
  %166 = call i32 @A6XX_PROTECT_RW(i32 34352, i32 8)
  %167 = call i32 @gpu_write(%struct.msm_gpu* %164, i32 %165, i32 %166)
  %168 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %169 = call i32 @REG_A6XX_CP_PROTECT(i32 4)
  %170 = call i32 @A6XX_PROTECT_RW(i32 40560, i32 1)
  %171 = call i32 @gpu_write(%struct.msm_gpu* %168, i32 %169, i32 %170)
  %172 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %173 = call i32 @REG_A6XX_CP_PROTECT(i32 5)
  %174 = call i32 @A6XX_PROTECT_RW(i32 40568, i32 391)
  %175 = call i32 @gpu_write(%struct.msm_gpu* %172, i32 %173, i32 %174)
  %176 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %177 = call i32 @REG_A6XX_CP_PROTECT(i32 6)
  %178 = call i32 @A6XX_PROTECT_RW(i32 61440, i32 2064)
  %179 = call i32 @gpu_write(%struct.msm_gpu* %176, i32 %177, i32 %178)
  %180 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %181 = call i32 @REG_A6XX_CP_PROTECT(i32 7)
  %182 = call i32 @A6XX_PROTECT_RDONLY(i32 64512, i32 3)
  %183 = call i32 @gpu_write(%struct.msm_gpu* %180, i32 %181, i32 %182)
  %184 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %185 = call i32 @REG_A6XX_CP_PROTECT(i32 8)
  %186 = call i32 @A6XX_PROTECT_RW(i32 1294, i32 0)
  %187 = call i32 @gpu_write(%struct.msm_gpu* %184, i32 %185, i32 %186)
  %188 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %189 = call i32 @REG_A6XX_CP_PROTECT(i32 9)
  %190 = call i32 @A6XX_PROTECT_RDONLY(i32 1295, i32 0)
  %191 = call i32 @gpu_write(%struct.msm_gpu* %188, i32 %189, i32 %190)
  %192 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %193 = call i32 @REG_A6XX_CP_PROTECT(i32 10)
  %194 = call i32 @A6XX_PROTECT_RW(i32 1296, i32 0)
  %195 = call i32 @gpu_write(%struct.msm_gpu* %192, i32 %193, i32 %194)
  %196 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %197 = call i32 @REG_A6XX_CP_PROTECT(i32 11)
  %198 = call i32 @A6XX_PROTECT_RDONLY(i32 0, i32 1273)
  %199 = call i32 @gpu_write(%struct.msm_gpu* %196, i32 %197, i32 %198)
  %200 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %201 = call i32 @REG_A6XX_CP_PROTECT(i32 12)
  %202 = call i32 @A6XX_PROTECT_RDONLY(i32 1281, i32 10)
  %203 = call i32 @gpu_write(%struct.msm_gpu* %200, i32 %201, i32 %202)
  %204 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %205 = call i32 @REG_A6XX_CP_PROTECT(i32 13)
  %206 = call i32 @A6XX_PROTECT_RDONLY(i32 1297, i32 68)
  %207 = call i32 @gpu_write(%struct.msm_gpu* %204, i32 %205, i32 %206)
  %208 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %209 = call i32 @REG_A6XX_CP_PROTECT(i32 14)
  %210 = call i32 @A6XX_PROTECT_RW(i32 3584, i32 14)
  %211 = call i32 @gpu_write(%struct.msm_gpu* %208, i32 %209, i32 %210)
  %212 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %213 = call i32 @REG_A6XX_CP_PROTECT(i32 15)
  %214 = call i32 @A6XX_PROTECT_RW(i32 36352, i32 0)
  %215 = call i32 @gpu_write(%struct.msm_gpu* %212, i32 %213, i32 %214)
  %216 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %217 = call i32 @REG_A6XX_CP_PROTECT(i32 16)
  %218 = call i32 @A6XX_PROTECT_RW(i32 36432, i32 15)
  %219 = call i32 @gpu_write(%struct.msm_gpu* %216, i32 %217, i32 %218)
  %220 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %221 = call i32 @REG_A6XX_CP_PROTECT(i32 17)
  %222 = call i32 @A6XX_PROTECT_RW(i32 48642, i32 0)
  %223 = call i32 @gpu_write(%struct.msm_gpu* %220, i32 %221, i32 %222)
  %224 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %225 = call i32 @REG_A6XX_CP_PROTECT(i32 18)
  %226 = call i32 @A6XX_PROTECT_RW(i32 48672, i32 4595)
  %227 = call i32 @gpu_write(%struct.msm_gpu* %224, i32 %225, i32 %226)
  %228 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %229 = call i32 @REG_A6XX_CP_PROTECT(i32 19)
  %230 = call i32 @A6XX_PROTECT_RW(i32 2048, i32 130)
  %231 = call i32 @gpu_write(%struct.msm_gpu* %228, i32 %229, i32 %230)
  %232 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %233 = call i32 @REG_A6XX_CP_PROTECT(i32 20)
  %234 = call i32 @A6XX_PROTECT_RW(i32 2208, i32 8)
  %235 = call i32 @gpu_write(%struct.msm_gpu* %232, i32 %233, i32 %234)
  %236 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %237 = call i32 @REG_A6XX_CP_PROTECT(i32 21)
  %238 = call i32 @A6XX_PROTECT_RW(i32 2219, i32 25)
  %239 = call i32 @gpu_write(%struct.msm_gpu* %236, i32 %237, i32 %238)
  %240 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %241 = call i32 @REG_A6XX_CP_PROTECT(i32 22)
  %242 = call i32 @A6XX_PROTECT_RW(i32 2304, i32 77)
  %243 = call i32 @gpu_write(%struct.msm_gpu* %240, i32 %241, i32 %242)
  %244 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %245 = call i32 @REG_A6XX_CP_PROTECT(i32 23)
  %246 = call i32 @A6XX_PROTECT_RW(i32 2445, i32 118)
  %247 = call i32 @gpu_write(%struct.msm_gpu* %244, i32 %245, i32 %246)
  %248 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %249 = call i32 @REG_A6XX_CP_PROTECT(i32 24)
  %250 = call i32 @A6XX_PROTECT_RDONLY(i32 2432, i32 4)
  %251 = call i32 @gpu_write(%struct.msm_gpu* %248, i32 %249, i32 %250)
  %252 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %253 = call i32 @REG_A6XX_CP_PROTECT(i32 25)
  %254 = call i32 @A6XX_PROTECT_RW(i32 42544, i32 0)
  %255 = call i32 @gpu_write(%struct.msm_gpu* %252, i32 %253, i32 %254)
  %256 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %257 = load i32, i32* @REG_A6XX_RBBM_INT_0_MASK, align 4
  %258 = load i32, i32* @A6XX_INT_MASK, align 4
  %259 = call i32 @gpu_write(%struct.msm_gpu* %256, i32 %257, i32 %258)
  %260 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %261 = call i32 @adreno_hw_init(%struct.msm_gpu* %260)
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %1
  br label %336

265:                                              ; preds = %1
  %266 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %267 = call i32 @a6xx_ucode_init(%struct.msm_gpu* %266)
  store i32 %267, i32* %6, align 4
  %268 = load i32, i32* %6, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  br label %336

271:                                              ; preds = %265
  %272 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %273 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %278 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  %279 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %280 = load i32, i32* @REG_A6XX_CP_SQE_CNTL, align 4
  %281 = call i32 @gpu_write(%struct.msm_gpu* %279, i32 %280, i32 1)
  %282 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %283 = call i32 @a6xx_cp_init(%struct.msm_gpu* %282)
  store i32 %283, i32* %6, align 4
  %284 = load i32, i32* %6, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %271
  br label %336

287:                                              ; preds = %271
  %288 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %289 = call i32 @a6xx_zap_shader_init(%struct.msm_gpu* %288)
  store i32 %289, i32* %6, align 4
  %290 = load i32, i32* %6, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %325, label %292

292:                                              ; preds = %287
  %293 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %294 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @CP_SET_SECURE_MODE, align 4
  %299 = call i32 @OUT_PKT7(i32 %297, i32 %298, i32 1)
  %300 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %301 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @OUT_RING(i32 %304, i32 0)
  %306 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %307 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %308 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @a6xx_flush(%struct.msm_gpu* %306, i32 %311)
  %313 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %314 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %315 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @a6xx_idle(%struct.msm_gpu* %313, i32 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %292
  %322 = load i32, i32* @EINVAL, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %2, align 4
  br label %346

324:                                              ; preds = %292
  br label %335

325:                                              ; preds = %287
  %326 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %327 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %326, i32 0, i32 0
  %328 = load %struct.TYPE_2__*, %struct.TYPE_2__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @dev_warn_once(i32 %330, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %332 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %333 = load i32, i32* @REG_A6XX_RBBM_SECVID_TRUST_CNTL, align 4
  %334 = call i32 @gpu_write(%struct.msm_gpu* %332, i32 %333, i32 0)
  store i32 0, i32* %6, align 4
  br label %335

335:                                              ; preds = %325, %324
  br label %336

336:                                              ; preds = %335, %286, %270, %264
  %337 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %338 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %337, i32 0, i32 0
  %339 = load i32, i32* @GMU_OOB_GPU_SET, align 4
  %340 = call i32 @a6xx_gmu_clear_oob(i32* %338, i32 %339)
  %341 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %5, align 8
  %342 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %341, i32 0, i32 0
  %343 = load i32, i32* @GMU_OOB_BOOT_SLUMBER, align 4
  %344 = call i32 @a6xx_gmu_clear_oob(i32* %342, i32 %343)
  %345 = load i32, i32* %6, align 4
  store i32 %345, i32* %2, align 4
  br label %346

346:                                              ; preds = %336, %321
  %347 = load i32, i32* %2, align 4
  ret i32 %347
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @a6xx_gmu_set_oob(i32*, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @gpu_write64(%struct.msm_gpu*, i32, i32, i32) #1

declare dso_local i32 @a6xx_set_hwcg(%struct.msm_gpu*, i32) #1

declare dso_local i32 @REG_A6XX_CP_PROTECT(i32) #1

declare dso_local i32 @A6XX_PROTECT_RDONLY(i32, i32) #1

declare dso_local i32 @A6XX_PROTECT_RW(i32, i32) #1

declare dso_local i32 @adreno_hw_init(%struct.msm_gpu*) #1

declare dso_local i32 @a6xx_ucode_init(%struct.msm_gpu*) #1

declare dso_local i32 @a6xx_cp_init(%struct.msm_gpu*) #1

declare dso_local i32 @a6xx_zap_shader_init(%struct.msm_gpu*) #1

declare dso_local i32 @OUT_PKT7(i32, i32, i32) #1

declare dso_local i32 @OUT_RING(i32, i32) #1

declare dso_local i32 @a6xx_flush(%struct.msm_gpu*, i32) #1

declare dso_local i32 @a6xx_idle(%struct.msm_gpu*, i32) #1

declare dso_local i32 @dev_warn_once(i32, i8*) #1

declare dso_local i32 @a6xx_gmu_clear_oob(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
