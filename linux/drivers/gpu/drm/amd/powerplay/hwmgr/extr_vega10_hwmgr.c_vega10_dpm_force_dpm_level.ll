; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_dpm_force_dpm_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_dpm_force_dpm_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i32 }

@PP_SCLK = common dso_local global i32 0, align 4
@PP_MCLK = common dso_local global i32 0, align 4
@AMD_FAN_CTRL_NONE = common dso_local global i32 0, align 4
@AMD_FAN_CTRL_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32)* @vega10_dpm_force_dpm_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_dpm_force_dpm_level(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @vega10_get_profiling_clk_mask(%struct.pp_hwmgr* %15, i32 %16, i32* %7, i32* %8, i32* %9)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %49 [
    i32 135, label %20
    i32 134, label %23
    i32 136, label %26
    i32 128, label %29
    i32 130, label %29
    i32 131, label %29
    i32 129, label %29
    i32 133, label %48
    i32 132, label %48
  ]

20:                                               ; preds = %18
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %22 = call i32 @vega10_force_dpm_highest(%struct.pp_hwmgr* %21)
  store i32 %22, i32* %6, align 4
  br label %50

23:                                               ; preds = %18
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %25 = call i32 @vega10_force_dpm_lowest(%struct.pp_hwmgr* %24)
  store i32 %25, i32* %6, align 4
  br label %50

26:                                               ; preds = %18
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %28 = call i32 @vega10_unforce_dpm_levels(%struct.pp_hwmgr* %27)
  store i32 %28, i32* %6, align 4
  br label %50

29:                                               ; preds = %18, %18, %18, %18
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @vega10_get_profiling_clk_mask(%struct.pp_hwmgr* %30, i32 %31, i32* %7, i32* %8, i32* %9)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %81

37:                                               ; preds = %29
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %39 = load i32, i32* @PP_SCLK, align 4
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 1, %40
  %42 = call i32 @vega10_force_clock_level(%struct.pp_hwmgr* %38, i32 %39, i32 %41)
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %44 = load i32, i32* @PP_MCLK, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 1, %45
  %47 = call i32 @vega10_force_clock_level(%struct.pp_hwmgr* %43, i32 %44, i32 %46)
  br label %50

48:                                               ; preds = %18, %18
  br label %49

49:                                               ; preds = %18, %48
  br label %50

50:                                               ; preds = %49, %37, %26, %23, %20
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 129
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %58 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 129
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %63 = load i32, i32* @AMD_FAN_CTRL_NONE, align 4
  %64 = call i32 @vega10_set_fan_control_mode(%struct.pp_hwmgr* %62, i32 %63)
  br label %78

65:                                               ; preds = %56, %53
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 129
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %70 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %75 = load i32, i32* @AMD_FAN_CTRL_AUTO, align 4
  %76 = call i32 @vega10_set_fan_control_mode(%struct.pp_hwmgr* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %68, %65
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %35
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @vega10_get_profiling_clk_mask(%struct.pp_hwmgr*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @vega10_force_dpm_highest(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_force_dpm_lowest(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_unforce_dpm_levels(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_force_clock_level(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @vega10_set_fan_control_mode(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
