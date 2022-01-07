; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a5xx_lm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a5xx_lm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }

@REG_A5XX_GDPM_INT_MASK = common dso_local global i32 0, align 4
@REG_A5XX_GDPM_INT_EN = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_GPMU_VOLTAGE_INTR_EN_MASK = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_TEMP_THRESHOLD_INTR_EN_MASK = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_THROTTLE_UNMASK_FORCE_CTRL = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_CLOCK_THROTTLE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a5xx_lm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a5xx_lm_enable(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %4 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %5 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %4)
  store %struct.adreno_gpu* %5, %struct.adreno_gpu** %3, align 8
  %6 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %7 = call i32 @adreno_is_a530(%struct.adreno_gpu* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %12 = load i32, i32* @REG_A5XX_GDPM_INT_MASK, align 4
  %13 = call i32 @gpu_write(%struct.msm_gpu* %11, i32 %12, i32 0)
  %14 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %15 = load i32, i32* @REG_A5XX_GDPM_INT_EN, align 4
  %16 = call i32 @gpu_write(%struct.msm_gpu* %14, i32 %15, i32 10)
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %18 = load i32, i32* @REG_A5XX_GPMU_GPMU_VOLTAGE_INTR_EN_MASK, align 4
  %19 = call i32 @gpu_write(%struct.msm_gpu* %17, i32 %18, i32 1)
  %20 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %21 = load i32, i32* @REG_A5XX_GPMU_TEMP_THRESHOLD_INTR_EN_MASK, align 4
  %22 = call i32 @gpu_write(%struct.msm_gpu* %20, i32 %21, i32 327680)
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %24 = load i32, i32* @REG_A5XX_GPMU_THROTTLE_UNMASK_FORCE_CTRL, align 4
  %25 = call i32 @gpu_write(%struct.msm_gpu* %23, i32 %24, i32 196608)
  %26 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %27 = load i32, i32* @REG_A5XX_GPMU_CLOCK_THROTTLE_CTRL, align 4
  %28 = call i32 @gpu_write(%struct.msm_gpu* %26, i32 %27, i32 17)
  br label %29

29:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @adreno_is_a530(%struct.adreno_gpu*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
