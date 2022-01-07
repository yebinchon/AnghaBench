; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_update_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_update_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_stats = type { i32 }
%struct.core_stats = type { i32, i32, i32, %struct.stats_time_cache* }
%struct.stats_time_cache = type { i64, i64, i32, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_stats_update_flip(%struct.mod_stats* %0, i64 %1) #0 {
  %3 = alloca %struct.mod_stats*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.core_stats*, align 8
  %6 = alloca %struct.stats_time_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mod_stats* %0, %struct.mod_stats** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.core_stats* null, %struct.core_stats** %5, align 8
  store %struct.stats_time_cache* null, %struct.stats_time_cache** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.mod_stats*, %struct.mod_stats** %3, align 8
  %10 = icmp eq %struct.mod_stats* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %142

12:                                               ; preds = %2
  %13 = load %struct.mod_stats*, %struct.mod_stats** %3, align 8
  %14 = call %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats* %13)
  store %struct.core_stats* %14, %struct.core_stats** %5, align 8
  %15 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %16 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %19 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp uge i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %142

23:                                               ; preds = %12
  %24 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %25 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %24, i32 0, i32 3
  %26 = load %struct.stats_time_cache*, %struct.stats_time_cache** %25, align 8
  store %struct.stats_time_cache* %26, %struct.stats_time_cache** %6, align 8
  %27 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %28 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %31, i64 %33
  %35 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %34, i32 0, i32 0
  store i64 %30, i64* %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sub i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %37, i64 %40
  %42 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %36, %43
  %45 = udiv i64 %44, 1000
  %46 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %46, i64 %48
  %50 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %49, i32 0, i32 1
  store i64 %45, i64* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp uge i32 %51, 10
  br i1 %52, label %53, label %86

53:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %58, i64 %62
  %64 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %66, i64 %68
  %70 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, %65
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 8
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %54

78:                                               ; preds = %54
  %79 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %79, i64 %81
  %83 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sdiv i32 %84, 10
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %78, %23
  %87 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %87, i64 %89
  %91 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %86
  %95 = load i64, i64* %4, align 8
  %96 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %96, i64 %98
  %100 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %95, %101
  %103 = udiv i64 %102, 1000
  %104 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %104, i64 %106
  %108 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %107, i32 0, i32 4
  store i64 %103, i64* %108, align 8
  br label %125

109:                                              ; preds = %86
  %110 = load i64, i64* %4, align 8
  %111 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sub i32 %112, 1
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %111, i64 %114
  %116 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = sub i64 %110, %117
  %119 = udiv i64 %118, 1000
  %120 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %120, i64 %122
  %124 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %123, i32 0, i32 4
  store i64 %119, i64* %124, align 8
  br label %125

125:                                              ; preds = %109, %94
  %126 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %127 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %129, i64 %131
  %133 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %132, i32 0, i32 6
  store i32 %128, i32* %133, align 8
  %134 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %135 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %139 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %125, %22, %11
  ret void
}

declare dso_local %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
