; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_cast_const_smu10_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_cast_const_smu10_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu10_power_state = type opaque
%struct.pp_hw_power_state = type { i64 }

@SMU10_Magic = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smu10_power_state* (%struct.pp_hw_power_state*)* @cast_const_smu10_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smu10_power_state* @cast_const_smu10_ps(%struct.pp_hw_power_state* %0) #0 {
  %2 = alloca %struct.smu10_power_state*, align 8
  %3 = alloca %struct.pp_hw_power_state*, align 8
  store %struct.pp_hw_power_state* %0, %struct.pp_hw_power_state** %3, align 8
  %4 = load i64, i64* @SMU10_Magic, align 8
  %5 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %3, align 8
  %6 = getelementptr inbounds %struct.pp_hw_power_state, %struct.pp_hw_power_state* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %4, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.smu10_power_state* null, %struct.smu10_power_state** %2, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %3, align 8
  %12 = bitcast %struct.pp_hw_power_state* %11 to %struct.smu10_power_state*
  store %struct.smu10_power_state* %12, %struct.smu10_power_state** %2, align 8
  br label %13

13:                                               ; preds = %10, %9
  %14 = load %struct.smu10_power_state*, %struct.smu10_power_state** %2, align 8
  ret %struct.smu10_power_state* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
