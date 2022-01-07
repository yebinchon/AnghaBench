; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_overwrite_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_overwrite_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.dm_cache_migration* }
%struct.dm_cache_migration = type { %struct.TYPE_2__, %struct.cache* }
%struct.TYPE_2__ = type { i64 }
%struct.cache = type { i32 }
%struct.per_bio_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @overwrite_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overwrite_endio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.dm_cache_migration*, align 8
  %4 = alloca %struct.cache*, align 8
  %5 = alloca %struct.per_bio_data*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 1
  %8 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %7, align 8
  store %struct.dm_cache_migration* %8, %struct.dm_cache_migration** %3, align 8
  %9 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %10 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %9, i32 0, i32 1
  %11 = load %struct.cache*, %struct.cache** %10, align 8
  store %struct.cache* %11, %struct.cache** %4, align 8
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = call %struct.per_bio_data* @get_per_bio_data(%struct.bio* %12)
  store %struct.per_bio_data* %13, %struct.per_bio_data** %5, align 8
  %14 = load %struct.per_bio_data*, %struct.per_bio_data** %5, align 8
  %15 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %14, i32 0, i32 0
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = call i32 @dm_unhook_bio(i32* %15, %struct.bio* %16)
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %27 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.cache*, %struct.cache** %4, align 8
  %31 = getelementptr inbounds %struct.cache, %struct.cache* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %34 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %33, i32 0, i32 0
  %35 = call i32 @queue_continuation(i32 %32, %struct.TYPE_2__* %34)
  ret void
}

declare dso_local %struct.per_bio_data* @get_per_bio_data(%struct.bio*) #1

declare dso_local i32 @dm_unhook_bio(i32*, %struct.bio*) #1

declare dso_local i32 @queue_continuation(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
