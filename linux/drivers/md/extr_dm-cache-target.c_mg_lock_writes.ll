; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_lock_writes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_lock_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_migration = type { %struct.TYPE_4__, %struct.dm_bio_prison_cell_v2*, i64, %struct.TYPE_3__*, %struct.cache* }
%struct.TYPE_4__ = type { i32 }
%struct.dm_bio_prison_cell_v2 = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cache = type { i32 }
%struct.dm_cell_key_v2 = type { i32 }

@READ_WRITE_LOCK_LEVEL = common dso_local global i32 0, align 4
@WRITE_LOCK_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_migration*)* @mg_lock_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_lock_writes(%struct.dm_cache_migration* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_cache_migration*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_cell_key_v2, align 4
  %6 = alloca %struct.cache*, align 8
  %7 = alloca %struct.dm_bio_prison_cell_v2*, align 8
  store %struct.dm_cache_migration* %0, %struct.dm_cache_migration** %3, align 8
  %8 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %9 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %8, i32 0, i32 4
  %10 = load %struct.cache*, %struct.cache** %9, align 8
  store %struct.cache* %10, %struct.cache** %6, align 8
  %11 = load %struct.cache*, %struct.cache** %6, align 8
  %12 = call %struct.dm_bio_prison_cell_v2* @alloc_prison_cell(%struct.cache* %11)
  store %struct.dm_bio_prison_cell_v2* %12, %struct.dm_bio_prison_cell_v2** %7, align 8
  %13 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %14 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %19 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @oblock_succ(i32 %22)
  %24 = call i32 @build_key(i32 %17, i32 %23, %struct.dm_cell_key_v2* %5)
  %25 = load %struct.cache*, %struct.cache** %6, align 8
  %26 = getelementptr inbounds %struct.cache, %struct.cache* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %29 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @READ_WRITE_LOCK_LEVEL, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @WRITE_LOCK_LEVEL, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %7, align 8
  %39 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %40 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %39, i32 0, i32 1
  %41 = call i32 @dm_cell_lock_v2(i32 %27, %struct.dm_cell_key_v2* %5, i32 %37, %struct.dm_bio_prison_cell_v2* %38, %struct.dm_bio_prison_cell_v2** %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.cache*, %struct.cache** %6, align 8
  %46 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %7, align 8
  %47 = call i32 @free_prison_cell(%struct.cache* %45, %struct.dm_bio_prison_cell_v2* %46)
  %48 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %49 = call i32 @mg_complete(%struct.dm_cache_migration* %48, i32 0)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %73

51:                                               ; preds = %36
  %52 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %53 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %52, i32 0, i32 1
  %54 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %53, align 8
  %55 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %7, align 8
  %56 = icmp ne %struct.dm_bio_prison_cell_v2* %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.cache*, %struct.cache** %6, align 8
  %59 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %7, align 8
  %60 = call i32 @free_prison_cell(%struct.cache* %58, %struct.dm_bio_prison_cell_v2* %59)
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %66 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @mg_copy(i32* %67)
  br label %72

69:                                               ; preds = %61
  %70 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %71 = call i32 @quiesce(%struct.dm_cache_migration* %70, i32 (i32*)* @mg_copy)
  br label %72

72:                                               ; preds = %69, %64
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %44
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.dm_bio_prison_cell_v2* @alloc_prison_cell(%struct.cache*) #1

declare dso_local i32 @build_key(i32, i32, %struct.dm_cell_key_v2*) #1

declare dso_local i32 @oblock_succ(i32) #1

declare dso_local i32 @dm_cell_lock_v2(i32, %struct.dm_cell_key_v2*, i32, %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2**) #1

declare dso_local i32 @free_prison_cell(%struct.cache*, %struct.dm_bio_prison_cell_v2*) #1

declare dso_local i32 @mg_complete(%struct.dm_cache_migration*, i32) #1

declare dso_local i32 @mg_copy(i32*) #1

declare dso_local i32 @quiesce(%struct.dm_cache_migration*, i32 (i32*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
