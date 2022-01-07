; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_update_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_update_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_stats = type { i32 }
%struct.core_stats = type { i32, i32, i32, %struct.stats_event_cache* }
%struct.stats_event_cache = type { i8*, i32 }

@MOD_STATS_EVENT_STRING_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_stats_update_event(%struct.mod_stats* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mod_stats*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.core_stats*, align 8
  %8 = alloca %struct.stats_event_cache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mod_stats* %0, %struct.mod_stats** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.core_stats* null, %struct.core_stats** %7, align 8
  store %struct.stats_event_cache* null, %struct.stats_event_cache** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.mod_stats*, %struct.mod_stats** %4, align 8
  %12 = icmp eq %struct.mod_stats* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %73

14:                                               ; preds = %3
  %15 = load %struct.mod_stats*, %struct.mod_stats** %4, align 8
  %16 = call %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats* %15)
  store %struct.core_stats* %16, %struct.core_stats** %7, align 8
  %17 = load %struct.core_stats*, %struct.core_stats** %7, align 8
  %18 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.core_stats*, %struct.core_stats** %7, align 8
  %21 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %73

25:                                               ; preds = %14
  %26 = load %struct.core_stats*, %struct.core_stats** %7, align 8
  %27 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %26, i32 0, i32 3
  %28 = load %struct.stats_event_cache*, %struct.stats_event_cache** %27, align 8
  store %struct.stats_event_cache* %28, %struct.stats_event_cache** %8, align 8
  %29 = load %struct.core_stats*, %struct.core_stats** %7, align 8
  %30 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MOD_STATS_EVENT_STRING_MAX, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @MOD_STATS_EVENT_STRING_MAX, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %36, %25
  %39 = load %struct.stats_event_cache*, %struct.stats_event_cache** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.stats_event_cache, %struct.stats_event_cache* %39, i64 %41
  %43 = getelementptr inbounds %struct.stats_event_cache, %struct.stats_event_cache* %42, i32 0, i32 0
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @memcpy(i8** %43, i8* %44, i32 %45)
  %47 = load %struct.stats_event_cache*, %struct.stats_event_cache** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.stats_event_cache, %struct.stats_event_cache* %47, i64 %49
  %51 = getelementptr inbounds %struct.stats_event_cache, %struct.stats_event_cache* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sub i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load %struct.core_stats*, %struct.core_stats** %7, align 8
  %58 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.stats_event_cache*, %struct.stats_event_cache** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.stats_event_cache, %struct.stats_event_cache* %60, i64 %62
  %64 = getelementptr inbounds %struct.stats_event_cache, %struct.stats_event_cache* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 8
  %65 = load %struct.core_stats*, %struct.core_stats** %7, align 8
  %66 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.core_stats*, %struct.core_stats** %7, align 8
  %70 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %38, %24, %13
  ret void
}

declare dso_local %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats*) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
