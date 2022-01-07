; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_get_maximum_sustainable_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_get_maximum_sustainable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_smu = type { %struct.dc_context* }
%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.smu_context }
%struct.smu_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.smu_context*, %struct.pp_smu_nv_clock_table*)* }
%struct.pp_smu_nv_clock_table = type { i32 }

@PP_SMU_RESULT_UNSUPPORTED = common dso_local global i32 0, align 4
@PP_SMU_RESULT_OK = common dso_local global i32 0, align 4
@PP_SMU_RESULT_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_nv_get_maximum_sustainable_clocks(%struct.pp_smu* %0, %struct.pp_smu_nv_clock_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_smu*, align 8
  %5 = alloca %struct.pp_smu_nv_clock_table*, align 8
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.smu_context*, align 8
  store %struct.pp_smu* %0, %struct.pp_smu** %4, align 8
  store %struct.pp_smu_nv_clock_table* %1, %struct.pp_smu_nv_clock_table** %5, align 8
  %9 = load %struct.pp_smu*, %struct.pp_smu** %4, align 8
  %10 = getelementptr inbounds %struct.pp_smu, %struct.pp_smu* %9, i32 0, i32 0
  %11 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  store %struct.dc_context* %11, %struct.dc_context** %6, align 8
  %12 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %13 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %7, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  store %struct.smu_context* %16, %struct.smu_context** %8, align 8
  %17 = load %struct.smu_context*, %struct.smu_context** %8, align 8
  %18 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @PP_SMU_RESULT_UNSUPPORTED, align 4
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.smu_context*, %struct.smu_context** %8, align 8
  %25 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.smu_context*, %struct.pp_smu_nv_clock_table*)*, i32 (%struct.smu_context*, %struct.pp_smu_nv_clock_table*)** %27, align 8
  %29 = icmp ne i32 (%struct.smu_context*, %struct.pp_smu_nv_clock_table*)* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @PP_SMU_RESULT_UNSUPPORTED, align 4
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %23
  %33 = load %struct.smu_context*, %struct.smu_context** %8, align 8
  %34 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.smu_context*, %struct.pp_smu_nv_clock_table*)*, i32 (%struct.smu_context*, %struct.pp_smu_nv_clock_table*)** %36, align 8
  %38 = load %struct.smu_context*, %struct.smu_context** %8, align 8
  %39 = load %struct.pp_smu_nv_clock_table*, %struct.pp_smu_nv_clock_table** %5, align 8
  %40 = call i32 %37(%struct.smu_context* %38, %struct.pp_smu_nv_clock_table* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @PP_SMU_RESULT_OK, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @PP_SMU_RESULT_FAIL, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42, %30, %21
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
