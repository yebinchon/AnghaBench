; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_index_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_index_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.disk_metadata_index = type { i64, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"index_check failed: blocknr %llu != wanted %llu\00", align 1
@ENOTBLK = common dso_local global i32 0, align 4
@INDEX_CSUM_XOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"index_check failed: csum %u != wanted %u\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_block_validator*, %struct.dm_block*, i64)* @index_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_check(%struct.dm_block_validator* %0, %struct.dm_block* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block_validator*, align 8
  %6 = alloca %struct.dm_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.disk_metadata_index*, align 8
  %9 = alloca i64, align 8
  store %struct.dm_block_validator* %0, %struct.dm_block_validator** %5, align 8
  store %struct.dm_block* %1, %struct.dm_block** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %11 = call %struct.disk_metadata_index* @dm_block_data(%struct.dm_block* %10)
  store %struct.disk_metadata_index* %11, %struct.disk_metadata_index** %8, align 8
  %12 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %13 = call i64 @dm_block_location(%struct.dm_block* %12)
  %14 = load %struct.disk_metadata_index*, %struct.disk_metadata_index** %8, align 8
  %15 = getelementptr inbounds %struct.disk_metadata_index, %struct.disk_metadata_index* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le64_to_cpu(i32 %16)
  %18 = icmp ne i64 %13, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.disk_metadata_index*, %struct.disk_metadata_index** %8, align 8
  %21 = getelementptr inbounds %struct.disk_metadata_index, %struct.disk_metadata_index* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le64_to_cpu(i32 %22)
  %24 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %25 = call i64 @dm_block_location(%struct.dm_block* %24)
  %26 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %25)
  %27 = load i32, i32* @ENOTBLK, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %53

29:                                               ; preds = %3
  %30 = load %struct.disk_metadata_index*, %struct.disk_metadata_index** %8, align 8
  %31 = getelementptr inbounds %struct.disk_metadata_index, %struct.disk_metadata_index* %30, i32 0, i32 1
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %32, 8
  %34 = load i32, i32* @INDEX_CSUM_XOR, align 4
  %35 = call i32 @dm_bm_checksum(i32* %31, i64 %33, i32 %34)
  %36 = call i64 @cpu_to_le32(i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.disk_metadata_index*, %struct.disk_metadata_index** %8, align 8
  %39 = getelementptr inbounds %struct.disk_metadata_index, %struct.disk_metadata_index* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %29
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @le32_to_cpu(i64 %43)
  %45 = load %struct.disk_metadata_index*, %struct.disk_metadata_index** %8, align 8
  %46 = getelementptr inbounds %struct.disk_metadata_index, %struct.disk_metadata_index* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @le32_to_cpu(i64 %47)
  %49 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %48)
  %50 = load i32, i32* @EILSEQ, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %42, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.disk_metadata_index* @dm_block_data(%struct.dm_block*) #1

declare dso_local i64 @dm_block_location(%struct.dm_block*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @DMERR_LIMIT(i8*, i64, i64) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @dm_bm_checksum(i32*, i64, i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
