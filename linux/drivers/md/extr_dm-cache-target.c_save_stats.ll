; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_save_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_save_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.dm_cache_statistics = type { i8*, i8*, i8*, i8* }

@CM_READ_ONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*)* @save_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_stats(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca %struct.dm_cache_statistics, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  %4 = load %struct.cache*, %struct.cache** %2, align 8
  %5 = call i64 @get_cache_mode(%struct.cache* %4)
  %6 = load i64, i64* @CM_READ_ONLY, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.cache*, %struct.cache** %2, align 8
  %11 = getelementptr inbounds %struct.cache, %struct.cache* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = call i8* @atomic_read(i32* %12)
  %14 = getelementptr inbounds %struct.dm_cache_statistics, %struct.dm_cache_statistics* %3, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load %struct.cache*, %struct.cache** %2, align 8
  %16 = getelementptr inbounds %struct.cache, %struct.cache* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = call i8* @atomic_read(i32* %17)
  %19 = getelementptr inbounds %struct.dm_cache_statistics, %struct.dm_cache_statistics* %3, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load %struct.cache*, %struct.cache** %2, align 8
  %21 = getelementptr inbounds %struct.cache, %struct.cache* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i8* @atomic_read(i32* %22)
  %24 = getelementptr inbounds %struct.dm_cache_statistics, %struct.dm_cache_statistics* %3, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load %struct.cache*, %struct.cache** %2, align 8
  %26 = getelementptr inbounds %struct.cache, %struct.cache* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i8* @atomic_read(i32* %27)
  %29 = getelementptr inbounds %struct.dm_cache_statistics, %struct.dm_cache_statistics* %3, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.cache*, %struct.cache** %2, align 8
  %31 = getelementptr inbounds %struct.cache, %struct.cache* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dm_cache_metadata_set_stats(i32 %32, %struct.dm_cache_statistics* %3)
  br label %34

34:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @get_cache_mode(%struct.cache*) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i32 @dm_cache_metadata_set_stats(i32, %struct.dm_cache_statistics*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
