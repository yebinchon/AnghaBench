; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_nbdpm_pstate_enable_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_nbdpm_pstate_enable_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_hwmgr* }
%struct.smu8_hwmgr = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"enable Low Memory PState.\0A\00", align 1
@PPSMC_MSG_EnableLowMemoryPstate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"disable Low Memory PState.\0A\00", align 1
@PPSMC_MSG_DisableLowMemoryPstate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32)* @smu8_nbdpm_pstate_enable_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_nbdpm_pstate_enable_disable(%struct.pp_hwmgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smu8_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %10, align 8
  store %struct.smu8_hwmgr* %11, %struct.smu8_hwmgr** %8, align 8
  %12 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %8, align 8
  %13 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = call i32 @PP_DBG_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %22 = load i32, i32* @PPSMC_MSG_EnableLowMemoryPstate, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %21, i32 %22, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %16
  %29 = call i32 @PP_DBG_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %31 = load i32, i32* @PPSMC_MSG_DisableLowMemoryPstate, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %30, i32 %31, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %28, %19
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @PP_DBG_LOG(i8*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
