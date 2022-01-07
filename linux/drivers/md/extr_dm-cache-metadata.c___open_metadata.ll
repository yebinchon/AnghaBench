; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___open_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___open_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.dm_block = type { i32 }
%struct.cache_disk_superblock = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"couldn't read lock superblock\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"changing the data block size (from %u to %llu) is not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CACHE_SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"tm_open_with_sm failed\00", align 1
@CLEAN_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*)* @__open_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__open_metadata(%struct.dm_cache_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_cache_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block*, align 8
  %6 = alloca %struct.cache_disk_superblock*, align 8
  %7 = alloca i64, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %3, align 8
  %8 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %9 = call i32 @superblock_read_lock(%struct.dm_cache_metadata* %8, %struct.dm_block** %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %90

15:                                               ; preds = %1
  %16 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %17 = call %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block* %16)
  store %struct.cache_disk_superblock* %17, %struct.cache_disk_superblock** %6, align 8
  %18 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %19 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  %22 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %15
  %27 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %28 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le32_to_cpu(i32 %29)
  %31 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %32 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %86

37:                                               ; preds = %15
  %38 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %39 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %40 = call i32 @__check_incompat_features(%struct.cache_disk_superblock* %38, %struct.dm_cache_metadata* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %86

44:                                               ; preds = %37
  %45 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %46 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CACHE_SUPERBLOCK_LOCATION, align 4
  %49 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %50 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %53 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %52, i32 0, i32 3
  %54 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %55 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %54, i32 0, i32 5
  %56 = call i32 @dm_tm_open_with_sm(i32 %47, i32 %48, i32 %51, i32 4, i32* %53, i32* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %86

61:                                               ; preds = %44
  %62 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %63 = call i32 @__setup_mapping_info(%struct.dm_cache_metadata* %62)
  %64 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %65 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %68 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %67, i32 0, i32 4
  %69 = call i32 @dm_disk_bitset_init(i32 %66, i32* %68)
  %70 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %71 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %74 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %73, i32 0, i32 2
  %75 = call i32 @dm_disk_bitset_init(i32 %72, i32* %74)
  %76 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %77 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @le32_to_cpu(i32 %78)
  store i64 %79, i64* %7, align 8
  %80 = load i32, i32* @CLEAN_SHUTDOWN, align 4
  %81 = call i32 @test_bit(i32 %80, i64* %7)
  %82 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %83 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %85 = call i32 @dm_bm_unlock(%struct.dm_block* %84)
  store i32 0, i32* %2, align 4
  br label %90

86:                                               ; preds = %59, %43, %26
  %87 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %88 = call i32 @dm_bm_unlock(%struct.dm_block* %87)
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %61, %12
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @superblock_read_lock(%struct.dm_cache_metadata*, %struct.dm_block**) #1

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @__check_incompat_features(%struct.cache_disk_superblock*, %struct.dm_cache_metadata*) #1

declare dso_local i32 @dm_tm_open_with_sm(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @__setup_mapping_info(%struct.dm_cache_metadata*) #1

declare dso_local i32 @dm_disk_bitset_init(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
