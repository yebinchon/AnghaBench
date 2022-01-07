; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_stat_round.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_stat_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_stat = type { i32 }
%struct.dm_stat_shared = type { i64, i32* }
%struct.dm_stat_percpu = type { i64*, i64, i32 }

@STAT_PRECISE_TIMESTAMPS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_stat*, %struct.dm_stat_shared*, %struct.dm_stat_percpu*)* @dm_stat_round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_stat_round(%struct.dm_stat* %0, %struct.dm_stat_shared* %1, %struct.dm_stat_percpu* %2) #0 {
  %4 = alloca %struct.dm_stat*, align 8
  %5 = alloca %struct.dm_stat_shared*, align 8
  %6 = alloca %struct.dm_stat_percpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dm_stat* %0, %struct.dm_stat** %4, align 8
  store %struct.dm_stat_shared* %1, %struct.dm_stat_shared** %5, align 8
  store %struct.dm_stat_percpu* %2, %struct.dm_stat_percpu** %6, align 8
  %11 = load %struct.dm_stat*, %struct.dm_stat** %4, align 8
  %12 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @STAT_PRECISE_TIMESTAMPS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @jiffies, align 8
  store i64 %22, i64* %7, align 8
  br label %26

23:                                               ; preds = %3
  %24 = call i32 (...) @ktime_get()
  %25 = call i64 @ktime_to_ns(i32 %24)
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %5, align 8
  %29 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %100

35:                                               ; preds = %26
  %36 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %5, align 8
  %37 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @READ, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i64 @atomic_read(i32* %40)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %5, align 8
  %44 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @WRITE, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = call i64 @atomic_read(i32* %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %35
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %6, align 8
  %55 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @READ, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %53
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %52, %35
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %6, align 8
  %67 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @WRITE, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, %65
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %64, %61
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %6, align 8
  %81 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %84, %85
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %8, align 8
  %89 = mul i64 %87, %88
  %90 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %6, align 8
  %91 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = zext i32 %92 to i64
  %94 = add i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 8
  br label %96

96:                                               ; preds = %78, %73
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %5, align 8
  %99 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %96, %34
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
