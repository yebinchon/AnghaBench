; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_metadata_set_needs_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_metadata_set_needs_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32 }
%struct.dm_block = type { i32 }
%struct.cache_disk_superblock = type { i32 }

@NEEDS_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"couldn't read superblock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_cache_metadata_set_needs_check(%struct.dm_cache_metadata* %0) #0 {
  %2 = alloca %struct.dm_cache_metadata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_block*, align 8
  %5 = alloca %struct.cache_disk_superblock*, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %2, align 8
  %6 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %7 = call i32 @WRITE_LOCK(%struct.dm_cache_metadata* %6)
  %8 = load i32, i32* @NEEDS_CHECK, align 4
  %9 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %9, i32 0, i32 0
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %13 = call i32 @superblock_lock(%struct.dm_cache_metadata* %12, %struct.dm_block** %4)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @DMERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.dm_block*, %struct.dm_block** %4, align 8
  %20 = call %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block* %19)
  store %struct.cache_disk_superblock* %20, %struct.cache_disk_superblock** %5, align 8
  %21 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %22 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %5, align 8
  %26 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dm_block*, %struct.dm_block** %4, align 8
  %28 = call i32 @dm_bm_unlock(%struct.dm_block* %27)
  br label %29

29:                                               ; preds = %18, %16
  %30 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %31 = call i32 @WRITE_UNLOCK(%struct.dm_cache_metadata* %30)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @WRITE_LOCK(%struct.dm_cache_metadata*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @superblock_lock(%struct.dm_cache_metadata*, %struct.dm_block**) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

declare dso_local i32 @WRITE_UNLOCK(%struct.dm_cache_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
