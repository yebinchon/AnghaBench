; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_force_dpm_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_force_dpm_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i32 }

@PP_SCLK = common dso_local global i32 0, align 4
@PP_MCLK = common dso_local global i32 0, align 4
@PP_PCIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32)* @smu7_force_dpm_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_force_dpm_level(%struct.pp_hwmgr* %0, i32 %1) #0 {
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
  %17 = call i32 @smu7_get_profiling_clk(%struct.pp_hwmgr* %15, i32 %16, i32* %7, i32* %8, i32* %9)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %54 [
    i32 135, label %20
    i32 134, label %23
    i32 136, label %26
    i32 128, label %29
    i32 130, label %29
    i32 131, label %29
    i32 129, label %29
    i32 133, label %53
    i32 132, label %53
  ]

20:                                               ; preds = %18
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %22 = call i32 @smu7_force_dpm_highest(%struct.pp_hwmgr* %21)
  store i32 %22, i32* %6, align 4
  br label %55

23:                                               ; preds = %18
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %25 = call i32 @smu7_force_dpm_lowest(%struct.pp_hwmgr* %24)
  store i32 %25, i32* %6, align 4
  br label %55

26:                                               ; preds = %18
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %28 = call i32 @smu7_unforce_dpm_levels(%struct.pp_hwmgr* %27)
  store i32 %28, i32* %6, align 4
  br label %55

29:                                               ; preds = %18, %18, %18, %18
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @smu7_get_profiling_clk(%struct.pp_hwmgr* %30, i32 %31, i32* %7, i32* %8, i32* %9)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %84

37:                                               ; preds = %29
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %39 = load i32, i32* @PP_SCLK, align 4
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 1, %40
  %42 = call i32 @smu7_force_clock_level(%struct.pp_hwmgr* %38, i32 %39, i32 %41)
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %44 = load i32, i32* @PP_MCLK, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 1, %45
  %47 = call i32 @smu7_force_clock_level(%struct.pp_hwmgr* %43, i32 %44, i32 %46)
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %49 = load i32, i32* @PP_PCIE, align 4
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 1, %50
  %52 = call i32 @smu7_force_clock_level(%struct.pp_hwmgr* %48, i32 %49, i32 %51)
  br label %55

53:                                               ; preds = %18, %18
  br label %54

54:                                               ; preds = %18, %53
  br label %55

55:                                               ; preds = %54, %37, %26, %23, %20
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 129
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %63 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 129
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %68 = call i32 @smu7_fan_ctrl_set_fan_speed_percent(%struct.pp_hwmgr* %67, i32 100)
  br label %81

69:                                               ; preds = %61, %58
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 129
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %74 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 129
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %79 = call i32 @smu7_fan_ctrl_reset_fan_speed_to_default(%struct.pp_hwmgr* %78)
  br label %80

80:                                               ; preds = %77, %72, %69
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81, %55
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %35
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @smu7_get_profiling_clk(%struct.pp_hwmgr*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @smu7_force_dpm_highest(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_force_dpm_lowest(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_unforce_dpm_levels(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_force_clock_level(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @smu7_fan_ctrl_set_fan_speed_percent(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smu7_fan_ctrl_reset_fan_speed_to_default(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
