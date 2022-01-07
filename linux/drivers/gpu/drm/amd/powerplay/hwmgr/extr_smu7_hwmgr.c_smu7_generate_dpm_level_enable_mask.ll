; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_generate_dpm_level_enable_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_generate_dpm_level_enable_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.phm_set_power_state_input = type { i32 }
%struct.smu7_hwmgr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8* }
%struct.smu7_power_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i8*)* @smu7_generate_dpm_level_enable_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_generate_dpm_level_enable_mask(%struct.pp_hwmgr* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phm_set_power_state_input*, align 8
  %8 = alloca %struct.smu7_hwmgr*, align 8
  %9 = alloca %struct.smu7_power_state*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.phm_set_power_state_input*
  store %struct.phm_set_power_state_input* %11, %struct.phm_set_power_state_input** %7, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %15, %struct.smu7_hwmgr** %8, align 8
  %16 = load %struct.phm_set_power_state_input*, %struct.phm_set_power_state_input** %7, align 8
  %17 = getelementptr inbounds %struct.phm_set_power_state_input, %struct.phm_set_power_state_input* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.smu7_power_state* @cast_const_phw_smu7_power_state(i32 %18)
  store %struct.smu7_power_state* %19, %struct.smu7_power_state** %9, align 8
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %21 = load %struct.smu7_power_state*, %struct.smu7_power_state** %9, align 8
  %22 = call i32 @smu7_trim_dpm_states(%struct.pp_hwmgr* %20, %struct.smu7_power_state* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %49

27:                                               ; preds = %2
  %28 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %29 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = call i8* @phm_get_dpm_level_enable_mask_value(i32* %30)
  %32 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %33 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i8* %31, i8** %34, align 8
  %35 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %36 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i8* @phm_get_dpm_level_enable_mask_value(i32* %37)
  %39 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %40 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %43 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i8* @phm_get_dpm_level_enable_mask_value(i32* %44)
  %46 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %47 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %27, %25
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.smu7_power_state* @cast_const_phw_smu7_power_state(i32) #1

declare dso_local i32 @smu7_trim_dpm_states(%struct.pp_hwmgr*, %struct.smu7_power_state*) #1

declare dso_local i8* @phm_get_dpm_level_enable_mask_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
