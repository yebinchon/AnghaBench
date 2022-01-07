; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_alloc_migration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_alloc_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_migration = type { %struct.cache* }
%struct.cache = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_cache_migration* (%struct.cache*)* @alloc_migration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_cache_migration* @alloc_migration(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca %struct.dm_cache_migration*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  %4 = load %struct.cache*, %struct.cache** %2, align 8
  %5 = getelementptr inbounds %struct.cache, %struct.cache* %4, i32 0, i32 1
  %6 = load i32, i32* @GFP_NOIO, align 4
  %7 = call %struct.dm_cache_migration* @mempool_alloc(i32* %5, i32 %6)
  store %struct.dm_cache_migration* %7, %struct.dm_cache_migration** %3, align 8
  %8 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %9 = call i32 @memset(%struct.dm_cache_migration* %8, i32 0, i32 8)
  %10 = load %struct.cache*, %struct.cache** %2, align 8
  %11 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %12 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %11, i32 0, i32 0
  store %struct.cache* %10, %struct.cache** %12, align 8
  %13 = load %struct.cache*, %struct.cache** %2, align 8
  %14 = getelementptr inbounds %struct.cache, %struct.cache* %13, i32 0, i32 0
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  ret %struct.dm_cache_migration* %16
}

declare dso_local %struct.dm_cache_migration* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.dm_cache_migration*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
