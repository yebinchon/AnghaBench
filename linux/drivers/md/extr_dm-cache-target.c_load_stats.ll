; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_load_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_load_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.dm_cache_statistics = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*)* @load_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_stats(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca %struct.dm_cache_statistics, align 4
  store %struct.cache* %0, %struct.cache** %2, align 8
  %4 = load %struct.cache*, %struct.cache** %2, align 8
  %5 = getelementptr inbounds %struct.cache, %struct.cache* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @dm_cache_metadata_get_stats(i32 %6, %struct.dm_cache_statistics* %3)
  %8 = load %struct.cache*, %struct.cache** %2, align 8
  %9 = getelementptr inbounds %struct.cache, %struct.cache* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.dm_cache_statistics, %struct.dm_cache_statistics* %3, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @atomic_set(i32* %10, i32 %12)
  %14 = load %struct.cache*, %struct.cache** %2, align 8
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.dm_cache_statistics, %struct.dm_cache_statistics* %3, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @atomic_set(i32* %16, i32 %18)
  %20 = load %struct.cache*, %struct.cache** %2, align 8
  %21 = getelementptr inbounds %struct.cache, %struct.cache* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.dm_cache_statistics, %struct.dm_cache_statistics* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @atomic_set(i32* %22, i32 %24)
  %26 = load %struct.cache*, %struct.cache** %2, align 8
  %27 = getelementptr inbounds %struct.cache, %struct.cache* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.dm_cache_statistics, %struct.dm_cache_statistics* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @atomic_set(i32* %28, i32 %30)
  ret void
}

declare dso_local i32 @dm_cache_metadata_get_stats(i32, %struct.dm_cache_statistics*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
