; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_request_link_speed_change_before_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_request_link_speed_change_before_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ps = type { i32 }
%struct.si_power_info = type { i64, i32 }

@AMDGPU_PCIE_GEN_INVALID = common dso_local global i64 0, align 8
@PCIE_PERF_REQ_PECI_GEN2 = common dso_local global i32 0, align 4
@PCIE_PERF_REQ_PECI_GEN3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.amdgpu_ps*)* @si_request_link_speed_change_before_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_request_link_speed_change_before_state_change(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1, %struct.amdgpu_ps* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ps*, align 8
  %6 = alloca %struct.amdgpu_ps*, align 8
  %7 = alloca %struct.si_power_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %5, align 8
  store %struct.amdgpu_ps* %2, %struct.amdgpu_ps** %6, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %10)
  store %struct.si_power_info* %11, %struct.si_power_info** %7, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %14 = call i32 @si_get_maximum_link_speed(%struct.amdgpu_device* %12, %struct.amdgpu_ps* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %16 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AMDGPU_PCIE_GEN_INVALID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %23 = call i32 @si_get_maximum_link_speed(%struct.amdgpu_device* %21, %struct.amdgpu_ps* %22)
  store i32 %23, i32* %9, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %26 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i64, i64* @AMDGPU_PCIE_GEN_INVALID, align 8
  %31 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %32 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %34 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %40 [
  ]

40:                                               ; preds = %38
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %42 = call i32 @si_get_current_pcie_speed(%struct.amdgpu_device* %41)
  %43 = sext i32 %42 to i64
  %44 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %45 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40
  br label %55

47:                                               ; preds = %29
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %53 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %46
  ret void
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @si_get_maximum_link_speed(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

declare dso_local i32 @si_get_current_pcie_speed(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
