; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_enable_nb_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_enable_nb_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_hwmgr* }
%struct.smu8_hwmgr = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"enabling ALL SMU features.\0A\00", align 1
@NB_DPM_MASK = common dso_local global i64 0, align 8
@PPSMC_MSG_EnableAllSmuFeatures = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_enable_nb_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_enable_nb_dpm(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu8_hwmgr*, align 8
  %5 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 0
  %8 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %7, align 8
  store %struct.smu8_hwmgr* %8, %struct.smu8_hwmgr** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = call i32 @PP_DBG_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @NB_DPM_MASK, align 8
  %16 = load i64, i64* %5, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %5, align 8
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = load i32, i32* @PPSMC_MSG_EnableAllSmuFeatures, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %18, i32 %19, i64 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %26 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %13
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @PP_DBG_LOG(i8*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
