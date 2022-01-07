; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___begin_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___begin_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32 }
%struct.cache_disk_superblock = type { i32 }
%struct.dm_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*)* @__begin_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__begin_transaction(%struct.dm_cache_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_cache_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_disk_superblock*, align 8
  %6 = alloca %struct.dm_block*, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %3, align 8
  %7 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %8 = call i32 @superblock_read_lock(%struct.dm_cache_metadata* %7, %struct.dm_block** %6)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %15 = call %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block* %14)
  store %struct.cache_disk_superblock* %15, %struct.cache_disk_superblock** %5, align 8
  %16 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %17 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %5, align 8
  %18 = call i32 @read_superblock_fields(%struct.dm_cache_metadata* %16, %struct.cache_disk_superblock* %17)
  %19 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %20 = call i32 @dm_bm_unlock(%struct.dm_block* %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %13, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @superblock_read_lock(%struct.dm_cache_metadata*, %struct.dm_block**) #1

declare dso_local %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @read_superblock_fields(%struct.dm_cache_metadata*, %struct.cache_disk_superblock*) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
