; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_set_min_deep_sleep_dcefclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_set_min_deep_sleep_dcefclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu10_hwmgr = type { i64, i64 }

@PPSMC_MSG_SetMinDeepSleepDcefclk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64)* @smu10_set_min_deep_sleep_dcefclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_set_min_deep_sleep_dcefclk(%struct.pp_hwmgr* %0, i64 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.smu10_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.smu10_hwmgr*
  store %struct.smu10_hwmgr* %9, %struct.smu10_hwmgr** %5, align 8
  %10 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %5, align 8
  %11 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %5, align 8
  %16 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %5, align 8
  %23 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %25 = load i32, i32* @PPSMC_MSG_SetMinDeepSleepDcefclk, align 4
  %26 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %5, align 8
  %27 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %24, i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %20, %14, %2
  ret i32 0
}

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
