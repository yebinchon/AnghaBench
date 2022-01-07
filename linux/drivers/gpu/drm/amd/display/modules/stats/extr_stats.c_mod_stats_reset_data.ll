; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_reset_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_reset_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_stats = type { i32 }
%struct.core_stats = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.stats_time_cache = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_stats_reset_data(%struct.mod_stats* %0) #0 {
  %2 = alloca %struct.mod_stats*, align 8
  %3 = alloca %struct.core_stats*, align 8
  %4 = alloca %struct.stats_time_cache*, align 8
  %5 = alloca i32, align 4
  store %struct.mod_stats* %0, %struct.mod_stats** %2, align 8
  store %struct.core_stats* null, %struct.core_stats** %3, align 8
  store %struct.stats_time_cache* null, %struct.stats_time_cache** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mod_stats*, %struct.mod_stats** %2, align 8
  %7 = icmp eq %struct.mod_stats* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %38

9:                                                ; preds = %1
  %10 = load %struct.mod_stats*, %struct.mod_stats** %2, align 8
  %11 = call %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats* %10)
  store %struct.core_stats* %11, %struct.core_stats** %3, align 8
  %12 = load %struct.core_stats*, %struct.core_stats** %3, align 8
  %13 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.core_stats*, %struct.core_stats** %3, align 8
  %16 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32 %14, i32 0, i32 %20)
  %22 = load %struct.core_stats*, %struct.core_stats** %3, align 8
  %23 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.core_stats*, %struct.core_stats** %3, align 8
  %26 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32 %24, i32 0, i32 %30)
  %32 = load %struct.core_stats*, %struct.core_stats** %3, align 8
  %33 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  %34 = load %struct.core_stats*, %struct.core_stats** %3, align 8
  %35 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.core_stats*, %struct.core_stats** %3, align 8
  %37 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
