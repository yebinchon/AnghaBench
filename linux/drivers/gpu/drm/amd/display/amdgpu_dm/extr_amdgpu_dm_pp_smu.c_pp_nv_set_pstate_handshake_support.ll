; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_set_pstate_handshake_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_set_pstate_handshake_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_smu = type { %struct.dc_context* }
%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.smu_context }
%struct.smu_context = type { i32 }

@PP_SMU_RESULT_FAIL = common dso_local global i32 0, align 4
@PP_SMU_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_nv_set_pstate_handshake_support(%struct.pp_smu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_smu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.smu_context*, align 8
  store %struct.pp_smu* %0, %struct.pp_smu** %4, align 8
  store i32 %1, i32* %5, align 4
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
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @smu_display_disable_memory_clock_switch(%struct.smu_context* %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @PP_SMU_RESULT_FAIL, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @PP_SMU_RESULT_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @smu_display_disable_memory_clock_switch(%struct.smu_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
