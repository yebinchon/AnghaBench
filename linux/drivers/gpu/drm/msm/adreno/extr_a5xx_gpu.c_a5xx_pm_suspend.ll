; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }

@REG_A5XX_VBIF_XIN_HALT_CTRL0 = common dso_local global i32 0, align 4
@REG_A5XX_VBIF_XIN_HALT_CTRL1 = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_BLOCK_SW_RESET_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a5xx_pm_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a5xx_pm_suspend(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %3 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %4 = load i32, i32* @REG_A5XX_VBIF_XIN_HALT_CTRL0, align 4
  %5 = call i32 @gpu_write(%struct.msm_gpu* %3, i32 %4, i32 15)
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %7 = load i32, i32* @REG_A5XX_VBIF_XIN_HALT_CTRL1, align 4
  %8 = call i32 @gpu_read(%struct.msm_gpu* %6, i32 %7)
  %9 = and i32 %8, 15
  %10 = icmp eq i32 %9, 15
  %11 = zext i1 %10 to i32
  %12 = call i32 @spin_until(i32 %11)
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %14 = load i32, i32* @REG_A5XX_VBIF_XIN_HALT_CTRL0, align 4
  %15 = call i32 @gpu_write(%struct.msm_gpu* %13, i32 %14, i32 0)
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %17 = load i32, i32* @REG_A5XX_RBBM_BLOCK_SW_RESET_CMD, align 4
  %18 = call i32 @gpu_write(%struct.msm_gpu* %16, i32 %17, i32 3932160)
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %20 = load i32, i32* @REG_A5XX_RBBM_BLOCK_SW_RESET_CMD, align 4
  %21 = call i32 @gpu_write(%struct.msm_gpu* %19, i32 %20, i32 0)
  %22 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %23 = call i32 @msm_gpu_pm_suspend(%struct.msm_gpu* %22)
  ret i32 %23
}

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @spin_until(i32) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @msm_gpu_pm_suspend(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
