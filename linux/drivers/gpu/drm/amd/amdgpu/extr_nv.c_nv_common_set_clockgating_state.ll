; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_common_set_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_common_set_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)* }

@AMD_CG_STATE_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @nv_common_set_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_common_set_clockgating_state(i8* %0, i32 %1) #0 {
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
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %56 [
    i32 130, label %17
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %13, %13, %13
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %21, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = call i32 %22(%struct.amdgpu_device* %23, i32 %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %33, align 8
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = call i32 %34(%struct.amdgpu_device* %35, i32 %40)
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = call i32 @nv_update_hdp_mem_power_gating(%struct.amdgpu_device* %42, i32 %47)
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = call i32 @nv_update_hdp_clock_gating(%struct.amdgpu_device* %49, i32 %54)
  br label %57

56:                                               ; preds = %13
  br label %57

57:                                               ; preds = %56, %17
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @nv_update_hdp_mem_power_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @nv_update_hdp_clock_gating(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
