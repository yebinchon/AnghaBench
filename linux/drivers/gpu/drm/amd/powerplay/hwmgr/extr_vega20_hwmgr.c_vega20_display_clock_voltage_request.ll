; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_display_clock_voltage_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_display_clock_voltage_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.pp_display_clock_request = type { i32, i32 }
%struct.vega20_hwmgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GNLD_DPM_DCEFCLK = common dso_local global i64 0, align 8
@PPCLK_DCEFCLK = common dso_local global i32 0, align 4
@PPCLK_DISPCLK = common dso_local global i32 0, align 4
@PPCLK_PIXCLK = common dso_local global i32 0, align 4
@PPCLK_PHYCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"[DisplayClockVoltageRequest]Invalid Clock Type!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_SetHardMinByFreq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega20_display_clock_voltage_request(%struct.pp_hwmgr* %0, %struct.pp_display_clock_request* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.pp_display_clock_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vega20_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.pp_display_clock_request* %1, %struct.pp_display_clock_request** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.vega20_hwmgr*
  store %struct.vega20_hwmgr* %14, %struct.vega20_hwmgr** %6, align 8
  %15 = load %struct.pp_display_clock_request*, %struct.pp_display_clock_request** %4, align 8
  %16 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.pp_display_clock_request*, %struct.pp_display_clock_request** %4, align 8
  %19 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %6, align 8
  %23 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* @GNLD_DPM_DCEFCLK, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %40 [
    i32 131, label %32
    i32 130, label %34
    i32 128, label %36
    i32 129, label %38
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @PPCLK_DCEFCLK, align 4
  store i32 %33, i32* %9, align 4
  br label %44

34:                                               ; preds = %30
  %35 = load i32, i32* @PPCLK_DISPCLK, align 4
  store i32 %35, i32* %9, align 4
  br label %44

36:                                               ; preds = %30
  %37 = load i32, i32* @PPCLK_PIXCLK, align 4
  store i32 %37, i32* %9, align 4
  br label %44

38:                                               ; preds = %30
  %39 = load i32, i32* @PPCLK_PHYCLK, align 4
  store i32 %39, i32* %9, align 4
  br label %44

40:                                               ; preds = %30
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %38, %36, %34, %32
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = load i32, i32* @PPSMC_MSG_SetHardMinByFreq, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %52, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %47, %44
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
