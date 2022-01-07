; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_request_link_speed_change_before_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_request_link_speed_change_before_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.phm_set_power_state_input = type { i32, i32 }
%struct.smu7_hwmgr = type { i64, i32 }
%struct.smu7_power_state = type { i32 }

@PP_PCIEGenInvalid = common dso_local global i64 0, align 8
@PCIE_PERF_REQ_GEN2 = common dso_local global i32 0, align 4
@PCIE_PERF_REQ_GEN3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i8*)* @smu7_request_link_speed_change_before_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_request_link_speed_change_before_state_change(%struct.pp_hwmgr* %0, i8* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.phm_set_power_state_input*, align 8
  %6 = alloca %struct.smu7_hwmgr*, align 8
  %7 = alloca %struct.smu7_power_state*, align 8
  %8 = alloca %struct.smu7_power_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.phm_set_power_state_input*
  store %struct.phm_set_power_state_input* %12, %struct.phm_set_power_state_input** %5, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %16, %struct.smu7_hwmgr** %6, align 8
  %17 = load %struct.phm_set_power_state_input*, %struct.phm_set_power_state_input** %5, align 8
  %18 = getelementptr inbounds %struct.phm_set_power_state_input, %struct.phm_set_power_state_input* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.smu7_power_state* @cast_const_phw_smu7_power_state(i32 %19)
  store %struct.smu7_power_state* %20, %struct.smu7_power_state** %7, align 8
  %21 = load %struct.phm_set_power_state_input*, %struct.phm_set_power_state_input** %5, align 8
  %22 = getelementptr inbounds %struct.phm_set_power_state_input, %struct.phm_set_power_state_input* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.smu7_power_state* @cast_const_phw_smu7_power_state(i32 %23)
  store %struct.smu7_power_state* %24, %struct.smu7_power_state** %8, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %26 = load %struct.smu7_power_state*, %struct.smu7_power_state** %7, align 8
  %27 = call i32 @smu7_get_maximum_link_speed(%struct.pp_hwmgr* %25, %struct.smu7_power_state* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %29 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PP_PCIEGenInvalid, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %35 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %36 = call i32 @smu7_get_maximum_link_speed(%struct.pp_hwmgr* %34, %struct.smu7_power_state* %35)
  store i32 %36, i32* %10, align 4
  br label %42

37:                                               ; preds = %2
  %38 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %39 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i64, i64* @PP_PCIEGenInvalid, align 8
  %44 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %45 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %47 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %46, i32 0, i32 1
  store i32 0, i32* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %53 [
  ]

53:                                               ; preds = %51
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %55 = call i32 @smu7_get_current_pcie_speed(%struct.pp_hwmgr* %54)
  %56 = sext i32 %55 to i64
  %57 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %58 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53
  br label %68

60:                                               ; preds = %42
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %66 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %59
  ret i32 0
}

declare dso_local %struct.smu7_power_state* @cast_const_phw_smu7_power_state(i32) #1

declare dso_local i32 @smu7_get_maximum_link_speed(%struct.pp_hwmgr*, %struct.smu7_power_state*) #1

declare dso_local i32 @smu7_get_current_pcie_speed(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
