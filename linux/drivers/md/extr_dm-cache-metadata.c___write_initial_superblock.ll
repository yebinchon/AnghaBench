; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___write_initial_superblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___write_initial_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_block = type { i32 }
%struct.cache_disk_superblock = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32, i64 }

@SECTOR_SHIFT = common dso_local global i64 0, align 8
@DM_CACHE_METADATA_MAX_SECTORS = common dso_local global i64 0, align 8
@CACHE_SUPERBLOCK_MAGIC = common dso_local global i32 0, align 4
@DM_CACHE_METADATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*)* @__write_initial_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_initial_superblock(%struct.dm_cache_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_cache_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block*, align 8
  %6 = alloca %struct.cache_disk_superblock*, align 8
  %7 = alloca i64, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %3, align 8
  %8 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %9 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %8, i32 0, i32 9
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @i_size_read(i32 %12)
  %14 = load i64, i64* @SECTOR_SHIFT, align 8
  %15 = ashr i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @DM_CACHE_METADATA_MAX_SECTORS, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* @DM_CACHE_METADATA_MAX_SECTORS, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dm_tm_pre_commit(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %149

30:                                               ; preds = %21
  %31 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %32 = call i32 @__save_sm_root(%struct.dm_cache_metadata* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %149

37:                                               ; preds = %30
  %38 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %39 = call i32 @superblock_lock_zero(%struct.dm_cache_metadata* %38, %struct.dm_block** %5)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %149

44:                                               ; preds = %37
  %45 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %46 = call %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block* %45)
  store %struct.cache_disk_superblock* %46, %struct.cache_disk_superblock** %6, align 8
  %47 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %48 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %47, i32 0, i32 19
  store i64 0, i64* %48, align 8
  %49 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %50 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %49, i32 0, i32 18
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @memset(i32 %51, i32 0, i32 4)
  %53 = load i32, i32* @CACHE_SUPERBLOCK_MAGIC, align 4
  %54 = call i8* @cpu_to_le64(i32 %53)
  %55 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %56 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %55, i32 0, i32 17
  store i8* %54, i8** %56, align 8
  %57 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %58 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %62 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %61, i32 0, i32 16
  store i8* %60, i8** %62, align 8
  %63 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %64 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %63, i32 0, i32 15
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memset(i32 %65, i32 0, i32 4)
  %67 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %68 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %67, i32 0, i32 14
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memset(i32 %69, i32 0, i32 4)
  %71 = call i8* @cpu_to_le32(i32 0)
  %72 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %73 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %72, i32 0, i32 13
  store i8* %71, i8** %73, align 8
  %74 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %75 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %76 = call i32 @__copy_sm_root(%struct.dm_cache_metadata* %74, %struct.cache_disk_superblock* %75)
  %77 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %78 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @cpu_to_le64(i32 %79)
  %81 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %82 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %81, i32 0, i32 12
  store i8* %80, i8** %82, align 8
  %83 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %84 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @cpu_to_le64(i32 %85)
  %87 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %88 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %87, i32 0, i32 11
  store i8* %86, i8** %88, align 8
  %89 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %90 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_le64(i32 %91)
  %93 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %94 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %93, i32 0, i32 10
  store i8* %92, i8** %94, align 8
  %95 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %96 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @cpu_to_le64(i32 %97)
  %99 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %100 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %99, i32 0, i32 9
  store i8* %98, i8** %100, align 8
  %101 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %102 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @from_dblock(i32 %103)
  %105 = call i8* @cpu_to_le64(i32 %104)
  %106 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %107 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %106, i32 0, i32 8
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @DM_CACHE_METADATA_BLOCK_SIZE, align 4
  %109 = call i8* @cpu_to_le32(i32 %108)
  %110 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %111 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %110, i32 0, i32 7
  store i8* %109, i8** %111, align 8
  %112 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %113 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @cpu_to_le32(i32 %114)
  %116 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %117 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  %118 = call i8* @cpu_to_le32(i32 0)
  %119 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %120 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %119, i32 0, i32 5
  store i8* %118, i8** %120, align 8
  %121 = call i8* @cpu_to_le32(i32 0)
  %122 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %123 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  %124 = call i8* @cpu_to_le32(i32 0)
  %125 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %126 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = call i8* @cpu_to_le32(i32 0)
  %128 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %129 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = call i8* @cpu_to_le32(i32 0)
  %131 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %132 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %134 = call i64 @separate_dirty_bits(%struct.dm_cache_metadata* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %44
  %137 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %138 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @cpu_to_le64(i32 %139)
  %141 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %6, align 8
  %142 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %136, %44
  %144 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %145 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %148 = call i32 @dm_tm_commit(i32 %146, %struct.dm_block* %147)
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %143, %42, %35, %28
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @dm_tm_pre_commit(i32) #1

declare dso_local i32 @__save_sm_root(%struct.dm_cache_metadata*) #1

declare dso_local i32 @superblock_lock_zero(%struct.dm_cache_metadata*, %struct.dm_block**) #1

declare dso_local %struct.cache_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @__copy_sm_root(%struct.dm_cache_metadata*, %struct.cache_disk_superblock*) #1

declare dso_local i32 @from_dblock(i32) #1

declare dso_local i64 @separate_dirty_bits(%struct.dm_cache_metadata*) #1

declare dso_local i32 @dm_tm_commit(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
