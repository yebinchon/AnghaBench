; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_powertune.c_smu7_enable_smc_cac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_powertune.c_smu7_enable_smc_cac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu7_hwmgr = type { i32 }

@PHM_PlatformCaps_CAC = common dso_local global i32 0, align 4
@PPSMC_MSG_EnableCac = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed to enable CAC in SMC.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_enable_smc_cac(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %9, %struct.smu7_hwmgr** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @PHM_PlatformCaps_CAC, align 4
  %11 = call i64 @PP_CAP(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = load i64, i64* @PPSMC_MSG_EnableCac, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %14, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 0, %18
  %20 = zext i1 %19 to i32
  store i32 -1, i32* %4, align 4
  %21 = call i32 @PP_ASSERT_WITH_CODE(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 -1)
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 0, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %27 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %13, %1
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @PP_ASSERT_WITH_CODE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
