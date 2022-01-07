; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.dm_cache_migration = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@mg_update_metadata_after_copy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @mg_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_copy(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.dm_cache_migration*, align 8
  %4 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %6 = call %struct.dm_cache_migration* @ws_to_mg(%struct.work_struct* %5)
  store %struct.dm_cache_migration* %6, %struct.dm_cache_migration** %3, align 8
  %7 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %8 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %52

11:                                               ; preds = %1
  %12 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %13 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %16 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %19 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @optimisable_bio(i32 %14, i32* %17, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %11
  %26 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %27 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %30 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %35 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bio_detain_shared(i32 %28, i32 %33, i32* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %41 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %43 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @inc_io_migrations(i32 %44)
  %46 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %47 = call i32 @mg_full_copy(%struct.work_struct* %46)
  br label %55

48:                                               ; preds = %11
  %49 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %50 = load i32, i32* @mg_update_metadata_after_copy, align 4
  %51 = call i32 @overwrite(%struct.dm_cache_migration* %49, i32 %50)
  br label %55

52:                                               ; preds = %1
  %53 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %54 = call i32 @mg_full_copy(%struct.work_struct* %53)
  br label %55

55:                                               ; preds = %25, %52, %48
  ret void
}

declare dso_local %struct.dm_cache_migration* @ws_to_mg(%struct.work_struct*) #1

declare dso_local i32 @optimisable_bio(i32, i32*, i32) #1

declare dso_local i32 @bio_detain_shared(i32, i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @inc_io_migrations(i32) #1

declare dso_local i32 @mg_full_copy(%struct.work_struct*) #1

declare dso_local i32 @overwrite(%struct.dm_cache_migration*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
