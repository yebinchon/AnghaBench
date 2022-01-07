; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_get_uclk_dpm_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_get_uclk_dpm_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_smu = type { %struct.dc_context* }
%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.smu_context }
%struct.smu_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.smu_context*, i32*, i32*)* }

@PP_SMU_RESULT_UNSUPPORTED = common dso_local global i32 0, align 4
@PP_SMU_RESULT_OK = common dso_local global i32 0, align 4
@PP_SMU_RESULT_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_nv_get_uclk_dpm_states(%struct.pp_smu* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_smu*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dc_context*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca %struct.smu_context*, align 8
  store %struct.pp_smu* %0, %struct.pp_smu** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pp_smu*, %struct.pp_smu** %5, align 8
  %12 = getelementptr inbounds %struct.pp_smu, %struct.pp_smu* %11, i32 0, i32 0
  %13 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  store %struct.dc_context* %13, %struct.dc_context** %8, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  %15 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %9, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  store %struct.smu_context* %18, %struct.smu_context** %10, align 8
  %19 = load %struct.smu_context*, %struct.smu_context** %10, align 8
  %20 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @PP_SMU_RESULT_UNSUPPORTED, align 4
  store i32 %24, i32* %4, align 4
  br label %49

25:                                               ; preds = %3
  %26 = load %struct.smu_context*, %struct.smu_context** %10, align 8
  %27 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.smu_context*, i32*, i32*)*, i32 (%struct.smu_context*, i32*, i32*)** %29, align 8
  %31 = icmp ne i32 (%struct.smu_context*, i32*, i32*)* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @PP_SMU_RESULT_UNSUPPORTED, align 4
  store i32 %33, i32* %4, align 4
  br label %49

34:                                               ; preds = %25
  %35 = load %struct.smu_context*, %struct.smu_context** %10, align 8
  %36 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.smu_context*, i32*, i32*)*, i32 (%struct.smu_context*, i32*, i32*)** %38, align 8
  %40 = load %struct.smu_context*, %struct.smu_context** %10, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 %39(%struct.smu_context* %40, i32* %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @PP_SMU_RESULT_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @PP_SMU_RESULT_FAIL, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45, %32, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
