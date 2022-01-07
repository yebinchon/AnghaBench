; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_powertune.c_smu7_disable_power_containment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_powertune.c_smu7_disable_power_containment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu7_hwmgr = type { i32 }

@PHM_PlatformCaps_PowerContainment = common dso_local global i32 0, align 4
@POWERCONTAINMENT_FEATURE_TDCLimit = common dso_local global i32 0, align 4
@PPSMC_MSG_TDCLimitDisable = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to disable TDCLimit in SMC.\00", align 1
@POWERCONTAINMENT_FEATURE_DTE = common dso_local global i32 0, align 4
@PPSMC_MSG_DisableDTE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to disable DTE in SMC.\00", align 1
@POWERCONTAINMENT_FEATURE_PkgPwrLimit = common dso_local global i32 0, align 4
@PPSMC_MSG_PkgPwrLimitDisable = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to disable PkgPwrTracking in SMC.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_disable_power_containment(%struct.pp_hwmgr* %0) #0 {
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
  %10 = load i32, i32* @PHM_PlatformCaps_PowerContainment, align 4
  %11 = call i64 @PP_CAP(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %72

13:                                               ; preds = %1
  %14 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %72

18:                                               ; preds = %13
  %19 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %20 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @POWERCONTAINMENT_FEATURE_TDCLimit, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %27 = load i64, i64* @PPSMC_MSG_TDCLimitDisable, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %26, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %4, align 4
  %34 = call i32 @PP_ASSERT_WITH_CODE(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %25, %18
  %36 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %37 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @POWERCONTAINMENT_FEATURE_DTE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %44 = load i64, i64* @PPSMC_MSG_DisableDTE, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %43, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %4, align 4
  %51 = call i32 @PP_ASSERT_WITH_CODE(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %42, %35
  %53 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %54 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @POWERCONTAINMENT_FEATURE_PkgPwrLimit, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %61 = load i64, i64* @PPSMC_MSG_PkgPwrLimitDisable, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %60, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %4, align 4
  %68 = call i32 @PP_ASSERT_WITH_CODE(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %59, %52
  %70 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %71 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %13, %1
  %73 = load i32, i32* %4, align 4
  ret i32 %73
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
