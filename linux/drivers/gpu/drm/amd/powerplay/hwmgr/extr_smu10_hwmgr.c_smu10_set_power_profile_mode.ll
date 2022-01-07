; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_set_power_profile_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_set_power_profile_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i32 }

@PP_SMC_POWER_PROFILE_COMPUTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Invalid power profile mode %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_ActiveProcessNotify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64*, i64)* @smu10_set_power_profile_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_set_power_profile_mode(%struct.pp_hwmgr* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i64*, i64** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PP_SMC_POWER_PROFILE_COMPUTE, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %85

24:                                               ; preds = %3
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %85

34:                                               ; preds = %24
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @conv_power_profile_to_pplib_workload(i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %44 = call i64 @smu10_is_raven1_refresh(%struct.pp_hwmgr* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %48 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %53 = call i32 @smu10_gfx_off_control(%struct.pp_hwmgr* %52, i32 0)
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %55 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %46, %42, %34
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %58 = load i32, i32* @PPSMC_MSG_ActiveProcessNotify, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 1, %59
  %61 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %57, i32 %58, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %56
  %65 = load i64*, i64** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %70 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %56
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %76 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %81 = call i32 @smu10_gfx_off_control(%struct.pp_hwmgr* %80, i32 1)
  %82 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %83 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %82, i32 0, i32 1
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %79, %74, %71
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %33, %16
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @conv_power_profile_to_pplib_workload(i64) #1

declare dso_local i64 @smu10_is_raven1_refresh(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu10_gfx_off_control(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
