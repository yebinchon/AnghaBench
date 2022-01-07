; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_update_vupdate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_update_vupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_stats = type { i32 }
%struct.core_stats = type { i32, i32, %struct.stats_time_cache* }
%struct.stats_time_cache = type { i32, i32, i64, i64, i64* }

@MOD_STATS_NUM_VSYNCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_stats_update_vupdate(%struct.mod_stats* %0, i64 %1) #0 {
  %3 = alloca %struct.mod_stats*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.core_stats*, align 8
  %6 = alloca %struct.stats_time_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mod_stats* %0, %struct.mod_stats** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.core_stats* null, %struct.core_stats** %5, align 8
  store %struct.stats_time_cache* null, %struct.stats_time_cache** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.mod_stats*, %struct.mod_stats** %3, align 8
  %11 = icmp eq %struct.mod_stats* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %103

13:                                               ; preds = %2
  %14 = load %struct.mod_stats*, %struct.mod_stats** %3, align 8
  %15 = call %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats* %14)
  store %struct.core_stats* %15, %struct.core_stats** %5, align 8
  %16 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %17 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %20 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp uge i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %103

24:                                               ; preds = %13
  %25 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %26 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %25, i32 0, i32 2
  %27 = load %struct.stats_time_cache*, %struct.stats_time_cache** %26, align 8
  store %struct.stats_time_cache* %27, %struct.stats_time_cache** %6, align 8
  %28 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %29 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %31, i64 %33
  %35 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MOD_STATS_NUM_VSYNCS, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %88

40:                                               ; preds = %24
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sub i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %44, i64 %47
  %49 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sub i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %52, i64 %55
  %57 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %51, %58
  %60 = udiv i64 %59, 1000
  %61 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %61, i64 %63
  %65 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %64, i32 0, i32 2
  store i64 %60, i64* %65, align 8
  br label %73

66:                                               ; preds = %40
  %67 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %67, i64 %69
  %71 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %66, %43
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = sub i64 %74, %76
  %78 = udiv i64 %77, 1000
  %79 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %79, i64 %81
  %83 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %82, i32 0, i32 4
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %78, i64* %87, align 8
  br label %88

88:                                               ; preds = %73, %24
  %89 = load i64, i64* %4, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %91, i64 %93
  %95 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %94, i32 0, i32 1
  store i32 %90, i32* %95, align 4
  %96 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %96, i64 %98
  %100 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %88, %23, %12
  ret void
}

declare dso_local %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
