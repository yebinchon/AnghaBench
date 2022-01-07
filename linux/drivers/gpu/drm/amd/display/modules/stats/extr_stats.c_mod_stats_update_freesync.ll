; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_update_freesync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_update_freesync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_stats = type { i32 }
%struct.core_stats = type { i32, i32, %struct.stats_time_cache* }
%struct.stats_time_cache = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_stats_update_freesync(%struct.mod_stats* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.mod_stats*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.core_stats*, align 8
  %20 = alloca %struct.stats_time_cache*, align 8
  %21 = alloca i32, align 4
  store %struct.mod_stats* %0, %struct.mod_stats** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store %struct.core_stats* null, %struct.core_stats** %19, align 8
  store %struct.stats_time_cache* null, %struct.stats_time_cache** %20, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.mod_stats*, %struct.mod_stats** %10, align 8
  %23 = icmp eq %struct.mod_stats* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  br label %91

25:                                               ; preds = %9
  %26 = load %struct.mod_stats*, %struct.mod_stats** %10, align 8
  %27 = call %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats* %26)
  store %struct.core_stats* %27, %struct.core_stats** %19, align 8
  %28 = load %struct.core_stats*, %struct.core_stats** %19, align 8
  %29 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.core_stats*, %struct.core_stats** %19, align 8
  %32 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp uge i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %91

36:                                               ; preds = %25
  %37 = load %struct.core_stats*, %struct.core_stats** %19, align 8
  %38 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %37, i32 0, i32 2
  %39 = load %struct.stats_time_cache*, %struct.stats_time_cache** %38, align 8
  store %struct.stats_time_cache* %39, %struct.stats_time_cache** %20, align 8
  %40 = load %struct.core_stats*, %struct.core_stats** %19, align 8
  %41 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.stats_time_cache*, %struct.stats_time_cache** %20, align 8
  %45 = load i32, i32* %21, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %44, i64 %46
  %48 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.stats_time_cache*, %struct.stats_time_cache** %20, align 8
  %51 = load i32, i32* %21, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %50, i64 %52
  %54 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %53, i32 0, i32 1
  store i32 %49, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.stats_time_cache*, %struct.stats_time_cache** %20, align 8
  %57 = load i32, i32* %21, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %56, i64 %58
  %60 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %59, i32 0, i32 2
  store i32 %55, i32* %60, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.stats_time_cache*, %struct.stats_time_cache** %20, align 8
  %63 = load i32, i32* %21, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %62, i64 %64
  %66 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %65, i32 0, i32 3
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.stats_time_cache*, %struct.stats_time_cache** %20, align 8
  %69 = load i32, i32* %21, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %68, i64 %70
  %72 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %71, i32 0, i32 4
  store i32 %67, i32* %72, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.stats_time_cache*, %struct.stats_time_cache** %20, align 8
  %75 = load i32, i32* %21, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %74, i64 %76
  %78 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %77, i32 0, i32 5
  store i32 %73, i32* %78, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.stats_time_cache*, %struct.stats_time_cache** %20, align 8
  %81 = load i32, i32* %21, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %80, i64 %82
  %84 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %83, i32 0, i32 6
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load %struct.stats_time_cache*, %struct.stats_time_cache** %20, align 8
  %87 = load i32, i32* %21, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %86, i64 %88
  %90 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %89, i32 0, i32 7
  store i32 %85, i32* %90, align 4
  br label %91

91:                                               ; preds = %36, %35, %24
  ret void
}

declare dso_local %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
