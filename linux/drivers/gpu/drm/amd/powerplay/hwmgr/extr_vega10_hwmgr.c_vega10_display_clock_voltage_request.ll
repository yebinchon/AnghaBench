; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_display_clock_voltage_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_display_clock_voltage_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_display_clock_request = type { i32, i32 }

@DSPCLK_DCEFCLK = common dso_local global i32 0, align 4
@DSPCLK_DISPCLK = common dso_local global i32 0, align 4
@DSPCLK_PIXCLK = common dso_local global i32 0, align 4
@DSPCLK_PHYCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"[DisplayClockVoltageRequest]Invalid Clock Type!\00", align 1
@PPSMC_MSG_RequestDisplayClockByFreq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega10_display_clock_voltage_request(%struct.pp_hwmgr* %0, %struct.pp_display_clock_request* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.pp_display_clock_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.pp_display_clock_request* %1, %struct.pp_display_clock_request** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.pp_display_clock_request*, %struct.pp_display_clock_request** %4, align 8
  %11 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.pp_display_clock_request*, %struct.pp_display_clock_request** %4, align 8
  %14 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 1000
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %26 [
    i32 131, label %18
    i32 130, label %20
    i32 128, label %22
    i32 129, label %24
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @DSPCLK_DCEFCLK, align 4
  store i32 %19, i32* %8, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @DSPCLK_DISPCLK, align 4
  store i32 %21, i32* %8, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @DSPCLK_PIXCLK, align 4
  store i32 %23, i32* %8, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @DSPCLK_PHYCLK, align 4
  store i32 %25, i32* %8, align 4
  br label %28

26:                                               ; preds = %2
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %24, %22, %20, %18
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %37 = load i32, i32* @PPSMC_MSG_RequestDisplayClockByFreq, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %28
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
