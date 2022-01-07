; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_get_current_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_get_current_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, i64, i32 }
%struct.amd_pp_clock_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amd_pp_simple_clock_info = type { i64, i32 }
%struct.smu_clock_info = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PERF_LEVEL_POWER_CONTAINMENT = common dso_local global i32 0, align 4
@PERF_LEVEL_ACTIVITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error in smu_get_clock_info\0A\00", align 1
@PP_DAL_POWERLEVEL_7 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_get_current_clocks(%struct.smu_context* %0, %struct.amd_pp_clock_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca %struct.amd_pp_clock_info*, align 8
  %6 = alloca %struct.amd_pp_simple_clock_info, align 8
  %7 = alloca %struct.smu_clock_info, align 4
  %8 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store %struct.amd_pp_clock_info* %1, %struct.amd_pp_clock_info** %5, align 8
  %9 = bitcast %struct.amd_pp_simple_clock_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @is_support_sw_smu(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %105

18:                                               ; preds = %2
  %19 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %20 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %23 = call i32 @smu_get_dal_power_level(%struct.smu_context* %22, %struct.amd_pp_simple_clock_info* %6)
  %24 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %25 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %30 = load i32, i32* @PERF_LEVEL_POWER_CONTAINMENT, align 4
  %31 = call i32 @smu_get_clock_info(%struct.smu_context* %29, %struct.smu_clock_info* %7, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %36

32:                                               ; preds = %18
  %33 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %34 = load i32, i32* @PERF_LEVEL_ACTIVITY, align 4
  %35 = call i32 @smu_get_clock_info(%struct.smu_context* %33, %struct.smu_clock_info* %7, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %100

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %45 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %49 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %7, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %53 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %7, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %57 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %7, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %61 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %7, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %65 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %7, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %69 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %73 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %6, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %41
  %78 = load i64, i64* @PP_DAL_POWERLEVEL_7, align 8
  %79 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %80 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %86

81:                                               ; preds = %41
  %82 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %6, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %85 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %81, %77
  %87 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %88 = call i32 @smu_get_current_shallow_sleep_clocks(%struct.smu_context* %87, %struct.smu_clock_info* %7)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %7, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %94 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %7, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.amd_pp_clock_info*, %struct.amd_pp_clock_info** %5, align 8
  %98 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %90, %86
  br label %100

100:                                              ; preds = %99, %39
  %101 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %102 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @is_support_sw_smu(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @smu_get_dal_power_level(%struct.smu_context*, %struct.amd_pp_simple_clock_info*) #2

declare dso_local i32 @smu_get_clock_info(%struct.smu_context*, %struct.smu_clock_info*, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @smu_get_current_shallow_sleep_clocks(%struct.smu_context*, %struct.smu_clock_info*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
