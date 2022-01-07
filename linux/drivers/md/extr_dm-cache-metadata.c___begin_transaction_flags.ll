; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___begin_transaction_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___begin_transaction_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32 }
%struct.cache_disk_superblock = type { i32 }
%struct.dm_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, i32)* @__begin_transaction_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__begin_transaction_flags(%struct.dm_cache_metadata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_cache_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_disk_superblock*, align 8
  %8 = alloca %struct.dm_block*, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %10 = call i32 @superblock_lock(%struct.dm_cache_metadata* %9, %struct.dm_block** %8)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.dm_block*, %struct.dm_block** %8, align 8
  %17 = call %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block* %16)
  store %struct.cache_disk_superblock* %17, %struct.cache_disk_superblock** %7, align 8
  %18 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @update_flags(%struct.cache_disk_superblock* %18, i32 %19)
  %21 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %22 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %7, align 8
  %23 = call i32 @read_superblock_fields(%struct.dm_cache_metadata* %21, %struct.cache_disk_superblock* %22)
  %24 = load %struct.dm_block*, %struct.dm_block** %8, align 8
  %25 = call i32 @dm_bm_unlock(%struct.dm_block* %24)
  %26 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %27 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dm_bm_flush(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %15, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @superblock_lock(%struct.dm_cache_metadata*, %struct.dm_block**) #1

declare dso_local %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @update_flags(%struct.cache_disk_superblock*, i32) #1

declare dso_local i32 @read_superblock_fields(%struct.dm_cache_metadata*, %struct.cache_disk_superblock*) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

declare dso_local i32 @dm_bm_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
