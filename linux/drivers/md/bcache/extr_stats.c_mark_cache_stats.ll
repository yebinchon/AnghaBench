; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_stats.c_mark_cache_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_stats.c_mark_cache_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_stat_collector = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_stat_collector*, i32, i32)* @mark_cache_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_cache_stats(%struct.cache_stat_collector* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cache_stat_collector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cache_stat_collector* %0, %struct.cache_stat_collector** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.cache_stat_collector*, %struct.cache_stat_collector** %4, align 8
  %14 = getelementptr inbounds %struct.cache_stat_collector, %struct.cache_stat_collector* %13, i32 0, i32 3
  %15 = call i32 @atomic_inc(i32* %14)
  br label %20

16:                                               ; preds = %9
  %17 = load %struct.cache_stat_collector*, %struct.cache_stat_collector** %4, align 8
  %18 = getelementptr inbounds %struct.cache_stat_collector, %struct.cache_stat_collector* %17, i32 0, i32 2
  %19 = call i32 @atomic_inc(i32* %18)
  br label %20

20:                                               ; preds = %16, %12
  br label %33

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.cache_stat_collector*, %struct.cache_stat_collector** %4, align 8
  %26 = getelementptr inbounds %struct.cache_stat_collector, %struct.cache_stat_collector* %25, i32 0, i32 1
  %27 = call i32 @atomic_inc(i32* %26)
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.cache_stat_collector*, %struct.cache_stat_collector** %4, align 8
  %30 = getelementptr inbounds %struct.cache_stat_collector, %struct.cache_stat_collector* %29, i32 0, i32 0
  %31 = call i32 @atomic_inc(i32* %30)
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %20
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
