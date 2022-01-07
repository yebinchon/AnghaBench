; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_notify_smc_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_notify_smc_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64, i64 }
%struct.smu7_hwmgr = type { i32 }

@PP_VBI_TIME_SUPPORT_MASK = common dso_local global i32 0, align 4
@CHIP_VEGAM = common dso_local global i64 0, align 8
@PPSMC_MSG_SetVBITimeout_VEGAM = common dso_local global i64 0, align 8
@PPSMC_MSG_SetVBITimeout = common dso_local global i64 0, align 8
@PPSMC_HasDisplay = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_notify_smc_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_notify_smc_display(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %7, %struct.smu7_hwmgr** %3, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PP_VBI_TIME_SUPPORT_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_VEGAM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = load i64, i64* @PPSMC_MSG_SetVBITimeout_VEGAM, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %21, i32 %23, i32 %26)
  br label %36

28:                                               ; preds = %14
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %30 = load i64, i64* @PPSMC_MSG_SetVBITimeout, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %29, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %28, %20
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %39 = load i64, i64* @PPSMC_HasDisplay, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @smum_send_msg_to_smc(%struct.pp_hwmgr* %38, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  ret i32 %48
}

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i64 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
