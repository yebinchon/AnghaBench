; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_current_shallow_sleep_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_current_shallow_sleep_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_hw_power_state = type { i32 }
%struct.pp_clock_info = type { i32, i32 }
%struct.smu8_power_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_clock_info*)* @smu8_get_current_shallow_sleep_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_get_current_shallow_sleep_clocks(%struct.pp_hwmgr* %0, %struct.pp_hw_power_state* %1, %struct.pp_clock_info* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_hw_power_state*, align 8
  %6 = alloca %struct.pp_clock_info*, align 8
  %7 = alloca %struct.smu8_power_state*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state** %5, align 8
  store %struct.pp_clock_info* %2, %struct.pp_clock_info** %6, align 8
  %8 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %5, align 8
  %9 = call %struct.smu8_power_state* @cast_const_smu8_power_state(%struct.pp_hw_power_state* %8)
  store %struct.smu8_power_state* %9, %struct.smu8_power_state** %7, align 8
  %10 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %11 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %17 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = sdiv i32 %15, %22
  %24 = load %struct.pp_clock_info*, %struct.pp_clock_info** %6, align 8
  %25 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %27 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %30 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %38 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %41 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  %49 = sdiv i32 %36, %48
  %50 = load %struct.pp_clock_info*, %struct.pp_clock_info** %6, align 8
  %51 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  ret i32 0
}

declare dso_local %struct.smu8_power_state* @cast_const_smu8_power_state(%struct.pp_hw_power_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
