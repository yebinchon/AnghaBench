; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_set_voltage_by_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_set_voltage_by_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_smu = type { %struct.dc_context* }
%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.smu_context }
%struct.smu_context = type { i32 }
%struct.pp_display_clock_request = type { i32, i32 }

@PP_SMU_RESULT_UNSUPPORTED = common dso_local global i32 0, align 4
@amd_pp_disp_clock = common dso_local global i32 0, align 4
@amd_pp_phy_clock = common dso_local global i32 0, align 4
@amd_pp_pixel_clock = common dso_local global i32 0, align 4
@PP_SMU_RESULT_FAIL = common dso_local global i32 0, align 4
@PP_SMU_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_nv_set_voltage_by_freq(%struct.pp_smu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_smu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_context*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca %struct.smu_context*, align 8
  %11 = alloca %struct.pp_display_clock_request, align 4
  store %struct.pp_smu* %0, %struct.pp_smu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pp_smu*, %struct.pp_smu** %5, align 8
  %13 = getelementptr inbounds %struct.pp_smu, %struct.pp_smu* %12, i32 0, i32 0
  %14 = load %struct.dc_context*, %struct.dc_context** %13, align 8
  store %struct.dc_context* %14, %struct.dc_context** %8, align 8
  %15 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  %16 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %9, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  store %struct.smu_context* %19, %struct.smu_context** %10, align 8
  %20 = load %struct.smu_context*, %struct.smu_context** %10, align 8
  %21 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @PP_SMU_RESULT_UNSUPPORTED, align 4
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %37 [
    i32 130, label %28
    i32 129, label %31
    i32 128, label %34
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @amd_pp_disp_clock, align 4
  %30 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %11, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  br label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @amd_pp_phy_clock, align 4
  %33 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %11, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @amd_pp_pixel_clock, align 4
  %36 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %11, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %34, %31, %28
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 1000
  %41 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.smu_context*, %struct.smu_context** %10, align 8
  %43 = call i64 @smu_display_clock_voltage_request(%struct.smu_context* %42, %struct.pp_display_clock_request* %11)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @PP_SMU_RESULT_FAIL, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @PP_SMU_RESULT_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @smu_display_clock_voltage_request(%struct.smu_context*, %struct.pp_display_clock_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
