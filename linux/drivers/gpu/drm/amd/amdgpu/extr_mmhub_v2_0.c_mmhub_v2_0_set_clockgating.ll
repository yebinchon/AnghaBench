; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_set_clockgating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v2_0.c_mmhub_v2_0_set_clockgating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_STATE_GATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmhub_v2_0_set_clockgating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %7 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

10:                                               ; preds = %2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %29 [
    i32 130, label %14
    i32 128, label %14
    i32 129, label %14
  ]

14:                                               ; preds = %10, %10, %10
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = call i32 @mmhub_v2_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %15, i32 %20)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = call i32 @mmhub_v2_0_update_medium_grain_light_sleep(%struct.amdgpu_device* %22, i32 %27)
  br label %30

29:                                               ; preds = %10
  br label %30

30:                                               ; preds = %29, %14
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @mmhub_v2_0_update_medium_grain_clock_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mmhub_v2_0_update_medium_grain_light_sleep(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
