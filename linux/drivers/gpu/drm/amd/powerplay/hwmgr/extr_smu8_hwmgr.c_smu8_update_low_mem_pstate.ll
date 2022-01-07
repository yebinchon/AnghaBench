; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_update_low_mem_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_update_low_mem_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_hwmgr* }
%struct.smu8_hwmgr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.phm_set_power_state_input = type { i32 }
%struct.smu8_power_state = type { i64 }

@FORCE_HIGH = common dso_local global i64 0, align 8
@CANCEL_FORCE_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i8*)* @smu8_update_low_mem_pstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_update_low_mem_pstate(%struct.pp_hwmgr* %0, i8* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smu8_hwmgr*, align 8
  %8 = alloca %struct.phm_set_power_state_input*, align 8
  %9 = alloca %struct.smu8_power_state*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %11, align 8
  store %struct.smu8_hwmgr* %12, %struct.smu8_hwmgr** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.phm_set_power_state_input*
  store %struct.phm_set_power_state_input* %14, %struct.phm_set_power_state_input** %8, align 8
  %15 = load %struct.phm_set_power_state_input*, %struct.phm_set_power_state_input** %8, align 8
  %16 = getelementptr inbounds %struct.phm_set_power_state_input, %struct.phm_set_power_state_input* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.smu8_power_state* @cast_const_smu8_power_state(i32 %17)
  store %struct.smu8_power_state* %18, %struct.smu8_power_state** %9, align 8
  %19 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %7, align 8
  %20 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %2
  %25 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %7, align 8
  %26 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %5, align 4
  %32 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %7, align 8
  %33 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 1
  store i32 %38, i32* %6, align 4
  %39 = load %struct.smu8_power_state*, %struct.smu8_power_state** %9, align 8
  %40 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FORCE_HIGH, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %24
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @smu8_nbdpm_pstate_enable_disable(%struct.pp_hwmgr* %45, i32 0, i32 %46)
  br label %64

48:                                               ; preds = %24
  %49 = load %struct.smu8_power_state*, %struct.smu8_power_state** %9, align 8
  %50 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CANCEL_FORCE_HIGH, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @smu8_nbdpm_pstate_enable_disable(%struct.pp_hwmgr* %55, i32 1, i32 %56)
  br label %63

58:                                               ; preds = %48
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @smu8_nbdpm_pstate_enable_disable(%struct.pp_hwmgr* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %54
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %2
  ret i32 0
}

declare dso_local %struct.smu8_power_state* @cast_const_smu8_power_state(i32) #1

declare dso_local i32 @smu8_nbdpm_pstate_enable_disable(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
