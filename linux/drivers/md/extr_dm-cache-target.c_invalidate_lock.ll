; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_invalidate_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_invalidate_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_migration = type { %struct.TYPE_2__, %struct.dm_bio_prison_cell_v2*, i32, %struct.cache* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_bio_prison_cell_v2 = type { i32 }
%struct.cache = type { i32, i32 }
%struct.dm_cell_key_v2 = type { i32 }

@READ_WRITE_LOCK_LEVEL = common dso_local global i32 0, align 4
@invalidate_remove = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_migration*)* @invalidate_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_lock(%struct.dm_cache_migration* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_cache_migration*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_cell_key_v2, align 4
  %6 = alloca %struct.cache*, align 8
  %7 = alloca %struct.dm_bio_prison_cell_v2*, align 8
  store %struct.dm_cache_migration* %0, %struct.dm_cache_migration** %3, align 8
  %8 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %9 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %8, i32 0, i32 3
  %10 = load %struct.cache*, %struct.cache** %9, align 8
  store %struct.cache* %10, %struct.cache** %6, align 8
  %11 = load %struct.cache*, %struct.cache** %6, align 8
  %12 = call %struct.dm_bio_prison_cell_v2* @alloc_prison_cell(%struct.cache* %11)
  store %struct.dm_bio_prison_cell_v2* %12, %struct.dm_bio_prison_cell_v2** %7, align 8
  %13 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %14 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %17 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @oblock_succ(i32 %18)
  %20 = call i32 @build_key(i32 %15, i32 %19, %struct.dm_cell_key_v2* %5)
  %21 = load %struct.cache*, %struct.cache** %6, align 8
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @READ_WRITE_LOCK_LEVEL, align 4
  %25 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %7, align 8
  %26 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %27 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %26, i32 0, i32 1
  %28 = call i32 @dm_cell_lock_v2(i32 %23, %struct.dm_cell_key_v2* %5, i32 %24, %struct.dm_bio_prison_cell_v2* %25, %struct.dm_bio_prison_cell_v2** %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.cache*, %struct.cache** %6, align 8
  %33 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %7, align 8
  %34 = call i32 @free_prison_cell(%struct.cache* %32, %struct.dm_bio_prison_cell_v2* %33)
  %35 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %36 = call i32 @invalidate_complete(%struct.dm_cache_migration* %35, i32 0)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %68

38:                                               ; preds = %1
  %39 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %40 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %39, i32 0, i32 1
  %41 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %40, align 8
  %42 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %7, align 8
  %43 = icmp ne %struct.dm_bio_prison_cell_v2* %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.cache*, %struct.cache** %6, align 8
  %46 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %7, align 8
  %47 = call i32 @free_prison_cell(%struct.cache* %45, %struct.dm_bio_prison_cell_v2* %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %53 = load i32, i32* @invalidate_remove, align 4
  %54 = call i32 @quiesce(%struct.dm_cache_migration* %52, i32 %53)
  br label %67

55:                                               ; preds = %48
  %56 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %57 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %56, i32 0, i32 0
  %58 = load i32, i32* @invalidate_remove, align 4
  %59 = call i32 @init_continuation(%struct.TYPE_2__* %57, i32 %58)
  %60 = load %struct.cache*, %struct.cache** %6, align 8
  %61 = getelementptr inbounds %struct.cache, %struct.cache* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %64 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @queue_work(i32 %62, i32* %65)
  br label %67

67:                                               ; preds = %55, %51
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.dm_bio_prison_cell_v2* @alloc_prison_cell(%struct.cache*) #1

declare dso_local i32 @build_key(i32, i32, %struct.dm_cell_key_v2*) #1

declare dso_local i32 @oblock_succ(i32) #1

declare dso_local i32 @dm_cell_lock_v2(i32, %struct.dm_cell_key_v2*, i32, %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2**) #1

declare dso_local i32 @free_prison_cell(%struct.cache*, %struct.dm_bio_prison_cell_v2*) #1

declare dso_local i32 @invalidate_complete(%struct.dm_cache_migration*, i32) #1

declare dso_local i32 @quiesce(%struct.dm_cache_migration*, i32) #1

declare dso_local i32 @init_continuation(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
