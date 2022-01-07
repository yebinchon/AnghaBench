; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_get_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_get_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }
%struct.smu_clock_info = type { i32, i32, i32 }
%struct.smu_performance_level = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PERF_LEVEL_ACTIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, %struct.smu_clock_info*, i32)* @smu_get_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_get_clock_info(%struct.smu_context* %0, %struct.smu_clock_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca %struct.smu_clock_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.smu_performance_level, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store %struct.smu_clock_info* %1, %struct.smu_clock_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.smu_performance_level* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 20, i1 false)
  %11 = load %struct.smu_clock_info*, %struct.smu_clock_info** %6, align 8
  %12 = icmp ne %struct.smu_clock_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %65

16:                                               ; preds = %3
  %17 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %18 = load i32, i32* @PERF_LEVEL_ACTIVITY, align 4
  %19 = call i32 @smu_get_perf_level(%struct.smu_context* %17, i32 %18, %struct.smu_performance_level* %9)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %65

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.smu_performance_level, %struct.smu_performance_level* %9, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.smu_clock_info*, %struct.smu_clock_info** %6, align 8
  %29 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.smu_performance_level, %struct.smu_performance_level* %9, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.smu_clock_info*, %struct.smu_clock_info** %6, align 8
  %33 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.smu_performance_level, %struct.smu_performance_level* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.smu_performance_level, %struct.smu_performance_level* %9, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %35, %37
  %39 = load %struct.smu_clock_info*, %struct.smu_clock_info** %6, align 8
  %40 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @smu_get_perf_level(%struct.smu_context* %41, i32 %42, %struct.smu_performance_level* %9)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %65

49:                                               ; preds = %25
  %50 = getelementptr inbounds %struct.smu_performance_level, %struct.smu_performance_level* %9, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.smu_clock_info*, %struct.smu_clock_info** %6, align 8
  %53 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.smu_performance_level, %struct.smu_performance_level* %9, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.smu_clock_info*, %struct.smu_clock_info** %6, align 8
  %57 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.smu_performance_level, %struct.smu_performance_level* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.smu_performance_level, %struct.smu_performance_level* %9, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %59, %61
  %63 = load %struct.smu_clock_info*, %struct.smu_clock_info** %6, align 8
  %64 = getelementptr inbounds %struct.smu_clock_info, %struct.smu_clock_info* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %49, %46, %22, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @smu_get_perf_level(%struct.smu_context*, i32, %struct.smu_performance_level*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
