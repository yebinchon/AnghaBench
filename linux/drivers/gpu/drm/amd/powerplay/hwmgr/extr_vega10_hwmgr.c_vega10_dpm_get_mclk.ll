; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_dpm_get_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_dpm_get_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.pp_power_state* }
%struct.pp_power_state = type { i32 }
%struct.vega10_power_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32)* @vega10_dpm_get_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_dpm_get_mclk(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_power_state*, align 8
  %7 = alloca %struct.vega10_power_state*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %9 = icmp eq %struct.pp_hwmgr* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load %struct.pp_power_state*, %struct.pp_power_state** %15, align 8
  store %struct.pp_power_state* %16, %struct.pp_power_state** %6, align 8
  %17 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %18 = icmp eq %struct.pp_power_state* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %13
  %23 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %24 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %23, i32 0, i32 0
  %25 = call %struct.vega10_power_state* @cast_phw_vega10_power_state(i32* %24)
  store %struct.vega10_power_state* %25, %struct.vega10_power_state** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.vega10_power_state*, %struct.vega10_power_state** %7, align 8
  %30 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %22
  %36 = load %struct.vega10_power_state*, %struct.vega10_power_state** %7, align 8
  %37 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.vega10_power_state*, %struct.vega10_power_state** %7, align 8
  %40 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %35, %28, %19, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.vega10_power_state* @cast_phw_vega10_power_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
