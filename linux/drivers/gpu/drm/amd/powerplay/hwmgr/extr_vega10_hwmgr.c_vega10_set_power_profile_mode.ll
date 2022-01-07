; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_power_profile_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_power_profile_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { i32* }

@PP_SMC_POWER_PROFILE_CUSTOM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_SetCustomGfxDpmParameters = common dso_local global i32 0, align 4
@PPSMC_MSG_SetWorkloadMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64*, i64)* @vega10_set_power_profile_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_set_power_profile_mode(%struct.pp_hwmgr* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vega10_hwmgr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 1
  %16 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %15, align 8
  store %struct.vega10_hwmgr* %16, %struct.vega10_hwmgr** %8, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* @PP_SMC_POWER_PROFILE_CUSTOM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %93

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %104

33:                                               ; preds = %27, %24
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %8, align 8
  %38 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %94

44:                                               ; preds = %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %104

47:                                               ; preds = %33
  %48 = load i64*, i64** %6, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %8, align 8
  %53 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  %56 = load i64*, i64** %6, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %8, align 8
  %61 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %59, i32* %63, align 4
  %64 = load i64*, i64** %6, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %8, align 8
  %69 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %67, i32* %71, align 4
  %72 = load i64*, i64** %6, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 3
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %8, align 8
  %77 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32 %75, i32* %79, align 4
  %80 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %81 = load i32, i32* @PPSMC_MSG_SetCustomGfxDpmParameters, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 %83, 8
  %85 = or i32 %82, %84
  %86 = load i32, i32* %11, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 %85, %87
  %89 = load i32, i32* %12, align 4
  %90 = shl i32 %89, 24
  %91 = or i32 %88, %90
  %92 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %80, i32 %81, i32 %91)
  br label %93

93:                                               ; preds = %47, %3
  br label %94

94:                                               ; preds = %93, %43
  %95 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %96 = load i32, i32* @PPSMC_MSG_SetWorkloadMask, align 4
  %97 = load i64, i64* %13, align 8
  %98 = trunc i64 %97 to i32
  %99 = shl i32 1, %98
  %100 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %95, i32 %96, i32 %99)
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %103 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %94, %44, %30
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
