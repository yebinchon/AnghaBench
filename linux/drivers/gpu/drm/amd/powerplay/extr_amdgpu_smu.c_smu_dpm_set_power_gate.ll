; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_dpm_set_power_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_dpm_set_power_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_dpm_set_power_gate(%struct.smu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %25 [
    i32 129, label %9
    i32 128, label %13
    i32 131, label %17
    i32 130, label %21
  ]

9:                                                ; preds = %3
  %10 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @smu_dpm_set_uvd_enable(%struct.smu_context* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  br label %26

13:                                               ; preds = %3
  %14 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @smu_dpm_set_vce_enable(%struct.smu_context* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  br label %26

17:                                               ; preds = %3
  %18 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @smu_gfx_off_control(%struct.smu_context* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @smu_powergate_sdma(%struct.smu_context* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %21, %17, %13, %9
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @smu_dpm_set_uvd_enable(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_dpm_set_vce_enable(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_gfx_off_control(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_powergate_sdma(%struct.smu_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
