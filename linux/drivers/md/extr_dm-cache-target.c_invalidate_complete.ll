; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_invalidate_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_invalidate_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_migration = type { i64, i32, %struct.cache* }
%struct.cache = type { i32 }
%struct.bio_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_cache_migration*, i32)* @invalidate_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_complete(%struct.dm_cache_migration* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_cache_migration*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_list, align 4
  %6 = alloca %struct.cache*, align 8
  store %struct.dm_cache_migration* %0, %struct.dm_cache_migration** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %8 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %7, i32 0, i32 2
  %9 = load %struct.cache*, %struct.cache** %8, align 8
  store %struct.cache* %9, %struct.cache** %6, align 8
  %10 = call i32 @bio_list_init(%struct.bio_list* %5)
  %11 = load %struct.cache*, %struct.cache** %6, align 8
  %12 = getelementptr inbounds %struct.cache, %struct.cache* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %15 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @dm_cell_unlock_v2(i32 %13, i32 %16, %struct.bio_list* %5)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.cache*, %struct.cache** %6, align 8
  %21 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %22 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @free_prison_cell(%struct.cache* %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %30 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %35 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @bio_io_error(i64 %36)
  br label %38

38:                                               ; preds = %33, %28, %25
  %39 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %40 = call i32 @free_migration(%struct.dm_cache_migration* %39)
  %41 = load %struct.cache*, %struct.cache** %6, align 8
  %42 = call i32 @defer_bios(%struct.cache* %41, %struct.bio_list* %5)
  %43 = load %struct.cache*, %struct.cache** %6, align 8
  %44 = call i32 @background_work_end(%struct.cache* %43)
  ret void
}

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i64 @dm_cell_unlock_v2(i32, i32, %struct.bio_list*) #1

declare dso_local i32 @free_prison_cell(%struct.cache*, i32) #1

declare dso_local i32 @bio_io_error(i64) #1

declare dso_local i32 @free_migration(%struct.dm_cache_migration*) #1

declare dso_local i32 @defer_bios(%struct.cache*, %struct.bio_list*) #1

declare dso_local i32 @background_work_end(%struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
