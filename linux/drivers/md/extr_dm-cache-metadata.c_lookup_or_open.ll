; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_lookup_or_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_lookup_or_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32 }
%struct.block_device = type { i32 }

@table_lock = common dso_local global i32 0, align 4
@table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_cache_metadata* (%struct.block_device*, i32, i32, i64, i32)* @lookup_or_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_cache_metadata* @lookup_or_open(%struct.block_device* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.dm_cache_metadata*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_cache_metadata*, align 8
  %13 = alloca %struct.dm_cache_metadata*, align 8
  store %struct.block_device* %0, %struct.block_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call i32 @mutex_lock(i32* @table_lock)
  %15 = load %struct.block_device*, %struct.block_device** %7, align 8
  %16 = call %struct.dm_cache_metadata* @lookup(%struct.block_device* %15)
  store %struct.dm_cache_metadata* %16, %struct.dm_cache_metadata** %12, align 8
  %17 = call i32 @mutex_unlock(i32* @table_lock)
  %18 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %12, align 8
  %19 = icmp ne %struct.dm_cache_metadata* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %12, align 8
  store %struct.dm_cache_metadata* %21, %struct.dm_cache_metadata** %6, align 8
  br label %52

22:                                               ; preds = %5
  %23 = load %struct.block_device*, %struct.block_device** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.dm_cache_metadata* @metadata_open(%struct.block_device* %23, i32 %24, i32 %25, i64 %26, i32 %27)
  store %struct.dm_cache_metadata* %28, %struct.dm_cache_metadata** %12, align 8
  %29 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %12, align 8
  %30 = call i32 @IS_ERR(%struct.dm_cache_metadata* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %22
  %33 = call i32 @mutex_lock(i32* @table_lock)
  %34 = load %struct.block_device*, %struct.block_device** %7, align 8
  %35 = call %struct.dm_cache_metadata* @lookup(%struct.block_device* %34)
  store %struct.dm_cache_metadata* %35, %struct.dm_cache_metadata** %13, align 8
  %36 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %37 = icmp ne %struct.dm_cache_metadata* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = call i32 @mutex_unlock(i32* @table_lock)
  %40 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %12, align 8
  %41 = call i32 @__destroy_persistent_data_objects(%struct.dm_cache_metadata* %40)
  %42 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %12, align 8
  %43 = call i32 @kfree(%struct.dm_cache_metadata* %42)
  %44 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  store %struct.dm_cache_metadata* %44, %struct.dm_cache_metadata** %6, align 8
  br label %52

45:                                               ; preds = %32
  %46 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %12, align 8
  %47 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %46, i32 0, i32 0
  %48 = call i32 @list_add(i32* %47, i32* @table)
  %49 = call i32 @mutex_unlock(i32* @table_lock)
  br label %50

50:                                               ; preds = %45, %22
  %51 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %12, align 8
  store %struct.dm_cache_metadata* %51, %struct.dm_cache_metadata** %6, align 8
  br label %52

52:                                               ; preds = %50, %38, %20
  %53 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  ret %struct.dm_cache_metadata* %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dm_cache_metadata* @lookup(%struct.block_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.dm_cache_metadata* @metadata_open(%struct.block_device*, i32, i32, i64, i32) #1

declare dso_local i32 @IS_ERR(%struct.dm_cache_metadata*) #1

declare dso_local i32 @__destroy_persistent_data_objects(%struct.dm_cache_metadata*) #1

declare dso_local i32 @kfree(%struct.dm_cache_metadata*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
