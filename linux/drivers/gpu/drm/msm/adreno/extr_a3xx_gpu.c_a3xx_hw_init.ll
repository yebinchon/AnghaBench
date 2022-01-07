; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a3xx_gpu.c_a3xx_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a3xx_gpu.c_a3xx_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32, %struct.msm_gpu_perfcntr* }
%struct.msm_gpu_perfcntr = type { i32, i32 }
%struct.adreno_gpu = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i64 }
%struct.a3xx_gpu = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@REG_A3XX_VBIF_IN_RD_LIM_CONF0 = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_IN_RD_LIM_CONF1 = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_OUT_RD_LIM_CONF0 = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_OUT_WR_LIM_CONF0 = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_DDR_OUT_MAX_BURST = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_IN_WR_LIM_CONF0 = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_IN_WR_LIM_CONF1 = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_GATE_OFF_WRREQ_EN = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_ARB_CTL = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_OUT_AXI_AOOO_EN = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_OUT_AXI_AOOO = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_ABIT_SORT = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_ABIT_SORT_CONF = common dso_local global i32 0, align 4
@REG_A3XX_VBIF_CLKON = common dso_local global i32 0, align 4
@REG_A3XX_RBBM_GPU_BUSY_MASKED = common dso_local global i32 0, align 4
@REG_A3XX_RBBM_SP_HYST_CNT = common dso_local global i32 0, align 4
@REG_A3XX_RBBM_WAIT_IDLE_CLOCKS_CTL = common dso_local global i32 0, align 4
@REG_A3XX_RBBM_AHB_CTL0 = common dso_local global i32 0, align 4
@REG_A3XX_RBBM_AHB_CTL1 = common dso_local global i32 0, align 4
@REG_A3XX_RBBM_RBBM_CTL = common dso_local global i32 0, align 4
@REG_A3XX_RBBM_INTERFACE_HANG_INT_CTL = common dso_local global i32 0, align 4
@REG_A3XX_UCHE_CACHE_MODE_CONTROL_REG = common dso_local global i32 0, align 4
@REG_A3XX_RBBM_CLOCK_CTL = common dso_local global i32 0, align 4
@REG_A3XX_RBBM_GPR0_CTL = common dso_local global i32 0, align 4
@REG_A3XX_RB_GMEM_BASE_ADDR = common dso_local global i32 0, align 4
@REG_A3XX_RBBM_PERFCTR_CTL = common dso_local global i32 0, align 4
@REG_A3XX_RBBM_INT_0_MASK = common dso_local global i32 0, align 4
@A3XX_INT0_MASK = common dso_local global i32 0, align 4
@REG_A3XX_CP_PROTECT_CTRL = common dso_local global i32 0, align 4
@ADRENO_FW_PM4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"loading PM4 ucode version: %x\00", align 1
@REG_AXXX_CP_DEBUG = common dso_local global i32 0, align 4
@AXXX_CP_DEBUG_DYNAMIC_CLK_DISABLE = common dso_local global i32 0, align 4
@AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE = common dso_local global i32 0, align 4
@REG_AXXX_CP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@REG_AXXX_CP_ME_RAM_DATA = common dso_local global i32 0, align 4
@ADRENO_FW_PFP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"loading PFP ucode version: %x\00", align 1
@REG_A3XX_CP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@REG_A3XX_CP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@REG_AXXX_CP_QUEUE_THRESHOLDS = common dso_local global i32 0, align 4
@REG_AXXX_CP_ME_CNTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a3xx_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a3xx_hw_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca %struct.a3xx_gpu*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.msm_gpu_perfcntr*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %12 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %11)
  store %struct.adreno_gpu* %12, %struct.adreno_gpu** %4, align 8
  %13 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %14 = call %struct.a3xx_gpu* @to_a3xx_gpu(%struct.adreno_gpu* %13)
  store %struct.a3xx_gpu* %14, %struct.a3xx_gpu** %5, align 8
  %15 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %16 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %20 = call i64 @adreno_is_a305(%struct.adreno_gpu* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %1
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %24 = load i32, i32* @REG_A3XX_VBIF_IN_RD_LIM_CONF0, align 4
  %25 = call i32 @gpu_write(%struct.msm_gpu* %23, i32 %24, i32 269488144)
  %26 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %27 = load i32, i32* @REG_A3XX_VBIF_IN_RD_LIM_CONF1, align 4
  %28 = call i32 @gpu_write(%struct.msm_gpu* %26, i32 %27, i32 269488144)
  %29 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %30 = load i32, i32* @REG_A3XX_VBIF_OUT_RD_LIM_CONF0, align 4
  %31 = call i32 @gpu_write(%struct.msm_gpu* %29, i32 %30, i32 269488144)
  %32 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %33 = load i32, i32* @REG_A3XX_VBIF_OUT_WR_LIM_CONF0, align 4
  %34 = call i32 @gpu_write(%struct.msm_gpu* %32, i32 %33, i32 269488144)
  %35 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %36 = load i32, i32* @REG_A3XX_VBIF_DDR_OUT_MAX_BURST, align 4
  %37 = call i32 @gpu_write(%struct.msm_gpu* %35, i32 %36, i32 771)
  %38 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %39 = load i32, i32* @REG_A3XX_VBIF_IN_WR_LIM_CONF0, align 4
  %40 = call i32 @gpu_write(%struct.msm_gpu* %38, i32 %39, i32 269488144)
  %41 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %42 = load i32, i32* @REG_A3XX_VBIF_IN_WR_LIM_CONF1, align 4
  %43 = call i32 @gpu_write(%struct.msm_gpu* %41, i32 %42, i32 269488144)
  %44 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %45 = load i32, i32* @REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, align 4
  %46 = call i32 @gpu_write(%struct.msm_gpu* %44, i32 %45, i32 255)
  %47 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %48 = load i32, i32* @REG_A3XX_VBIF_ARB_CTL, align 4
  %49 = call i32 @gpu_write(%struct.msm_gpu* %47, i32 %48, i32 48)
  %50 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %51 = load i32, i32* @REG_A3XX_VBIF_OUT_AXI_AOOO_EN, align 4
  %52 = call i32 @gpu_write(%struct.msm_gpu* %50, i32 %51, i32 60)
  %53 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %54 = load i32, i32* @REG_A3XX_VBIF_OUT_AXI_AOOO, align 4
  %55 = call i32 @gpu_write(%struct.msm_gpu* %53, i32 %54, i32 3932220)
  br label %190

56:                                               ; preds = %1
  %57 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %58 = call i64 @adreno_is_a306(%struct.adreno_gpu* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %62 = load i32, i32* @REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB, align 4
  %63 = call i32 @gpu_write(%struct.msm_gpu* %61, i32 %62, i32 3)
  %64 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %65 = load i32, i32* @REG_A3XX_VBIF_OUT_RD_LIM_CONF0, align 4
  %66 = call i32 @gpu_write(%struct.msm_gpu* %64, i32 %65, i32 10)
  %67 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %68 = load i32, i32* @REG_A3XX_VBIF_OUT_WR_LIM_CONF0, align 4
  %69 = call i32 @gpu_write(%struct.msm_gpu* %67, i32 %68, i32 10)
  br label %189

70:                                               ; preds = %56
  %71 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %72 = call i64 @adreno_is_a320(%struct.adreno_gpu* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %114

74:                                               ; preds = %70
  %75 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %76 = load i32, i32* @REG_A3XX_VBIF_IN_RD_LIM_CONF0, align 4
  %77 = call i32 @gpu_write(%struct.msm_gpu* %75, i32 %76, i32 269488144)
  %78 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %79 = load i32, i32* @REG_A3XX_VBIF_IN_RD_LIM_CONF1, align 4
  %80 = call i32 @gpu_write(%struct.msm_gpu* %78, i32 %79, i32 269488144)
  %81 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %82 = load i32, i32* @REG_A3XX_VBIF_OUT_RD_LIM_CONF0, align 4
  %83 = call i32 @gpu_write(%struct.msm_gpu* %81, i32 %82, i32 269488144)
  %84 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %85 = load i32, i32* @REG_A3XX_VBIF_OUT_WR_LIM_CONF0, align 4
  %86 = call i32 @gpu_write(%struct.msm_gpu* %84, i32 %85, i32 269488144)
  %87 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %88 = load i32, i32* @REG_A3XX_VBIF_DDR_OUT_MAX_BURST, align 4
  %89 = call i32 @gpu_write(%struct.msm_gpu* %87, i32 %88, i32 771)
  %90 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %91 = load i32, i32* @REG_A3XX_VBIF_IN_WR_LIM_CONF0, align 4
  %92 = call i32 @gpu_write(%struct.msm_gpu* %90, i32 %91, i32 269488144)
  %93 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %94 = load i32, i32* @REG_A3XX_VBIF_IN_WR_LIM_CONF1, align 4
  %95 = call i32 @gpu_write(%struct.msm_gpu* %93, i32 %94, i32 269488144)
  %96 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %97 = load i32, i32* @REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, align 4
  %98 = call i32 @gpu_write(%struct.msm_gpu* %96, i32 %97, i32 255)
  %99 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %100 = load i32, i32* @REG_A3XX_VBIF_ARB_CTL, align 4
  %101 = call i32 @gpu_write(%struct.msm_gpu* %99, i32 %100, i32 48)
  %102 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %103 = load i32, i32* @REG_A3XX_VBIF_OUT_AXI_AOOO_EN, align 4
  %104 = call i32 @gpu_write(%struct.msm_gpu* %102, i32 %103, i32 60)
  %105 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %106 = load i32, i32* @REG_A3XX_VBIF_OUT_AXI_AOOO, align 4
  %107 = call i32 @gpu_write(%struct.msm_gpu* %105, i32 %106, i32 3932220)
  %108 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %109 = load i32, i32* @REG_A3XX_VBIF_ABIT_SORT, align 4
  %110 = call i32 @gpu_write(%struct.msm_gpu* %108, i32 %109, i32 255)
  %111 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %112 = load i32, i32* @REG_A3XX_VBIF_ABIT_SORT_CONF, align 4
  %113 = call i32 @gpu_write(%struct.msm_gpu* %111, i32 %112, i32 164)
  br label %188

114:                                              ; preds = %70
  %115 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %116 = call i64 @adreno_is_a330v2(%struct.adreno_gpu* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  %119 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %120 = load i32, i32* @REG_A3XX_VBIF_ABIT_SORT, align 4
  %121 = call i32 @gpu_write(%struct.msm_gpu* %119, i32 %120, i32 65599)
  %122 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %123 = load i32, i32* @REG_A3XX_VBIF_ABIT_SORT_CONF, align 4
  %124 = call i32 @gpu_write(%struct.msm_gpu* %122, i32 %123, i32 164)
  %125 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %126 = load i32, i32* @REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, align 4
  %127 = call i32 @gpu_write(%struct.msm_gpu* %125, i32 %126, i32 63)
  %128 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %129 = load i32, i32* @REG_A3XX_VBIF_DDR_OUT_MAX_BURST, align 4
  %130 = call i32 @gpu_write(%struct.msm_gpu* %128, i32 %129, i32 771)
  %131 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %132 = load i32, i32* @REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB, align 4
  %133 = call i32 @gpu_write(%struct.msm_gpu* %131, i32 %132, i32 3)
  br label %187

134:                                              ; preds = %114
  %135 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %136 = call i64 @adreno_is_a330(%struct.adreno_gpu* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %184

138:                                              ; preds = %134
  %139 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %140 = load i32, i32* @REG_A3XX_VBIF_IN_RD_LIM_CONF0, align 4
  %141 = call i32 @gpu_write(%struct.msm_gpu* %139, i32 %140, i32 404232216)
  %142 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %143 = load i32, i32* @REG_A3XX_VBIF_IN_RD_LIM_CONF1, align 4
  %144 = call i32 @gpu_write(%struct.msm_gpu* %142, i32 %143, i32 404232216)
  %145 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %146 = load i32, i32* @REG_A3XX_VBIF_OUT_RD_LIM_CONF0, align 4
  %147 = call i32 @gpu_write(%struct.msm_gpu* %145, i32 %146, i32 404232216)
  %148 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %149 = load i32, i32* @REG_A3XX_VBIF_OUT_WR_LIM_CONF0, align 4
  %150 = call i32 @gpu_write(%struct.msm_gpu* %148, i32 %149, i32 404232216)
  %151 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %152 = load i32, i32* @REG_A3XX_VBIF_DDR_OUT_MAX_BURST, align 4
  %153 = call i32 @gpu_write(%struct.msm_gpu* %151, i32 %152, i32 771)
  %154 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %155 = load i32, i32* @REG_A3XX_VBIF_IN_WR_LIM_CONF0, align 4
  %156 = call i32 @gpu_write(%struct.msm_gpu* %154, i32 %155, i32 404232216)
  %157 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %158 = load i32, i32* @REG_A3XX_VBIF_IN_WR_LIM_CONF1, align 4
  %159 = call i32 @gpu_write(%struct.msm_gpu* %157, i32 %158, i32 404232216)
  %160 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %161 = load i32, i32* @REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, align 4
  %162 = call i32 @gpu_write(%struct.msm_gpu* %160, i32 %161, i32 63)
  %163 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %164 = load i32, i32* @REG_A3XX_VBIF_ARB_CTL, align 4
  %165 = call i32 @gpu_write(%struct.msm_gpu* %163, i32 %164, i32 48)
  %166 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %167 = load i32, i32* @REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB, align 4
  %168 = call i32 @gpu_write(%struct.msm_gpu* %166, i32 %167, i32 1)
  %169 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %170 = load i32, i32* @REG_A3XX_VBIF_OUT_AXI_AOOO_EN, align 4
  %171 = call i32 @gpu_write(%struct.msm_gpu* %169, i32 %170, i32 63)
  %172 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %173 = load i32, i32* @REG_A3XX_VBIF_OUT_AXI_AOOO, align 4
  %174 = call i32 @gpu_write(%struct.msm_gpu* %172, i32 %173, i32 4128831)
  %175 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %176 = load i32, i32* @REG_A3XX_VBIF_ABIT_SORT, align 4
  %177 = call i32 @gpu_write(%struct.msm_gpu* %175, i32 %176, i32 65599)
  %178 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %179 = load i32, i32* @REG_A3XX_VBIF_ABIT_SORT_CONF, align 4
  %180 = call i32 @gpu_write(%struct.msm_gpu* %178, i32 %179, i32 164)
  %181 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %182 = load i32, i32* @REG_A3XX_VBIF_CLKON, align 4
  %183 = call i32 @gpu_write(%struct.msm_gpu* %181, i32 %182, i32 1)
  br label %186

184:                                              ; preds = %134
  %185 = call i32 (...) @BUG()
  br label %186

186:                                              ; preds = %184, %138
  br label %187

187:                                              ; preds = %186, %118
  br label %188

188:                                              ; preds = %187, %74
  br label %189

189:                                              ; preds = %188, %60
  br label %190

190:                                              ; preds = %189, %22
  %191 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %192 = load i32, i32* @REG_A3XX_RBBM_GPU_BUSY_MASKED, align 4
  %193 = call i32 @gpu_write(%struct.msm_gpu* %191, i32 %192, i32 -1)
  %194 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %195 = load i32, i32* @REG_A3XX_RBBM_SP_HYST_CNT, align 4
  %196 = call i32 @gpu_write(%struct.msm_gpu* %194, i32 %195, i32 16)
  %197 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %198 = load i32, i32* @REG_A3XX_RBBM_WAIT_IDLE_CLOCKS_CTL, align 4
  %199 = call i32 @gpu_write(%struct.msm_gpu* %197, i32 %198, i32 16)
  %200 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %201 = load i32, i32* @REG_A3XX_RBBM_AHB_CTL0, align 4
  %202 = call i32 @gpu_write(%struct.msm_gpu* %200, i32 %201, i32 1)
  %203 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %204 = load i32, i32* @REG_A3XX_RBBM_AHB_CTL1, align 4
  %205 = call i32 @gpu_write(%struct.msm_gpu* %203, i32 %204, i32 -1493172225)
  %206 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %207 = load i32, i32* @REG_A3XX_RBBM_RBBM_CTL, align 4
  %208 = call i32 @gpu_write(%struct.msm_gpu* %206, i32 %207, i32 196608)
  %209 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %210 = load i32, i32* @REG_A3XX_RBBM_INTERFACE_HANG_INT_CTL, align 4
  %211 = call i32 @gpu_write(%struct.msm_gpu* %209, i32 %210, i32 69631)
  %212 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %213 = load i32, i32* @REG_A3XX_UCHE_CACHE_MODE_CONTROL_REG, align 4
  %214 = call i32 @gpu_write(%struct.msm_gpu* %212, i32 %213, i32 1)
  %215 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %216 = call i64 @adreno_is_a306(%struct.adreno_gpu* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %190
  %219 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %220 = load i32, i32* @REG_A3XX_RBBM_CLOCK_CTL, align 4
  %221 = call i32 @gpu_write(%struct.msm_gpu* %219, i32 %220, i32 -1431655766)
  br label %249

222:                                              ; preds = %190
  %223 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %224 = call i64 @adreno_is_a320(%struct.adreno_gpu* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %228 = load i32, i32* @REG_A3XX_RBBM_CLOCK_CTL, align 4
  %229 = call i32 @gpu_write(%struct.msm_gpu* %227, i32 %228, i32 -1073741825)
  br label %248

230:                                              ; preds = %222
  %231 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %232 = call i64 @adreno_is_a330v2(%struct.adreno_gpu* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %230
  %235 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %236 = load i32, i32* @REG_A3XX_RBBM_CLOCK_CTL, align 4
  %237 = call i32 @gpu_write(%struct.msm_gpu* %235, i32 %236, i32 -1431655766)
  br label %247

238:                                              ; preds = %230
  %239 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %240 = call i64 @adreno_is_a330(%struct.adreno_gpu* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %244 = load i32, i32* @REG_A3XX_RBBM_CLOCK_CTL, align 4
  %245 = call i32 @gpu_write(%struct.msm_gpu* %243, i32 %244, i32 -1073938433)
  br label %246

246:                                              ; preds = %242, %238
  br label %247

247:                                              ; preds = %246, %234
  br label %248

248:                                              ; preds = %247, %226
  br label %249

249:                                              ; preds = %248, %218
  %250 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %251 = call i64 @adreno_is_a330v2(%struct.adreno_gpu* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %255 = load i32, i32* @REG_A3XX_RBBM_GPR0_CTL, align 4
  %256 = call i32 @gpu_write(%struct.msm_gpu* %254, i32 %255, i32 89216085)
  br label %266

257:                                              ; preds = %249
  %258 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %259 = call i64 @adreno_is_a330(%struct.adreno_gpu* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %257
  %262 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %263 = load i32, i32* @REG_A3XX_RBBM_GPR0_CTL, align 4
  %264 = call i32 @gpu_write(%struct.msm_gpu* %262, i32 %263, i32 0)
  br label %265

265:                                              ; preds = %261, %257
  br label %266

266:                                              ; preds = %265, %253
  %267 = load %struct.a3xx_gpu*, %struct.a3xx_gpu** %5, align 8
  %268 = getelementptr inbounds %struct.a3xx_gpu, %struct.a3xx_gpu* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %266
  %272 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %273 = load i32, i32* @REG_A3XX_RB_GMEM_BASE_ADDR, align 4
  %274 = load %struct.a3xx_gpu*, %struct.a3xx_gpu** %5, align 8
  %275 = getelementptr inbounds %struct.a3xx_gpu, %struct.a3xx_gpu* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = ashr i32 %276, 14
  %278 = call i32 @gpu_write(%struct.msm_gpu* %272, i32 %273, i32 %277)
  br label %279

279:                                              ; preds = %271, %266
  %280 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %281 = load i32, i32* @REG_A3XX_RBBM_PERFCTR_CTL, align 4
  %282 = call i32 @gpu_write(%struct.msm_gpu* %280, i32 %281, i32 1)
  store i32 0, i32* %8, align 4
  br label %283

283:                                              ; preds = %304, %279
  %284 = load i32, i32* %8, align 4
  %285 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %286 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %289, label %307

289:                                              ; preds = %283
  %290 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %291 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %290, i32 0, i32 2
  %292 = load %struct.msm_gpu_perfcntr*, %struct.msm_gpu_perfcntr** %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.msm_gpu_perfcntr, %struct.msm_gpu_perfcntr* %292, i64 %294
  store %struct.msm_gpu_perfcntr* %295, %struct.msm_gpu_perfcntr** %10, align 8
  %296 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %297 = load %struct.msm_gpu_perfcntr*, %struct.msm_gpu_perfcntr** %10, align 8
  %298 = getelementptr inbounds %struct.msm_gpu_perfcntr, %struct.msm_gpu_perfcntr* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.msm_gpu_perfcntr*, %struct.msm_gpu_perfcntr** %10, align 8
  %301 = getelementptr inbounds %struct.msm_gpu_perfcntr, %struct.msm_gpu_perfcntr* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @gpu_write(%struct.msm_gpu* %296, i32 %299, i32 %302)
  br label %304

304:                                              ; preds = %289
  %305 = load i32, i32* %8, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %8, align 4
  br label %283

307:                                              ; preds = %283
  %308 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %309 = load i32, i32* @REG_A3XX_RBBM_INT_0_MASK, align 4
  %310 = load i32, i32* @A3XX_INT0_MASK, align 4
  %311 = call i32 @gpu_write(%struct.msm_gpu* %308, i32 %309, i32 %310)
  %312 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %313 = call i32 @adreno_hw_init(%struct.msm_gpu* %312)
  store i32 %313, i32* %9, align 4
  %314 = load i32, i32* %9, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %307
  %317 = load i32, i32* %9, align 4
  store i32 %317, i32* %2, align 4
  br label %493

318:                                              ; preds = %307
  %319 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %320 = load i32, i32* @REG_A3XX_CP_PROTECT_CTRL, align 4
  %321 = call i32 @gpu_write(%struct.msm_gpu* %319, i32 %320, i32 7)
  %322 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %323 = call i32 @REG_A3XX_CP_PROTECT(i32 0)
  %324 = call i32 @gpu_write(%struct.msm_gpu* %322, i32 %323, i32 1660944448)
  %325 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %326 = call i32 @REG_A3XX_CP_PROTECT(i32 1)
  %327 = call i32 @gpu_write(%struct.msm_gpu* %325, i32 %326, i32 1644167296)
  %328 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %329 = call i32 @REG_A3XX_CP_PROTECT(i32 2)
  %330 = call i32 @gpu_write(%struct.msm_gpu* %328, i32 %329, i32 1610612940)
  %331 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %332 = call i32 @REG_A3XX_CP_PROTECT(i32 3)
  %333 = call i32 @gpu_write(%struct.msm_gpu* %331, i32 %332, i32 1610613000)
  %334 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %335 = call i32 @REG_A3XX_CP_PROTECT(i32 4)
  %336 = call i32 @gpu_write(%struct.msm_gpu* %334, i32 %335, i32 1677721920)
  %337 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %338 = call i32 @REG_A3XX_CP_PROTECT(i32 5)
  %339 = call i32 @gpu_write(%struct.msm_gpu* %337, i32 %338, i32 1711277056)
  %340 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %341 = call i32 @REG_A3XX_CP_PROTECT(i32 6)
  %342 = call i32 @gpu_write(%struct.msm_gpu* %340, i32 %341, i32 1694500608)
  %343 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %344 = call i32 @REG_A3XX_CP_PROTECT(i32 7)
  %345 = call i32 @gpu_write(%struct.msm_gpu* %343, i32 %344, i32 1627391960)
  %346 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %347 = call i32 @REG_A3XX_CP_PROTECT(i32 8)
  %348 = call i32 @gpu_write(%struct.msm_gpu* %346, i32 %347, i32 1644169184)
  %349 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %350 = call i32 @REG_A3XX_CP_PROTECT(i32 9)
  %351 = call i32 @gpu_write(%struct.msm_gpu* %349, i32 %350, i32 1627394424)
  %352 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %353 = call i32 @REG_A3XX_CP_PROTECT(i32 10)
  %354 = call i32 @gpu_write(%struct.msm_gpu* %352, i32 %353, i32 1677726080)
  %355 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %356 = call i32 @REG_A3XX_CP_PROTECT(i32 11)
  %357 = call i32 @gpu_write(%struct.msm_gpu* %355, i32 %356, i32 1610625792)
  %358 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %359 = call i32 @REG_A3XX_CP_PROTECT(i32 12)
  %360 = call i32 @gpu_write(%struct.msm_gpu* %358, i32 %359, i32 1795211264)
  %361 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %362 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %361, i32 0, i32 0
  %363 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %362, align 8
  %364 = load i64, i64* @ADRENO_FW_PM4, align 8
  %365 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %363, i64 %364
  %366 = load %struct.TYPE_2__*, %struct.TYPE_2__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = inttoptr i64 %368 to i32*
  store i32* %369, i32** %6, align 8
  %370 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %371 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %370, i32 0, i32 0
  %372 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %371, align 8
  %373 = load i64, i64* @ADRENO_FW_PM4, align 8
  %374 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %372, i64 %373
  %375 = load %struct.TYPE_2__*, %struct.TYPE_2__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = sdiv i32 %377, 4
  store i32 %378, i32* %7, align 4
  %379 = load i32*, i32** %6, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 1
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %381)
  %383 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %384 = load i32, i32* @REG_AXXX_CP_DEBUG, align 4
  %385 = load i32, i32* @AXXX_CP_DEBUG_DYNAMIC_CLK_DISABLE, align 4
  %386 = load i32, i32* @AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE, align 4
  %387 = or i32 %385, %386
  %388 = call i32 @gpu_write(%struct.msm_gpu* %383, i32 %384, i32 %387)
  %389 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %390 = load i32, i32* @REG_AXXX_CP_ME_RAM_WADDR, align 4
  %391 = call i32 @gpu_write(%struct.msm_gpu* %389, i32 %390, i32 0)
  store i32 1, i32* %8, align 4
  br label %392

392:                                              ; preds = %405, %318
  %393 = load i32, i32* %8, align 4
  %394 = load i32, i32* %7, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %408

396:                                              ; preds = %392
  %397 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %398 = load i32, i32* @REG_AXXX_CP_ME_RAM_DATA, align 4
  %399 = load i32*, i32** %6, align 8
  %400 = load i32, i32* %8, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @gpu_write(%struct.msm_gpu* %397, i32 %398, i32 %403)
  br label %405

405:                                              ; preds = %396
  %406 = load i32, i32* %8, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %8, align 4
  br label %392

408:                                              ; preds = %392
  %409 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %410 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %409, i32 0, i32 0
  %411 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %410, align 8
  %412 = load i64, i64* @ADRENO_FW_PFP, align 8
  %413 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %411, i64 %412
  %414 = load %struct.TYPE_2__*, %struct.TYPE_2__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  %417 = inttoptr i64 %416 to i32*
  store i32* %417, i32** %6, align 8
  %418 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %419 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %418, i32 0, i32 0
  %420 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %419, align 8
  %421 = load i64, i64* @ADRENO_FW_PFP, align 8
  %422 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %420, i64 %421
  %423 = load %struct.TYPE_2__*, %struct.TYPE_2__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = sdiv i32 %425, 4
  store i32 %426, i32* %7, align 4
  %427 = load i32*, i32** %6, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 5
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %429)
  %431 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %432 = load i32, i32* @REG_A3XX_CP_PFP_UCODE_ADDR, align 4
  %433 = call i32 @gpu_write(%struct.msm_gpu* %431, i32 %432, i32 0)
  store i32 1, i32* %8, align 4
  br label %434

434:                                              ; preds = %447, %408
  %435 = load i32, i32* %8, align 4
  %436 = load i32, i32* %7, align 4
  %437 = icmp slt i32 %435, %436
  br i1 %437, label %438, label %450

438:                                              ; preds = %434
  %439 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %440 = load i32, i32* @REG_A3XX_CP_PFP_UCODE_DATA, align 4
  %441 = load i32*, i32** %6, align 8
  %442 = load i32, i32* %8, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @gpu_write(%struct.msm_gpu* %439, i32 %440, i32 %445)
  br label %447

447:                                              ; preds = %438
  %448 = load i32, i32* %8, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %8, align 4
  br label %434

450:                                              ; preds = %434
  %451 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %452 = call i64 @adreno_is_a305(%struct.adreno_gpu* %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %462, label %454

454:                                              ; preds = %450
  %455 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %456 = call i64 @adreno_is_a306(%struct.adreno_gpu* %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %462, label %458

458:                                              ; preds = %454
  %459 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %460 = call i64 @adreno_is_a320(%struct.adreno_gpu* %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %471

462:                                              ; preds = %458, %454, %450
  %463 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %464 = load i32, i32* @REG_AXXX_CP_QUEUE_THRESHOLDS, align 4
  %465 = call i32 @AXXX_CP_QUEUE_THRESHOLDS_CSQ_IB1_START(i32 2)
  %466 = call i32 @AXXX_CP_QUEUE_THRESHOLDS_CSQ_IB2_START(i32 6)
  %467 = or i32 %465, %466
  %468 = call i32 @AXXX_CP_QUEUE_THRESHOLDS_CSQ_ST_START(i32 14)
  %469 = or i32 %467, %468
  %470 = call i32 @gpu_write(%struct.msm_gpu* %463, i32 %464, i32 %469)
  br label %480

471:                                              ; preds = %458
  %472 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %473 = call i64 @adreno_is_a330(%struct.adreno_gpu* %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %471
  %476 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %477 = load i32, i32* @REG_AXXX_CP_QUEUE_THRESHOLDS, align 4
  %478 = call i32 @gpu_write(%struct.msm_gpu* %476, i32 %477, i32 4071432)
  br label %479

479:                                              ; preds = %475, %471
  br label %480

480:                                              ; preds = %479, %462
  %481 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %482 = load i32, i32* @REG_AXXX_CP_ME_CNTL, align 4
  %483 = call i32 @gpu_write(%struct.msm_gpu* %481, i32 %482, i32 0)
  %484 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %485 = call i64 @a3xx_me_init(%struct.msm_gpu* %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %480
  br label %491

488:                                              ; preds = %480
  %489 = load i32, i32* @EINVAL, align 4
  %490 = sub nsw i32 0, %489
  br label %491

491:                                              ; preds = %488, %487
  %492 = phi i32 [ 0, %487 ], [ %490, %488 ]
  store i32 %492, i32* %2, align 4
  br label %493

493:                                              ; preds = %491, %316
  %494 = load i32, i32* %2, align 4
  ret i32 %494
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a3xx_gpu* @to_a3xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64 @adreno_is_a305(%struct.adreno_gpu*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i64 @adreno_is_a306(%struct.adreno_gpu*) #1

declare dso_local i64 @adreno_is_a320(%struct.adreno_gpu*) #1

declare dso_local i64 @adreno_is_a330v2(%struct.adreno_gpu*) #1

declare dso_local i64 @adreno_is_a330(%struct.adreno_gpu*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @adreno_hw_init(%struct.msm_gpu*) #1

declare dso_local i32 @REG_A3XX_CP_PROTECT(i32) #1

declare dso_local i32 @AXXX_CP_QUEUE_THRESHOLDS_CSQ_IB1_START(i32) #1

declare dso_local i32 @AXXX_CP_QUEUE_THRESHOLDS_CSQ_IB2_START(i32) #1

declare dso_local i32 @AXXX_CP_QUEUE_THRESHOLDS_CSQ_ST_START(i32) #1

declare dso_local i64 @a3xx_me_init(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
