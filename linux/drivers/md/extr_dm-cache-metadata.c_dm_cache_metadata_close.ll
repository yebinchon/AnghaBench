; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_metadata_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_metadata_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i32, i32 }

@table_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_cache_metadata_close(%struct.dm_cache_metadata* %0) #0 {
  %2 = alloca %struct.dm_cache_metadata*, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %2, align 8
  %3 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %4 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %3, i32 0, i32 2
  %5 = call i64 @refcount_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = call i32 @mutex_lock(i32* @table_lock)
  %9 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %9, i32 0, i32 1
  %11 = call i32 @list_del(i32* %10)
  %12 = call i32 @mutex_unlock(i32* @table_lock)
  %13 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %14 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %19 = call i32 @__destroy_persistent_data_objects(%struct.dm_cache_metadata* %18)
  br label %20

20:                                               ; preds = %17, %7
  %21 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %22 = call i32 @kfree(%struct.dm_cache_metadata* %21)
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__destroy_persistent_data_objects(%struct.dm_cache_metadata*) #1

declare dso_local i32 @kfree(%struct.dm_cache_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
