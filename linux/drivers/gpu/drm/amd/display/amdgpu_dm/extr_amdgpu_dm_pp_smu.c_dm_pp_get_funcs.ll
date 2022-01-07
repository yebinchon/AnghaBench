; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_get_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_get_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.pp_smu_funcs = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.dc_context* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dc_context* }

@PP_SMU_VER_RV = common dso_local global i32 0, align 4
@pp_rv_set_wm_ranges = common dso_local global i32 0, align 4
@pp_rv_set_pme_wa_enable = common dso_local global i32 0, align 4
@pp_rv_set_active_display_count = common dso_local global i32 0, align 4
@pp_rv_set_min_deep_sleep_dcfclk = common dso_local global i32 0, align 4
@pp_rv_set_hard_min_dcefclk_by_freq = common dso_local global i32 0, align 4
@pp_rv_set_hard_min_fclk_by_freq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"smu version is not supported !\0A\00", align 1
@PP_SMU_VER_NV = common dso_local global i32 0, align 4
@pp_nv_get_maximum_sustainable_clocks = common dso_local global i32 0, align 4
@pp_nv_get_uclk_dpm_states = common dso_local global i32 0, align 4
@pp_nv_set_display_count = common dso_local global i32 0, align 4
@pp_nv_set_hard_min_dcefclk_by_freq = common dso_local global i32 0, align 4
@pp_nv_set_hard_min_uclk_by_freq = common dso_local global i32 0, align 4
@pp_nv_set_min_deep_sleep_dcfclk = common dso_local global i32 0, align 4
@pp_nv_set_pstate_handshake_support = common dso_local global i32 0, align 4
@pp_nv_set_voltage_by_freq = common dso_local global i32 0, align 4
@pp_nv_set_wm_ranges = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_pp_get_funcs(%struct.dc_context* %0, %struct.pp_smu_funcs* %1) #0 {
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.pp_smu_funcs*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  store %struct.pp_smu_funcs* %1, %struct.pp_smu_funcs** %4, align 8
  %5 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %6 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %42 [
    i32 130, label %8
    i32 129, label %8
  ]

8:                                                ; preds = %2, %2
  %9 = load i32, i32* @PP_SMU_VER_RV, align 4
  %10 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %4, align 8
  %11 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %14 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %4, align 8
  %15 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.dc_context* %13, %struct.dc_context** %17, align 8
  %18 = load i32, i32* @pp_rv_set_wm_ranges, align 4
  %19 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %4, align 8
  %20 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @pp_rv_set_pme_wa_enable, align 4
  %23 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %4, align 8
  %24 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @pp_rv_set_active_display_count, align 4
  %27 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %4, align 8
  %28 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @pp_rv_set_min_deep_sleep_dcfclk, align 4
  %31 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %4, align 8
  %32 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @pp_rv_set_hard_min_dcefclk_by_freq, align 4
  %35 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %4, align 8
  %36 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @pp_rv_set_hard_min_fclk_by_freq, align 4
  %39 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %4, align 8
  %40 = getelementptr inbounds %struct.pp_smu_funcs, %struct.pp_smu_funcs* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  br label %44

42:                                               ; preds = %2
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %8
  ret void
}

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
