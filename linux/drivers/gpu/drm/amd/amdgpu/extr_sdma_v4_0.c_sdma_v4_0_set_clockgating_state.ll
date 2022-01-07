; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_set_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_set_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_STATE_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @sdma_v4_0_set_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_set_clockgating_state(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %6, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %10 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %32 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
    i32 132, label %17
    i32 133, label %17
    i32 131, label %17
  ]

17:                                               ; preds = %13, %13, %13, %13, %13, %13
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = call i32 @sdma_v4_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %18, i32 %23)
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = call i32 @sdma_v4_0_update_medium_grain_light_sleep(%struct.amdgpu_device* %25, i32 %30)
  br label %33

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32, %17
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @sdma_v4_0_update_medium_grain_clock_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @sdma_v4_0_update_medium_grain_light_sleep(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
