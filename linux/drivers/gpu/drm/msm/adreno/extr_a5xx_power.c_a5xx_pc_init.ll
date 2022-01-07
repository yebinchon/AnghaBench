; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a5xx_pc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c_a5xx_pc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }

@REG_A5XX_GPMU_PWR_COL_INTER_FRAME_CTRL = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_PWR_COL_BINNING_CTRL = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_PWR_COL_INTER_FRAME_HYST = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_PWR_COL_STAGGER_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a5xx_pc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a5xx_pc_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %3 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %4 = load i32, i32* @REG_A5XX_GPMU_PWR_COL_INTER_FRAME_CTRL, align 4
  %5 = call i32 @gpu_write(%struct.msm_gpu* %3, i32 %4, i32 127)
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %7 = load i32, i32* @REG_A5XX_GPMU_PWR_COL_BINNING_CTRL, align 4
  %8 = call i32 @gpu_write(%struct.msm_gpu* %6, i32 %7, i32 0)
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %10 = load i32, i32* @REG_A5XX_GPMU_PWR_COL_INTER_FRAME_HYST, align 4
  %11 = call i32 @gpu_write(%struct.msm_gpu* %9, i32 %10, i32 655488)
  %12 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %13 = load i32, i32* @REG_A5XX_GPMU_PWR_COL_STAGGER_DELAY, align 4
  %14 = call i32 @gpu_write(%struct.msm_gpu* %12, i32 %13, i32 6291520)
  ret void
}

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
