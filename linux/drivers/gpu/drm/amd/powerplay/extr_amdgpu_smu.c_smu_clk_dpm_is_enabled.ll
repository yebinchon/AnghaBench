; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_clk_dpm_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_clk_dpm_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@SMU_FEATURE_DPM_UCLK_BIT = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_GFXCLK_BIT = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_SOCCLK_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_clk_dpm_is_enabled(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %14 [
    i32 131, label %8
    i32 128, label %8
    i32 132, label %10
    i32 130, label %10
    i32 129, label %12
  ]

8:                                                ; preds = %2, %2
  %9 = load i32, i32* @SMU_FEATURE_DPM_UCLK_BIT, align 4
  store i32 %9, i32* %6, align 4
  br label %15

10:                                               ; preds = %2, %2
  %11 = load i32, i32* @SMU_FEATURE_DPM_GFXCLK_BIT, align 4
  store i32 %11, i32* %6, align 4
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @SMU_FEATURE_DPM_SOCCLK_BIT, align 4
  store i32 %13, i32* %6, align 4
  br label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

15:                                               ; preds = %12, %10, %8
  %16 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @smu_feature_is_enabled(%struct.smu_context* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20, %14
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
