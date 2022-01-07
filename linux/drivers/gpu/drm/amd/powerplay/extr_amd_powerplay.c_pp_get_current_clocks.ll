; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_get_current_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_get_current_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_pp_clock_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amd_pp_simple_clock_info = type { i64, i32 }
%struct.pp_clock_info = type { i32, i32, i32, i32, i32, i32 }
%struct.pp_hwmgr = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PHM_PlatformCaps_PowerContainment = common dso_local global i32 0, align 4
@PHM_PerformanceLevelDesignation_PowerContainment = common dso_local global i32 0, align 4
@PHM_PerformanceLevelDesignation_Activity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error in phm_get_clock_info \0A\00", align 1
@PP_DAL_POWERLEVEL_7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.amd_pp_clock_info*)* @pp_get_current_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_get_current_clocks(i8* %0, %struct.amd_pp_clock_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.amd_pp_clock_info*, align 8
  %6 = alloca %struct.amd_pp_simple_clock_info, align 8
  %7 = alloca %struct.pp_clock_info, align 4
  %8 = alloca %struct.pp_hwmgr*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.amd_pp_clock_info* %1, %struct.amd_pp_clock_info** %5, align 8
  %10 = bitcast %struct.amd_pp_simple_clock_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.pp_hwmgr*
  store %struct.pp_hwmgr* %12, %struct.pp_hwmgr** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %14 = icmp ne %struct.pp_hwmgr* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %128

23:                                               ; preds = %15
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %28 = call i32 @phm_get_dal_power_level(%struct.pp_hwmgr* %27, %struct.amd_pp_simple_clock_info* %6)
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PHM_PlatformCaps_PowerContainment, align 4
  %34 = call i64 @phm_cap_enabled(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %23
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %39 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* @PHM_PerformanceLevelDesignation_PowerContainment, align 4
  %43 = call i32 @phm_get_clock_info(%struct.pp_hwmgr* %37, i32* %41, %struct.pp_clock_info* %7, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %52

44:                                               ; preds = %23
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %47 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* @PHM_PerformanceLevelDesignation_Activity, align 4
  %51 = call i32 @phm_get_clock_info(%struct.pp_hwmgr* %45, i32* %49, %struct.pp_clock_info* %7, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %44, %36
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %58 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %128

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %66 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %70 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %7, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %74 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %7, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %78 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %7, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %82 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %7, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %86 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %7, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %90 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %7, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %94 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %6, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %62
  %99 = load i64, i64* @PP_DAL_POWERLEVEL_7, align 8
  %100 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %101 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %107

102:                                              ; preds = %62
  %103 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %6, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %106 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %102, %98
  %108 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %109 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %110 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = call i64 @phm_get_current_shallow_sleep_clocks(%struct.pp_hwmgr* %108, i32* %112, %struct.pp_clock_info* %7)
  %114 = icmp eq i64 0, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %7, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %119 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = getelementptr inbounds %struct.pp_clock_info, %struct.pp_clock_info* %7, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %123 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %115, %107
  %125 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %126 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %124, %55, %20
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @phm_get_dal_power_level(%struct.pp_hwmgr*, %struct.amd_pp_simple_clock_info*) #2

declare dso_local i64 @phm_cap_enabled(i32, i32) #2

declare dso_local i32 @phm_get_clock_info(%struct.pp_hwmgr*, i32*, %struct.pp_clock_info*, i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i64 @phm_get_current_shallow_sleep_clocks(%struct.pp_hwmgr*, i32*, %struct.pp_clock_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
