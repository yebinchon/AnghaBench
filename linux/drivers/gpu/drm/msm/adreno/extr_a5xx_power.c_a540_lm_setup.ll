; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a540_lm_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a540_lm_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AGC_LM_CONFIG_BCL_DISABLED = common dso_local global i32 0, align 4
@AGC_LM_CONFIG_GPU_VERSION_SHIFT = common dso_local global i32 0, align 4
@AGC_LM_CONFIG_THROTTLE_DISABLE = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_GPMU_VOLTAGE = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_GPMU_PWR_THRESHOLD = common dso_local global i32 0, align 4
@AGC_MSG_STATE = common dso_local global i32 0, align 4
@AGC_MSG_COMMAND = common dso_local global i32 0, align 4
@AGC_POWER_CONFIG_PRODUCTION_ID = common dso_local global i32 0, align 4
@AGC_LM_CONFIG = common dso_local global i32 0, align 4
@AGC_LEVEL_CONFIG = common dso_local global i32 0, align 4
@LEVEL_CONFIG = common dso_local global i32 0, align 4
@AGC_MSG_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@AGC_INIT_MSG_MAGIC = common dso_local global i32 0, align 4
@AGC_INIT_MSG_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a540_lm_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a540_lm_setup(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %5 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %6 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %5)
  store %struct.adreno_gpu* %6, %struct.adreno_gpu** %3, align 8
  %7 = load i32, i32* @AGC_LM_CONFIG_BCL_DISABLED, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %9 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AGC_LM_CONFIG_GPU_VERSION_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @AGC_LM_CONFIG_THROTTLE_DISABLE, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %20 = load i32, i32* @REG_A5XX_GPMU_GPMU_VOLTAGE, align 4
  %21 = call i32 @gpu_write(%struct.msm_gpu* %19, i32 %20, i32 -2147483648)
  %22 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %23 = load i32, i32* @REG_A5XX_GPMU_GPMU_PWR_THRESHOLD, align 4
  %24 = call i32 @gpu_write(%struct.msm_gpu* %22, i32 %23, i32 -2147477648)
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %26 = load i32, i32* @AGC_MSG_STATE, align 4
  %27 = call i32 @gpu_write(%struct.msm_gpu* %25, i32 %26, i32 -2147483647)
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %29 = load i32, i32* @AGC_MSG_COMMAND, align 4
  %30 = load i32, i32* @AGC_POWER_CONFIG_PRODUCTION_ID, align 4
  %31 = call i32 @gpu_write(%struct.msm_gpu* %28, i32 %29, i32 %30)
  %32 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %33 = call i32 @AGC_MSG_PAYLOAD(i32 0)
  %34 = call i32 @gpu_write(%struct.msm_gpu* %32, i32 %33, i32 5448)
  %35 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %36 = call i32 @AGC_MSG_PAYLOAD(i32 1)
  %37 = call i32 @gpu_write(%struct.msm_gpu* %35, i32 %36, i32 1)
  %38 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %39 = call i32 @AGC_MSG_PAYLOAD(i32 2)
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %41 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %42 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @_get_mvolts(%struct.msm_gpu* %40, i32 %43)
  %45 = call i32 @gpu_write(%struct.msm_gpu* %38, i32 %39, i32 %44)
  %46 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %47 = call i32 @AGC_MSG_PAYLOAD(i32 3)
  %48 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %49 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 1000000
  %52 = call i32 @gpu_write(%struct.msm_gpu* %46, i32 %47, i32 %51)
  %53 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %54 = load i32, i32* @AGC_LM_CONFIG, align 4
  %55 = call i32 @AGC_MSG_PAYLOAD(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @gpu_write(%struct.msm_gpu* %53, i32 %55, i32 %56)
  %58 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %59 = load i32, i32* @AGC_LEVEL_CONFIG, align 4
  %60 = call i32 @AGC_MSG_PAYLOAD(i32 %59)
  %61 = load i32, i32* @LEVEL_CONFIG, align 4
  %62 = call i32 @gpu_write(%struct.msm_gpu* %58, i32 %60, i32 %61)
  %63 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %64 = load i32, i32* @AGC_MSG_PAYLOAD_SIZE, align 4
  %65 = load i32, i32* @AGC_LEVEL_CONFIG, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @PAYLOAD_SIZE(i32 %66)
  %68 = call i32 @gpu_write(%struct.msm_gpu* %63, i32 %64, i32 %67)
  %69 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %70 = load i32, i32* @AGC_INIT_MSG_MAGIC, align 4
  %71 = load i32, i32* @AGC_INIT_MSG_VALUE, align 4
  %72 = call i32 @gpu_write(%struct.msm_gpu* %69, i32 %70, i32 %71)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @AGC_MSG_PAYLOAD(i32) #1

declare dso_local i32 @_get_mvolts(%struct.msm_gpu*, i32) #1

declare dso_local i32 @PAYLOAD_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
