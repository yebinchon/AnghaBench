; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_set_pme_wa_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_set_pme_wa_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_smu = type { %struct.dc_context* }
%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.smu_context }
%struct.smu_context = type { i32 }

@PP_SMU_RESULT_UNSUPPORTED = common dso_local global i32 0, align 4
@PP_SMU_RESULT_FAIL = common dso_local global i32 0, align 4
@PP_SMU_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_nv_set_pme_wa_enable(%struct.pp_smu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_smu*, align 8
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.smu_context*, align 8
  store %struct.pp_smu* %0, %struct.pp_smu** %3, align 8
  %7 = load %struct.pp_smu*, %struct.pp_smu** %3, align 8
  %8 = getelementptr inbounds %struct.pp_smu, %struct.pp_smu* %7, i32 0, i32 0
  %9 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  store %struct.dc_context* %9, %struct.dc_context** %4, align 8
  %10 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %11 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %5, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  store %struct.smu_context* %14, %struct.smu_context** %6, align 8
  %15 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %16 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @PP_SMU_RESULT_UNSUPPORTED, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %23 = call i64 @smu_set_azalia_d3_pme(%struct.smu_context* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @PP_SMU_RESULT_FAIL, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @PP_SMU_RESULT_OK, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @smu_set_azalia_d3_pme(%struct.smu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
