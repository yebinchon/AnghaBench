; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx_gpu.c_a2xx_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx_gpu.c_a2xx_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.adreno_gpu = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@REG_AXXX_CP_ME_CNTL = common dso_local global i32 0, align 4
@AXXX_CP_ME_CNTL_HALT = common dso_local global i32 0, align 4
@REG_A2XX_RBBM_PM_OVERRIDE1 = common dso_local global i32 0, align 4
@REG_A2XX_RBBM_PM_OVERRIDE2 = common dso_local global i32 0, align 4
@REG_A2XX_RBBM_SOFT_RESET = common dso_local global i32 0, align 4
@REG_A2XX_SQ_FLOW_CONTROL = common dso_local global i32 0, align 4
@REG_A2XX_RBBM_CNTL = common dso_local global i32 0, align 4
@REG_A2XX_MH_MMU_MPU_BASE = common dso_local global i32 0, align 4
@REG_A2XX_MH_MMU_MPU_END = common dso_local global i32 0, align 4
@REG_A2XX_MH_MMU_CONFIG = common dso_local global i32 0, align 4
@A2XX_MH_MMU_CONFIG_MMU_ENABLE = common dso_local global i32 0, align 4
@BEH_TRAN_RNG = common dso_local global i32 0, align 4
@REG_A2XX_MH_MMU_VA_RANGE = common dso_local global i32 0, align 4
@SZ_16M = common dso_local global i32 0, align 4
@REG_A2XX_MH_MMU_PT_BASE = common dso_local global i32 0, align 4
@REG_A2XX_MH_MMU_TRAN_ERROR = common dso_local global i32 0, align 4
@REG_A2XX_MH_MMU_INVALIDATE = common dso_local global i32 0, align 4
@A2XX_MH_MMU_INVALIDATE_INVALIDATE_ALL = common dso_local global i32 0, align 4
@A2XX_MH_MMU_INVALIDATE_INVALIDATE_TC = common dso_local global i32 0, align 4
@REG_A2XX_MH_ARBITER_CONFIG = common dso_local global i32 0, align 4
@A2XX_MH_ARBITER_CONFIG_L1_ARB_ENABLE = common dso_local global i32 0, align 4
@A2XX_MH_ARBITER_CONFIG_L1_ARB_HOLD_ENABLE = common dso_local global i32 0, align 4
@A2XX_MH_ARBITER_CONFIG_TC_REORDER_ENABLE = common dso_local global i32 0, align 4
@A2XX_MH_ARBITER_CONFIG_TC_ARB_HOLD_ENABLE = common dso_local global i32 0, align 4
@A2XX_MH_ARBITER_CONFIG_IN_FLIGHT_LIMIT_ENABLE = common dso_local global i32 0, align 4
@A2XX_MH_ARBITER_CONFIG_CP_CLNT_ENABLE = common dso_local global i32 0, align 4
@A2XX_MH_ARBITER_CONFIG_VGT_CLNT_ENABLE = common dso_local global i32 0, align 4
@A2XX_MH_ARBITER_CONFIG_TC_CLNT_ENABLE = common dso_local global i32 0, align 4
@A2XX_MH_ARBITER_CONFIG_RB_CLNT_ENABLE = common dso_local global i32 0, align 4
@A2XX_MH_ARBITER_CONFIG_PA_CLNT_ENABLE = common dso_local global i32 0, align 4
@REG_A2XX_MH_CLNT_INTF_CTRL_CONFIG1 = common dso_local global i32 0, align 4
@REG_A2XX_SQ_VS_PROGRAM = common dso_local global i32 0, align 4
@REG_A2XX_SQ_PS_PROGRAM = common dso_local global i32 0, align 4
@REG_A2XX_RBBM_DEBUG = common dso_local global i32 0, align 4
@REG_A2XX_RBBM_INT_CNTL = common dso_local global i32 0, align 4
@A2XX_RBBM_INT_CNTL_RDERR_INT_MASK = common dso_local global i32 0, align 4
@REG_AXXX_CP_INT_CNTL = common dso_local global i32 0, align 4
@AXXX_CP_INT_CNTL_T0_PACKET_IN_IB_MASK = common dso_local global i32 0, align 4
@AXXX_CP_INT_CNTL_OPCODE_ERROR_MASK = common dso_local global i32 0, align 4
@AXXX_CP_INT_CNTL_PROTECTED_MODE_ERROR_MASK = common dso_local global i32 0, align 4
@AXXX_CP_INT_CNTL_RESERVED_BIT_ERROR_MASK = common dso_local global i32 0, align 4
@AXXX_CP_INT_CNTL_IB_ERROR_MASK = common dso_local global i32 0, align 4
@AXXX_CP_INT_CNTL_IB1_INT_MASK = common dso_local global i32 0, align 4
@AXXX_CP_INT_CNTL_RB_INT_MASK = common dso_local global i32 0, align 4
@REG_A2XX_SQ_INT_CNTL = common dso_local global i32 0, align 4
@REG_A2XX_MH_INTERRUPT_MASK = common dso_local global i32 0, align 4
@A2XX_MH_INTERRUPT_MASK_AXI_READ_ERROR = common dso_local global i32 0, align 4
@A2XX_MH_INTERRUPT_MASK_AXI_WRITE_ERROR = common dso_local global i32 0, align 4
@A2XX_MH_INTERRUPT_MASK_MMU_PAGE_FAULT = common dso_local global i32 0, align 4
@SZ_16K = common dso_local global i32 0, align 4
@REG_A2XX_RB_EDRAM_INFO = common dso_local global i32 0, align 4
@ADRENO_FW_PM4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"loading PM4 ucode version: %x\00", align 1
@REG_AXXX_CP_DEBUG = common dso_local global i32 0, align 4
@AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE = common dso_local global i32 0, align 4
@REG_AXXX_CP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@REG_AXXX_CP_ME_RAM_DATA = common dso_local global i32 0, align 4
@ADRENO_FW_PFP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"loading PFP ucode version: %x\00", align 1
@REG_A2XX_CP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@REG_A2XX_CP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@REG_AXXX_CP_QUEUE_THRESHOLDS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a2xx_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2xx_hw_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %12 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %11)
  store %struct.adreno_gpu* %12, %struct.adreno_gpu** %4, align 8
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %14 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @msm_gpummu_params(i32 %17, i32* %5, i32* %6)
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %20 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %24 = load i32, i32* @REG_AXXX_CP_ME_CNTL, align 4
  %25 = load i32, i32* @AXXX_CP_ME_CNTL_HALT, align 4
  %26 = call i32 @gpu_write(%struct.msm_gpu* %23, i32 %24, i32 %25)
  %27 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %28 = load i32, i32* @REG_A2XX_RBBM_PM_OVERRIDE1, align 4
  %29 = call i32 @gpu_write(%struct.msm_gpu* %27, i32 %28, i32 -2)
  %30 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %31 = load i32, i32* @REG_A2XX_RBBM_PM_OVERRIDE2, align 4
  %32 = call i32 @gpu_write(%struct.msm_gpu* %30, i32 %31, i32 -1)
  %33 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %34 = load i32, i32* @REG_A2XX_RBBM_SOFT_RESET, align 4
  %35 = call i32 @gpu_write(%struct.msm_gpu* %33, i32 %34, i32 -1)
  %36 = call i32 @msleep(i32 30)
  %37 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %38 = load i32, i32* @REG_A2XX_RBBM_SOFT_RESET, align 4
  %39 = call i32 @gpu_write(%struct.msm_gpu* %37, i32 %38, i32 0)
  %40 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %41 = call i64 @adreno_is_a225(%struct.adreno_gpu* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %45 = load i32, i32* @REG_A2XX_SQ_FLOW_CONTROL, align 4
  %46 = call i32 @gpu_write(%struct.msm_gpu* %44, i32 %45, i32 402653184)
  br label %47

47:                                               ; preds = %43, %1
  %48 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %49 = load i32, i32* @REG_A2XX_RBBM_CNTL, align 4
  %50 = call i32 @gpu_write(%struct.msm_gpu* %48, i32 %49, i32 17474)
  %51 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %52 = load i32, i32* @REG_A2XX_MH_MMU_MPU_BASE, align 4
  %53 = call i32 @gpu_write(%struct.msm_gpu* %51, i32 %52, i32 0)
  %54 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %55 = load i32, i32* @REG_A2XX_MH_MMU_MPU_END, align 4
  %56 = call i32 @gpu_write(%struct.msm_gpu* %54, i32 %55, i32 -4096)
  %57 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %58 = load i32, i32* @REG_A2XX_MH_MMU_CONFIG, align 4
  %59 = load i32, i32* @A2XX_MH_MMU_CONFIG_MMU_ENABLE, align 4
  %60 = load i32, i32* @BEH_TRAN_RNG, align 4
  %61 = call i32 @A2XX_MH_MMU_CONFIG_RB_W_CLNT_BEHAVIOR(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32, i32* @BEH_TRAN_RNG, align 4
  %64 = call i32 @A2XX_MH_MMU_CONFIG_CP_W_CLNT_BEHAVIOR(i32 %63)
  %65 = or i32 %62, %64
  %66 = load i32, i32* @BEH_TRAN_RNG, align 4
  %67 = call i32 @A2XX_MH_MMU_CONFIG_CP_R0_CLNT_BEHAVIOR(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* @BEH_TRAN_RNG, align 4
  %70 = call i32 @A2XX_MH_MMU_CONFIG_CP_R1_CLNT_BEHAVIOR(i32 %69)
  %71 = or i32 %68, %70
  %72 = load i32, i32* @BEH_TRAN_RNG, align 4
  %73 = call i32 @A2XX_MH_MMU_CONFIG_CP_R2_CLNT_BEHAVIOR(i32 %72)
  %74 = or i32 %71, %73
  %75 = load i32, i32* @BEH_TRAN_RNG, align 4
  %76 = call i32 @A2XX_MH_MMU_CONFIG_CP_R3_CLNT_BEHAVIOR(i32 %75)
  %77 = or i32 %74, %76
  %78 = load i32, i32* @BEH_TRAN_RNG, align 4
  %79 = call i32 @A2XX_MH_MMU_CONFIG_CP_R4_CLNT_BEHAVIOR(i32 %78)
  %80 = or i32 %77, %79
  %81 = load i32, i32* @BEH_TRAN_RNG, align 4
  %82 = call i32 @A2XX_MH_MMU_CONFIG_VGT_R0_CLNT_BEHAVIOR(i32 %81)
  %83 = or i32 %80, %82
  %84 = load i32, i32* @BEH_TRAN_RNG, align 4
  %85 = call i32 @A2XX_MH_MMU_CONFIG_VGT_R1_CLNT_BEHAVIOR(i32 %84)
  %86 = or i32 %83, %85
  %87 = load i32, i32* @BEH_TRAN_RNG, align 4
  %88 = call i32 @A2XX_MH_MMU_CONFIG_TC_R_CLNT_BEHAVIOR(i32 %87)
  %89 = or i32 %86, %88
  %90 = load i32, i32* @BEH_TRAN_RNG, align 4
  %91 = call i32 @A2XX_MH_MMU_CONFIG_PA_W_CLNT_BEHAVIOR(i32 %90)
  %92 = or i32 %89, %91
  %93 = call i32 @gpu_write(%struct.msm_gpu* %57, i32 %58, i32 %92)
  %94 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %95 = load i32, i32* @REG_A2XX_MH_MMU_VA_RANGE, align 4
  %96 = load i32, i32* @SZ_16M, align 4
  %97 = call i32 @A2XX_MH_MMU_VA_RANGE_NUM_64KB_REGIONS(i32 4095)
  %98 = or i32 %96, %97
  %99 = call i32 @gpu_write(%struct.msm_gpu* %94, i32 %95, i32 %98)
  %100 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %101 = load i32, i32* @REG_A2XX_MH_MMU_PT_BASE, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @gpu_write(%struct.msm_gpu* %100, i32 %101, i32 %102)
  %104 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %105 = load i32, i32* @REG_A2XX_MH_MMU_TRAN_ERROR, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @gpu_write(%struct.msm_gpu* %104, i32 %105, i32 %106)
  %108 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %109 = load i32, i32* @REG_A2XX_MH_MMU_INVALIDATE, align 4
  %110 = load i32, i32* @A2XX_MH_MMU_INVALIDATE_INVALIDATE_ALL, align 4
  %111 = load i32, i32* @A2XX_MH_MMU_INVALIDATE_INVALIDATE_TC, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @gpu_write(%struct.msm_gpu* %108, i32 %109, i32 %112)
  %114 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %115 = load i32, i32* @REG_A2XX_MH_ARBITER_CONFIG, align 4
  %116 = call i32 @A2XX_MH_ARBITER_CONFIG_SAME_PAGE_LIMIT(i32 16)
  %117 = load i32, i32* @A2XX_MH_ARBITER_CONFIG_L1_ARB_ENABLE, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @A2XX_MH_ARBITER_CONFIG_L1_ARB_HOLD_ENABLE, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @A2XX_MH_ARBITER_CONFIG_PAGE_SIZE(i32 1)
  %122 = or i32 %120, %121
  %123 = load i32, i32* @A2XX_MH_ARBITER_CONFIG_TC_REORDER_ENABLE, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @A2XX_MH_ARBITER_CONFIG_TC_ARB_HOLD_ENABLE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @A2XX_MH_ARBITER_CONFIG_IN_FLIGHT_LIMIT_ENABLE, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @A2XX_MH_ARBITER_CONFIG_IN_FLIGHT_LIMIT(i32 8)
  %130 = or i32 %128, %129
  %131 = load i32, i32* @A2XX_MH_ARBITER_CONFIG_CP_CLNT_ENABLE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @A2XX_MH_ARBITER_CONFIG_VGT_CLNT_ENABLE, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @A2XX_MH_ARBITER_CONFIG_TC_CLNT_ENABLE, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @A2XX_MH_ARBITER_CONFIG_RB_CLNT_ENABLE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @A2XX_MH_ARBITER_CONFIG_PA_CLNT_ENABLE, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @gpu_write(%struct.msm_gpu* %114, i32 %115, i32 %140)
  %142 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %143 = call i32 @adreno_is_a20x(%struct.adreno_gpu* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %47
  %146 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %147 = load i32, i32* @REG_A2XX_MH_CLNT_INTF_CTRL_CONFIG1, align 4
  %148 = call i32 @gpu_write(%struct.msm_gpu* %146, i32 %147, i32 208647)
  br label %149

149:                                              ; preds = %145, %47
  %150 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %151 = load i32, i32* @REG_A2XX_SQ_VS_PROGRAM, align 4
  %152 = call i32 @gpu_write(%struct.msm_gpu* %150, i32 %151, i32 0)
  %153 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %154 = load i32, i32* @REG_A2XX_SQ_PS_PROGRAM, align 4
  %155 = call i32 @gpu_write(%struct.msm_gpu* %153, i32 %154, i32 0)
  %156 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %157 = load i32, i32* @REG_A2XX_RBBM_PM_OVERRIDE1, align 4
  %158 = call i32 @gpu_write(%struct.msm_gpu* %156, i32 %157, i32 0)
  %159 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %160 = load i32, i32* @REG_A2XX_RBBM_PM_OVERRIDE2, align 4
  %161 = call i32 @gpu_write(%struct.msm_gpu* %159, i32 %160, i32 0)
  %162 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %163 = load i32, i32* @REG_A2XX_RBBM_DEBUG, align 4
  %164 = call i32 @gpu_write(%struct.msm_gpu* %162, i32 %163, i32 524288)
  %165 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %166 = load i32, i32* @REG_A2XX_RBBM_INT_CNTL, align 4
  %167 = load i32, i32* @A2XX_RBBM_INT_CNTL_RDERR_INT_MASK, align 4
  %168 = call i32 @gpu_write(%struct.msm_gpu* %165, i32 %166, i32 %167)
  %169 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %170 = load i32, i32* @REG_AXXX_CP_INT_CNTL, align 4
  %171 = load i32, i32* @AXXX_CP_INT_CNTL_T0_PACKET_IN_IB_MASK, align 4
  %172 = load i32, i32* @AXXX_CP_INT_CNTL_OPCODE_ERROR_MASK, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @AXXX_CP_INT_CNTL_PROTECTED_MODE_ERROR_MASK, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @AXXX_CP_INT_CNTL_RESERVED_BIT_ERROR_MASK, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @AXXX_CP_INT_CNTL_IB_ERROR_MASK, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @AXXX_CP_INT_CNTL_IB1_INT_MASK, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @AXXX_CP_INT_CNTL_RB_INT_MASK, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @gpu_write(%struct.msm_gpu* %169, i32 %170, i32 %183)
  %185 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %186 = load i32, i32* @REG_A2XX_SQ_INT_CNTL, align 4
  %187 = call i32 @gpu_write(%struct.msm_gpu* %185, i32 %186, i32 0)
  %188 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %189 = load i32, i32* @REG_A2XX_MH_INTERRUPT_MASK, align 4
  %190 = load i32, i32* @A2XX_MH_INTERRUPT_MASK_AXI_READ_ERROR, align 4
  %191 = load i32, i32* @A2XX_MH_INTERRUPT_MASK_AXI_WRITE_ERROR, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @A2XX_MH_INTERRUPT_MASK_MMU_PAGE_FAULT, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @gpu_write(%struct.msm_gpu* %188, i32 %189, i32 %194)
  store i32 3, i32* %9, align 4
  br label %196

196:                                              ; preds = %209, %149
  %197 = load i32, i32* %9, align 4
  %198 = icmp sle i32 %197, 5
  br i1 %198, label %199, label %212

199:                                              ; preds = %196
  %200 = load i32, i32* @SZ_16K, align 4
  %201 = load i32, i32* %9, align 4
  %202 = shl i32 %200, %201
  %203 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %204 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %202, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  br label %212

208:                                              ; preds = %199
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  br label %196

212:                                              ; preds = %207, %196
  %213 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %214 = load i32, i32* @REG_A2XX_RB_EDRAM_INFO, align 4
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @gpu_write(%struct.msm_gpu* %213, i32 %214, i32 %215)
  %217 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %218 = call i32 @adreno_hw_init(%struct.msm_gpu* %217)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %212
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %2, align 4
  br label %327

223:                                              ; preds = %212
  %224 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %225 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %224, i32 0, i32 1
  %226 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %225, align 8
  %227 = load i64, i64* @ADRENO_FW_PM4, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %226, i64 %227
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = inttoptr i64 %231 to i32*
  store i32* %232, i32** %7, align 8
  %233 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %234 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %233, i32 0, i32 1
  %235 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %234, align 8
  %236 = load i64, i64* @ADRENO_FW_PM4, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %235, i64 %236
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sdiv i32 %240, 4
  store i32 %241, i32* %8, align 4
  %242 = load i32*, i32** %7, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %244)
  %246 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %247 = load i32, i32* @REG_AXXX_CP_DEBUG, align 4
  %248 = load i32, i32* @AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE, align 4
  %249 = call i32 @gpu_write(%struct.msm_gpu* %246, i32 %247, i32 %248)
  %250 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %251 = load i32, i32* @REG_AXXX_CP_ME_RAM_WADDR, align 4
  %252 = call i32 @gpu_write(%struct.msm_gpu* %250, i32 %251, i32 0)
  store i32 1, i32* %9, align 4
  br label %253

253:                                              ; preds = %266, %223
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* %8, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %269

257:                                              ; preds = %253
  %258 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %259 = load i32, i32* @REG_AXXX_CP_ME_RAM_DATA, align 4
  %260 = load i32*, i32** %7, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @gpu_write(%struct.msm_gpu* %258, i32 %259, i32 %264)
  br label %266

266:                                              ; preds = %257
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %9, align 4
  br label %253

269:                                              ; preds = %253
  %270 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %271 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %270, i32 0, i32 1
  %272 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %271, align 8
  %273 = load i64, i64* @ADRENO_FW_PFP, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %272, i64 %273
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = inttoptr i64 %277 to i32*
  store i32* %278, i32** %7, align 8
  %279 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %280 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %279, i32 0, i32 1
  %281 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %280, align 8
  %282 = load i64, i64* @ADRENO_FW_PFP, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %281, i64 %282
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sdiv i32 %286, 4
  store i32 %287, i32* %8, align 4
  %288 = load i32*, i32** %7, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 5
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %290)
  %292 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %293 = load i32, i32* @REG_A2XX_CP_PFP_UCODE_ADDR, align 4
  %294 = call i32 @gpu_write(%struct.msm_gpu* %292, i32 %293, i32 0)
  store i32 1, i32* %9, align 4
  br label %295

295:                                              ; preds = %308, %269
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %8, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %311

299:                                              ; preds = %295
  %300 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %301 = load i32, i32* @REG_A2XX_CP_PFP_UCODE_DATA, align 4
  %302 = load i32*, i32** %7, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @gpu_write(%struct.msm_gpu* %300, i32 %301, i32 %306)
  br label %308

308:                                              ; preds = %299
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %9, align 4
  br label %295

311:                                              ; preds = %295
  %312 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %313 = load i32, i32* @REG_AXXX_CP_QUEUE_THRESHOLDS, align 4
  %314 = call i32 @gpu_write(%struct.msm_gpu* %312, i32 %313, i32 788484)
  %315 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %316 = load i32, i32* @REG_AXXX_CP_ME_CNTL, align 4
  %317 = call i32 @gpu_write(%struct.msm_gpu* %315, i32 %316, i32 0)
  %318 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %319 = call i64 @a2xx_me_init(%struct.msm_gpu* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %311
  br label %325

322:                                              ; preds = %311
  %323 = load i32, i32* @EINVAL, align 4
  %324 = sub nsw i32 0, %323
  br label %325

325:                                              ; preds = %322, %321
  %326 = phi i32 [ 0, %321 ], [ %324, %322 ]
  store i32 %326, i32* %2, align 4
  br label %327

327:                                              ; preds = %325, %221
  %328 = load i32, i32* %2, align 4
  ret i32 %328
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @msm_gpummu_params(i32, i32*, i32*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @adreno_is_a225(%struct.adreno_gpu*) #1

declare dso_local i32 @A2XX_MH_MMU_CONFIG_RB_W_CLNT_BEHAVIOR(i32) #1

declare dso_local i32 @A2XX_MH_MMU_CONFIG_CP_W_CLNT_BEHAVIOR(i32) #1

declare dso_local i32 @A2XX_MH_MMU_CONFIG_CP_R0_CLNT_BEHAVIOR(i32) #1

declare dso_local i32 @A2XX_MH_MMU_CONFIG_CP_R1_CLNT_BEHAVIOR(i32) #1

declare dso_local i32 @A2XX_MH_MMU_CONFIG_CP_R2_CLNT_BEHAVIOR(i32) #1

declare dso_local i32 @A2XX_MH_MMU_CONFIG_CP_R3_CLNT_BEHAVIOR(i32) #1

declare dso_local i32 @A2XX_MH_MMU_CONFIG_CP_R4_CLNT_BEHAVIOR(i32) #1

declare dso_local i32 @A2XX_MH_MMU_CONFIG_VGT_R0_CLNT_BEHAVIOR(i32) #1

declare dso_local i32 @A2XX_MH_MMU_CONFIG_VGT_R1_CLNT_BEHAVIOR(i32) #1

declare dso_local i32 @A2XX_MH_MMU_CONFIG_TC_R_CLNT_BEHAVIOR(i32) #1

declare dso_local i32 @A2XX_MH_MMU_CONFIG_PA_W_CLNT_BEHAVIOR(i32) #1

declare dso_local i32 @A2XX_MH_MMU_VA_RANGE_NUM_64KB_REGIONS(i32) #1

declare dso_local i32 @A2XX_MH_ARBITER_CONFIG_SAME_PAGE_LIMIT(i32) #1

declare dso_local i32 @A2XX_MH_ARBITER_CONFIG_PAGE_SIZE(i32) #1

declare dso_local i32 @A2XX_MH_ARBITER_CONFIG_IN_FLIGHT_LIMIT(i32) #1

declare dso_local i32 @adreno_is_a20x(%struct.adreno_gpu*) #1

declare dso_local i32 @adreno_hw_init(%struct.msm_gpu*) #1

declare dso_local i64 @a2xx_me_init(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
