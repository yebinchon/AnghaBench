; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i64 }
%struct.a4xx_gpu = type { i32 }

@REG_A4XX_VBIF_ABIT_SORT = common dso_local global i32 0, align 4
@REG_A4XX_VBIF_ABIT_SORT_CONF = common dso_local global i32 0, align 4
@REG_A4XX_VBIF_GATE_OFF_WRREQ_EN = common dso_local global i32 0, align 4
@REG_A4XX_VBIF_IN_RD_LIM_CONF0 = common dso_local global i32 0, align 4
@REG_A4XX_VBIF_IN_RD_LIM_CONF1 = common dso_local global i32 0, align 4
@REG_A4XX_VBIF_IN_WR_LIM_CONF0 = common dso_local global i32 0, align 4
@REG_A4XX_VBIF_IN_WR_LIM_CONF1 = common dso_local global i32 0, align 4
@REG_A4XX_VBIF_ROUND_ROBIN_QOS_ARB = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_GPU_BUSY_MASKED = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_SP_HYST_CNT = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_WAIT_IDLE_CLOCKS_CTL = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_WAIT_IDLE_CLOCKS_CTL2 = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_AHB_CTL0 = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_AHB_CTL1 = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_RBBM_CTL = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_INTERFACE_HANG_INT_CTL = common dso_local global i32 0, align 4
@REG_A4XX_RB_GMEM_BASE_ADDR = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_PERFCTR_CTL = common dso_local global i32 0, align 4
@REG_A4XX_CP_PERFCTR_CP_SEL_0 = common dso_local global i32 0, align 4
@CP_ALWAYS_COUNT = common dso_local global i32 0, align 4
@REG_A4XX_UCHE_CACHE_WAYS_VFD = common dso_local global i32 0, align 4
@REG_A4XX_UCHE_TRAP_BASE_LO = common dso_local global i32 0, align 4
@REG_A4XX_UCHE_TRAP_BASE_HI = common dso_local global i32 0, align 4
@REG_A4XX_CP_DEBUG = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_SP_REGFILE_SLEEP_CNTL_0 = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_SP_REGFILE_SLEEP_CNTL_1 = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_CLOCK_DELAY_HLSQ = common dso_local global i32 0, align 4
@A4XX_CGC_HLSQ_EARLY_CYC__MASK = common dso_local global i32 0, align 4
@A4XX_CGC_HLSQ_EARLY_CYC__SHIFT = common dso_local global i32 0, align 4
@REG_A4XX_CP_PROTECT_CTRL = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_INT_0_MASK = common dso_local global i32 0, align 4
@A4XX_INT0_MASK = common dso_local global i32 0, align 4
@ADRENO_FW_PM4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"loading PM4 ucode version: %u\00", align 1
@REG_A4XX_CP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@REG_A4XX_CP_ME_RAM_DATA = common dso_local global i32 0, align 4
@ADRENO_FW_PFP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"loading PFP ucode version: %u\00", align 1
@REG_A4XX_CP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@REG_A4XX_CP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@REG_A4XX_CP_ME_CNTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a4xx_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a4xx_hw_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca %struct.a4xx_gpu*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %12 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %11)
  store %struct.adreno_gpu* %12, %struct.adreno_gpu** %4, align 8
  %13 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %14 = call %struct.a4xx_gpu* @to_a4xx_gpu(%struct.adreno_gpu* %13)
  store %struct.a4xx_gpu* %14, %struct.a4xx_gpu** %5, align 8
  %15 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %16 = call i64 @adreno_is_a420(%struct.adreno_gpu* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %20 = load i32, i32* @REG_A4XX_VBIF_ABIT_SORT, align 4
  %21 = call i32 @gpu_write(%struct.msm_gpu* %19, i32 %20, i32 65567)
  %22 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %23 = load i32, i32* @REG_A4XX_VBIF_ABIT_SORT_CONF, align 4
  %24 = call i32 @gpu_write(%struct.msm_gpu* %22, i32 %23, i32 164)
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %26 = load i32, i32* @REG_A4XX_VBIF_GATE_OFF_WRREQ_EN, align 4
  %27 = call i32 @gpu_write(%struct.msm_gpu* %25, i32 %26, i32 1)
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %29 = load i32, i32* @REG_A4XX_VBIF_IN_RD_LIM_CONF0, align 4
  %30 = call i32 @gpu_write(%struct.msm_gpu* %28, i32 %29, i32 404232216)
  %31 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %32 = load i32, i32* @REG_A4XX_VBIF_IN_RD_LIM_CONF1, align 4
  %33 = call i32 @gpu_write(%struct.msm_gpu* %31, i32 %32, i32 24)
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %35 = load i32, i32* @REG_A4XX_VBIF_IN_WR_LIM_CONF0, align 4
  %36 = call i32 @gpu_write(%struct.msm_gpu* %34, i32 %35, i32 404232216)
  %37 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %38 = load i32, i32* @REG_A4XX_VBIF_IN_WR_LIM_CONF1, align 4
  %39 = call i32 @gpu_write(%struct.msm_gpu* %37, i32 %38, i32 24)
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %41 = load i32, i32* @REG_A4XX_VBIF_ROUND_ROBIN_QOS_ARB, align 4
  %42 = call i32 @gpu_write(%struct.msm_gpu* %40, i32 %41, i32 3)
  br label %69

43:                                               ; preds = %1
  %44 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %45 = call i64 @adreno_is_a430(%struct.adreno_gpu* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %49 = load i32, i32* @REG_A4XX_VBIF_GATE_OFF_WRREQ_EN, align 4
  %50 = call i32 @gpu_write(%struct.msm_gpu* %48, i32 %49, i32 1)
  %51 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %52 = load i32, i32* @REG_A4XX_VBIF_IN_RD_LIM_CONF0, align 4
  %53 = call i32 @gpu_write(%struct.msm_gpu* %51, i32 %52, i32 404232216)
  %54 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %55 = load i32, i32* @REG_A4XX_VBIF_IN_RD_LIM_CONF1, align 4
  %56 = call i32 @gpu_write(%struct.msm_gpu* %54, i32 %55, i32 24)
  %57 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %58 = load i32, i32* @REG_A4XX_VBIF_IN_WR_LIM_CONF0, align 4
  %59 = call i32 @gpu_write(%struct.msm_gpu* %57, i32 %58, i32 404232216)
  %60 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %61 = load i32, i32* @REG_A4XX_VBIF_IN_WR_LIM_CONF1, align 4
  %62 = call i32 @gpu_write(%struct.msm_gpu* %60, i32 %61, i32 24)
  %63 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %64 = load i32, i32* @REG_A4XX_VBIF_ROUND_ROBIN_QOS_ARB, align 4
  %65 = call i32 @gpu_write(%struct.msm_gpu* %63, i32 %64, i32 3)
  br label %68

66:                                               ; preds = %43
  %67 = call i32 (...) @BUG()
  br label %68

68:                                               ; preds = %66, %47
  br label %69

69:                                               ; preds = %68, %18
  %70 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %71 = load i32, i32* @REG_A4XX_RBBM_GPU_BUSY_MASKED, align 4
  %72 = call i32 @gpu_write(%struct.msm_gpu* %70, i32 %71, i32 -1)
  %73 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %74 = load i32, i32* @REG_A4XX_RBBM_SP_HYST_CNT, align 4
  %75 = call i32 @gpu_write(%struct.msm_gpu* %73, i32 %74, i32 16)
  %76 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %77 = load i32, i32* @REG_A4XX_RBBM_WAIT_IDLE_CLOCKS_CTL, align 4
  %78 = call i32 @gpu_write(%struct.msm_gpu* %76, i32 %77, i32 16)
  %79 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %80 = call i64 @adreno_is_a430(%struct.adreno_gpu* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %84 = load i32, i32* @REG_A4XX_RBBM_WAIT_IDLE_CLOCKS_CTL2, align 4
  %85 = call i32 @gpu_write(%struct.msm_gpu* %83, i32 %84, i32 48)
  br label %86

86:                                               ; preds = %82, %69
  %87 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %88 = load i32, i32* @REG_A4XX_RBBM_AHB_CTL0, align 4
  %89 = call i32 @gpu_write(%struct.msm_gpu* %87, i32 %88, i32 1)
  %90 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %91 = load i32, i32* @REG_A4XX_RBBM_AHB_CTL1, align 4
  %92 = call i32 @gpu_write(%struct.msm_gpu* %90, i32 %91, i32 -1493172225)
  %93 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %94 = load i32, i32* @REG_A4XX_RBBM_RBBM_CTL, align 4
  %95 = call i32 @gpu_write(%struct.msm_gpu* %93, i32 %94, i32 48)
  %96 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %97 = load i32, i32* @REG_A4XX_RBBM_INTERFACE_HANG_INT_CTL, align 4
  %98 = call i32 @gpu_write(%struct.msm_gpu* %96, i32 %97, i32 1073807359)
  %99 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %100 = load i32, i32* @REG_A4XX_RB_GMEM_BASE_ADDR, align 4
  %101 = load %struct.a4xx_gpu*, %struct.a4xx_gpu** %5, align 8
  %102 = getelementptr inbounds %struct.a4xx_gpu, %struct.a4xx_gpu* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 14
  %105 = call i32 @gpu_write(%struct.msm_gpu* %99, i32 %100, i32 %104)
  %106 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %107 = load i32, i32* @REG_A4XX_RBBM_PERFCTR_CTL, align 4
  %108 = call i32 @gpu_write(%struct.msm_gpu* %106, i32 %107, i32 1)
  %109 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %110 = load i32, i32* @REG_A4XX_CP_PERFCTR_CP_SEL_0, align 4
  %111 = load i32, i32* @CP_ALWAYS_COUNT, align 4
  %112 = call i32 @gpu_write(%struct.msm_gpu* %109, i32 %110, i32 %111)
  %113 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %114 = call i64 @adreno_is_a430(%struct.adreno_gpu* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %86
  %117 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %118 = load i32, i32* @REG_A4XX_UCHE_CACHE_WAYS_VFD, align 4
  %119 = call i32 @gpu_write(%struct.msm_gpu* %117, i32 %118, i32 7)
  br label %120

120:                                              ; preds = %116, %86
  %121 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %122 = load i32, i32* @REG_A4XX_UCHE_TRAP_BASE_LO, align 4
  %123 = call i32 @gpu_write(%struct.msm_gpu* %121, i32 %122, i32 -65536)
  %124 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %125 = load i32, i32* @REG_A4XX_UCHE_TRAP_BASE_HI, align 4
  %126 = call i32 @gpu_write(%struct.msm_gpu* %124, i32 %125, i32 -65536)
  %127 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %128 = load i32, i32* @REG_A4XX_CP_DEBUG, align 4
  %129 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %130 = call i64 @adreno_is_a420(%struct.adreno_gpu* %129)
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 536870912, i32 0
  %134 = or i32 33554432, %133
  %135 = call i32 @gpu_write(%struct.msm_gpu* %127, i32 %128, i32 %134)
  %136 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %137 = call i64 @adreno_is_a420(%struct.adreno_gpu* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %120
  %140 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %141 = load i32, i32* @REG_A4XX_RBBM_SP_REGFILE_SLEEP_CNTL_0, align 4
  %142 = call i32 @gpu_write(%struct.msm_gpu* %140, i32 %141, i32 1089)
  %143 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %144 = load i32, i32* @REG_A4XX_RBBM_SP_REGFILE_SLEEP_CNTL_1, align 4
  %145 = call i32 @gpu_write(%struct.msm_gpu* %143, i32 %144, i32 1089)
  br label %146

146:                                              ; preds = %139, %120
  %147 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %148 = call i32 @a4xx_enable_hwcg(%struct.msm_gpu* %147)
  %149 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %150 = call i64 @adreno_is_a420(%struct.adreno_gpu* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %146
  %153 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %154 = load i32, i32* @REG_A4XX_RBBM_CLOCK_DELAY_HLSQ, align 4
  %155 = call i32 @gpu_read(%struct.msm_gpu* %153, i32 %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* @A4XX_CGC_HLSQ_EARLY_CYC__MASK, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %10, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* @A4XX_CGC_HLSQ_EARLY_CYC__SHIFT, align 4
  %161 = shl i32 2, %160
  %162 = load i32, i32* %10, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %10, align 4
  %164 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %165 = load i32, i32* @REG_A4XX_RBBM_CLOCK_DELAY_HLSQ, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @gpu_write(%struct.msm_gpu* %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %152, %146
  %169 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %170 = load i32, i32* @REG_A4XX_CP_PROTECT_CTRL, align 4
  %171 = call i32 @gpu_write(%struct.msm_gpu* %169, i32 %170, i32 7)
  %172 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %173 = call i32 @REG_A4XX_CP_PROTECT(i32 0)
  %174 = call i32 @gpu_write(%struct.msm_gpu* %172, i32 %173, i32 1644167184)
  %175 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %176 = call i32 @REG_A4XX_CP_PROTECT(i32 1)
  %177 = call i32 @gpu_write(%struct.msm_gpu* %175, i32 %176, i32 1660944416)
  %178 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %179 = call i32 @REG_A4XX_CP_PROTECT(i32 2)
  %180 = call i32 @gpu_write(%struct.msm_gpu* %178, i32 %179, i32 1677721664)
  %181 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %182 = call i32 @REG_A4XX_CP_PROTECT(i32 3)
  %183 = call i32 @gpu_write(%struct.msm_gpu* %181, i32 %182, i32 1694498944)
  %184 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %185 = call i32 @REG_A4XX_CP_PROTECT(i32 4)
  %186 = call i32 @gpu_write(%struct.msm_gpu* %184, i32 %185, i32 1711276288)
  %187 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %188 = call i32 @REG_A4XX_CP_PROTECT(i32 5)
  %189 = call i32 @gpu_write(%struct.msm_gpu* %187, i32 %188, i32 1677722112)
  %190 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %191 = call i32 @REG_A4XX_CP_PROTECT(i32 6)
  %192 = call i32 @gpu_write(%struct.msm_gpu* %190, i32 %191, i32 1728055296)
  %193 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %194 = call i32 @REG_A4XX_CP_PROTECT(i32 7)
  %195 = call i32 @gpu_write(%struct.msm_gpu* %193, i32 %194, i32 1677727232)
  %196 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %197 = call i32 @REG_A4XX_CP_PROTECT(i32 8)
  %198 = call i32 @gpu_write(%struct.msm_gpu* %196, i32 %197, i32 1610625792)
  %199 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %200 = call i32 @REG_A4XX_CP_PROTECT(i32 9)
  %201 = call i32 @gpu_write(%struct.msm_gpu* %199, i32 %200, i32 1610627072)
  %202 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %203 = call i32 @REG_A4XX_CP_PROTECT(i32 10)
  %204 = call i32 @gpu_write(%struct.msm_gpu* %202, i32 %203, i32 1627404672)
  %205 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %206 = call i32 @REG_A4XX_CP_PROTECT(i32 11)
  %207 = call i32 @gpu_write(%struct.msm_gpu* %205, i32 %206, i32 1845559296)
  %208 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %209 = load i32, i32* @REG_A4XX_RBBM_INT_0_MASK, align 4
  %210 = load i32, i32* @A4XX_INT0_MASK, align 4
  %211 = call i32 @gpu_write(%struct.msm_gpu* %208, i32 %209, i32 %210)
  %212 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %213 = call i32 @adreno_hw_init(%struct.msm_gpu* %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %168
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %2, align 4
  br label %315

218:                                              ; preds = %168
  %219 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %220 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %219, i32 0, i32 0
  %221 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %220, align 8
  %222 = load i64, i64* @ADRENO_FW_PM4, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %221, i64 %222
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to i32*
  store i32* %227, i32** %6, align 8
  %228 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %229 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %228, i32 0, i32 0
  %230 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %229, align 8
  %231 = load i64, i64* @ADRENO_FW_PM4, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %230, i64 %231
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sdiv i32 %235, 4
  store i32 %236, i32* %7, align 4
  %237 = load i32*, i32** %6, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %239)
  %241 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %242 = load i32, i32* @REG_A4XX_CP_ME_RAM_WADDR, align 4
  %243 = call i32 @gpu_write(%struct.msm_gpu* %241, i32 %242, i32 0)
  store i32 1, i32* %8, align 4
  br label %244

244:                                              ; preds = %257, %218
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %260

248:                                              ; preds = %244
  %249 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %250 = load i32, i32* @REG_A4XX_CP_ME_RAM_DATA, align 4
  %251 = load i32*, i32** %6, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @gpu_write(%struct.msm_gpu* %249, i32 %250, i32 %255)
  br label %257

257:                                              ; preds = %248
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %8, align 4
  br label %244

260:                                              ; preds = %244
  %261 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %262 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %261, i32 0, i32 0
  %263 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %262, align 8
  %264 = load i64, i64* @ADRENO_FW_PFP, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %263, i64 %264
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = inttoptr i64 %268 to i32*
  store i32* %269, i32** %6, align 8
  %270 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %271 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %270, i32 0, i32 0
  %272 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %271, align 8
  %273 = load i64, i64* @ADRENO_FW_PFP, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %272, i64 %273
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sdiv i32 %277, 4
  store i32 %278, i32* %7, align 4
  %279 = load i32*, i32** %6, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %281)
  %283 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %284 = load i32, i32* @REG_A4XX_CP_PFP_UCODE_ADDR, align 4
  %285 = call i32 @gpu_write(%struct.msm_gpu* %283, i32 %284, i32 0)
  store i32 1, i32* %8, align 4
  br label %286

286:                                              ; preds = %299, %260
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* %7, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %302

290:                                              ; preds = %286
  %291 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %292 = load i32, i32* @REG_A4XX_CP_PFP_UCODE_DATA, align 4
  %293 = load i32*, i32** %6, align 8
  %294 = load i32, i32* %8, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @gpu_write(%struct.msm_gpu* %291, i32 %292, i32 %297)
  br label %299

299:                                              ; preds = %290
  %300 = load i32, i32* %8, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %8, align 4
  br label %286

302:                                              ; preds = %286
  %303 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %304 = load i32, i32* @REG_A4XX_CP_ME_CNTL, align 4
  %305 = call i32 @gpu_write(%struct.msm_gpu* %303, i32 %304, i32 0)
  %306 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %307 = call i64 @a4xx_me_init(%struct.msm_gpu* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %302
  br label %313

310:                                              ; preds = %302
  %311 = load i32, i32* @EINVAL, align 4
  %312 = sub nsw i32 0, %311
  br label %313

313:                                              ; preds = %310, %309
  %314 = phi i32 [ 0, %309 ], [ %312, %310 ]
  store i32 %314, i32* %2, align 4
  br label %315

315:                                              ; preds = %313, %216
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a4xx_gpu* @to_a4xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i64 @adreno_is_a420(%struct.adreno_gpu*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i64 @adreno_is_a430(%struct.adreno_gpu*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @a4xx_enable_hwcg(%struct.msm_gpu*) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @REG_A4XX_CP_PROTECT(i32) #1

declare dso_local i32 @adreno_hw_init(%struct.msm_gpu*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64 @a4xx_me_init(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
