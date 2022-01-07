; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_notify_link_speed_change_after_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_notify_link_speed_change_after_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.phm_set_power_state_input = type { i32 }
%struct.smu7_hwmgr = type { i64 }
%struct.smu7_power_state = type { i32 }

@PP_PCIEGen3 = common dso_local global i64 0, align 8
@PCIE_PERF_REQ_GEN3 = common dso_local global i64 0, align 8
@PP_PCIEGen2 = common dso_local global i64 0, align 8
@PCIE_PERF_REQ_GEN2 = common dso_local global i64 0, align 8
@PCIE_PERF_REQ_GEN1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i8*)* @smu7_notify_link_speed_change_after_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_notify_link_speed_change_after_state_change(%struct.pp_hwmgr* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.phm_set_power_state_input*, align 8
  %7 = alloca %struct.smu7_hwmgr*, align 8
  %8 = alloca %struct.smu7_power_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.phm_set_power_state_input*
  store %struct.phm_set_power_state_input* %12, %struct.phm_set_power_state_input** %6, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %16, %struct.smu7_hwmgr** %7, align 8
  %17 = load %struct.phm_set_power_state_input*, %struct.phm_set_power_state_input** %6, align 8
  %18 = getelementptr inbounds %struct.phm_set_power_state_input, %struct.phm_set_power_state_input* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.smu7_power_state* @cast_const_phw_smu7_power_state(i32 %19)
  store %struct.smu7_power_state* %20, %struct.smu7_power_state** %8, align 8
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %22 = load %struct.smu7_power_state*, %struct.smu7_power_state** %8, align 8
  %23 = call i64 @smu7_get_maximum_link_speed(%struct.pp_hwmgr* %21, %struct.smu7_power_state* %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %25 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %2
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @PP_PCIEGen3, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @PCIE_PERF_REQ_GEN3, align 8
  store i64 %33, i64* %10, align 8
  br label %43

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @PP_PCIEGen2, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @PCIE_PERF_REQ_GEN2, align 8
  store i64 %39, i64* %10, align 8
  br label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @PCIE_PERF_REQ_GEN1, align 8
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @PCIE_PERF_REQ_GEN1, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %49 = call i64 @smu7_get_current_pcie_speed(%struct.pp_hwmgr* %48)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %54

52:                                               ; preds = %47, %43
  br label %53

53:                                               ; preds = %52, %2
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %51
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.smu7_power_state* @cast_const_phw_smu7_power_state(i32) #1

declare dso_local i64 @smu7_get_maximum_link_speed(%struct.pp_hwmgr*, %struct.smu7_power_state*) #1

declare dso_local i64 @smu7_get_current_pcie_speed(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
