; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_invalidate_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_invalidate_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.dm_cache_migration = type { i32*, i32, i32, i32, %struct.cache* }
%struct.cache = type { i32 }

@invalidate_completed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @invalidate_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_remove(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_cache_migration*, align 8
  %5 = alloca %struct.cache*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %6 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %7 = call %struct.dm_cache_migration* @ws_to_mg(%struct.work_struct* %6)
  store %struct.dm_cache_migration* %7, %struct.dm_cache_migration** %4, align 8
  %8 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %9 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %8, i32 0, i32 4
  %10 = load %struct.cache*, %struct.cache** %9, align 8
  store %struct.cache* %10, %struct.cache** %5, align 8
  %11 = load %struct.cache*, %struct.cache** %5, align 8
  %12 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %13 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @invalidate_cblock(%struct.cache* %11, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %20 = call i32 @invalidate_complete(%struct.dm_cache_migration* %19, i32 0)
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %23 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %22, i32 0, i32 2
  %24 = load i32, i32* @invalidate_completed, align 4
  %25 = call i32 @init_continuation(i32* %23, i32 %24)
  %26 = load %struct.cache*, %struct.cache** %5, align 8
  %27 = getelementptr inbounds %struct.cache, %struct.cache* %26, i32 0, i32 0
  %28 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %29 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %28, i32 0, i32 2
  %30 = call i32 @continue_after_commit(i32* %27, i32* %29)
  %31 = load %struct.cache*, %struct.cache** %5, align 8
  %32 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %33 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %36 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @remap_to_origin_clear_discard(%struct.cache* %31, i32* %34, i32 %37)
  %39 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %40 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.cache*, %struct.cache** %5, align 8
  %42 = getelementptr inbounds %struct.cache, %struct.cache* %41, i32 0, i32 0
  %43 = call i32 @schedule_commit(i32* %42)
  br label %44

44:                                               ; preds = %21, %18
  ret void
}

declare dso_local %struct.dm_cache_migration* @ws_to_mg(%struct.work_struct*) #1

declare dso_local i32 @invalidate_cblock(%struct.cache*, i32) #1

declare dso_local i32 @invalidate_complete(%struct.dm_cache_migration*, i32) #1

declare dso_local i32 @init_continuation(i32*, i32) #1

declare dso_local i32 @continue_after_commit(i32*, i32*) #1

declare dso_local i32 @remap_to_origin_clear_discard(%struct.cache*, i32*, i32) #1

declare dso_local i32 @schedule_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
