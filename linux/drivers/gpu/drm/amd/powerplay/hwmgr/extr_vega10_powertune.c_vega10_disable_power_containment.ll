; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_disable_power_containment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_disable_power_containment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PHM_PlatformCaps_PowerContainment = common dso_local global i32 0, align 4
@GNLD_PPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Attempt to disable PPT feature Failed!\00", align 1
@GNLD_TDC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega10_disable_power_containment(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  store %struct.vega10_hwmgr* %6, %struct.vega10_hwmgr** %3, align 8
  %7 = load i32, i32* @PHM_PlatformCaps_PowerContainment, align 4
  %8 = call i64 @PP_CAP(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %1
  %11 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* @GNLD_PPT, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %10
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %21 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* @GNLD_PPT, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vega10_enable_smc_features(%struct.pp_hwmgr* %20, i32 0, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* @GNLD_PPT, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = call i32 @PP_ASSERT_WITH_CODE(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %39

39:                                               ; preds = %19, %10
  %40 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %41 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* @GNLD_TDC, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %39
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %50 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %51 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* @GNLD_TDC, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @vega10_enable_smc_features(%struct.pp_hwmgr* %49, i32 0, i32 %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %62 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* @GNLD_TDC, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  %67 = call i32 @PP_ASSERT_WITH_CODE(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %68

68:                                               ; preds = %48, %39
  br label %69

69:                                               ; preds = %68, %1
  ret i32 0
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @PP_ASSERT_WITH_CODE(i32, i8*, i32) #1

declare dso_local i32 @vega10_enable_smc_features(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
