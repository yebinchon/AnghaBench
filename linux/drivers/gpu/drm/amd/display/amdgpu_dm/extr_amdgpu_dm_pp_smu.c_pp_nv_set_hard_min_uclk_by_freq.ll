; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_set_hard_min_uclk_by_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_set_hard_min_uclk_by_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_smu = type { %struct.dc_context* }
%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.smu_context }
%struct.smu_context = type { i32 }
%struct.pp_display_clock_request = type { i32, i32 }

@PP_SMU_RESULT_UNSUPPORTED = common dso_local global i32 0, align 4
@amd_pp_mem_clock = common dso_local global i32 0, align 4
@PP_SMU_RESULT_FAIL = common dso_local global i32 0, align 4
@PP_SMU_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_nv_set_hard_min_uclk_by_freq(%struct.pp_smu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_smu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.smu_context*, align 8
  %9 = alloca %struct.pp_display_clock_request, align 4
  store %struct.pp_smu* %0, %struct.pp_smu** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pp_smu*, %struct.pp_smu** %4, align 8
  %11 = getelementptr inbounds %struct.pp_smu, %struct.pp_smu* %10, i32 0, i32 0
  %12 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  store %struct.dc_context* %12, %struct.dc_context** %6, align 8
  %13 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %14 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %7, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  store %struct.smu_context* %17, %struct.smu_context** %8, align 8
  %18 = load %struct.smu_context*, %struct.smu_context** %8, align 8
  %19 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @PP_SMU_RESULT_UNSUPPORTED, align 4
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load i32, i32* @amd_pp_mem_clock, align 4
  %26 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %9, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.smu_context*, %struct.smu_context** %8, align 8
  %31 = call i64 @smu_display_clock_voltage_request(%struct.smu_context* %30, %struct.pp_display_clock_request* %9)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @PP_SMU_RESULT_FAIL, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @PP_SMU_RESULT_OK, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %33, %22
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @smu_display_clock_voltage_request(%struct.smu_context*, %struct.pp_display_clock_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
