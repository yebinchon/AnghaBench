; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dpm.c_amdgpu_get_vce_clock_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dpm.c_amdgpu_get_vce_clock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_vce_state = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.amd_vce_state* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.amd_vce_state* @amdgpu_get_vce_clock_state(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.amd_vce_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %9, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.amd_vce_state*, %struct.amd_vce_state** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.amd_vce_state, %struct.amd_vce_state* %21, i64 %22
  store %struct.amd_vce_state* %23, %struct.amd_vce_state** %3, align 8
  br label %25

24:                                               ; preds = %2
  store %struct.amd_vce_state* null, %struct.amd_vce_state** %3, align 8
  br label %25

25:                                               ; preds = %24, %16
  %26 = load %struct.amd_vce_state*, %struct.amd_vce_state** %3, align 8
  ret %struct.amd_vce_state* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
