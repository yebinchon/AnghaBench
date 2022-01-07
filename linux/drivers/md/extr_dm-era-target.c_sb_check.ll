; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_sb_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_sb_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.superblock_disk = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"sb_check failed: blocknr %llu: wanted %llu\00", align 1
@ENOTBLK = common dso_local global i32 0, align 4
@SUPERBLOCK_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"sb_check failed: magic %llu: wanted %llu\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@SUPERBLOCK_CSUM_XOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"sb_check failed: csum %u: wanted %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_block_validator*, %struct.dm_block*, i64)* @sb_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_check(%struct.dm_block_validator* %0, %struct.dm_block* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block_validator*, align 8
  %6 = alloca %struct.dm_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.superblock_disk*, align 8
  %9 = alloca i64, align 8
  store %struct.dm_block_validator* %0, %struct.dm_block_validator** %5, align 8
  store %struct.dm_block* %1, %struct.dm_block** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %11 = call %struct.superblock_disk* @dm_block_data(%struct.dm_block* %10)
  store %struct.superblock_disk* %11, %struct.superblock_disk** %8, align 8
  %12 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %13 = call i64 @dm_block_location(%struct.dm_block* %12)
  %14 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %15 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @le64_to_cpu(i32 %16)
  %18 = icmp ne i64 %13, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %21 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @le64_to_cpu(i32 %22)
  %24 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %25 = call i64 @dm_block_location(%struct.dm_block* %24)
  %26 = call i32 @DMERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %25)
  %27 = load i32, i32* @ENOTBLK, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %71

29:                                               ; preds = %3
  %30 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %31 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le64_to_cpu(i32 %32)
  %34 = load i64, i64* @SUPERBLOCK_MAGIC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %38 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le64_to_cpu(i32 %39)
  %41 = load i64, i64* @SUPERBLOCK_MAGIC, align 8
  %42 = call i32 @DMERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i32, i32* @EILSEQ, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %71

45:                                               ; preds = %29
  %46 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %47 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %46, i32 0, i32 1
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 8
  %50 = load i32, i32* @SUPERBLOCK_CSUM_XOR, align 4
  %51 = call i32 @dm_bm_checksum(i32* %47, i64 %49, i32 %50)
  %52 = call i64 @cpu_to_le32(i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %55 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %45
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @le32_to_cpu(i64 %59)
  %61 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %62 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @le32_to_cpu(i64 %63)
  %65 = call i32 @DMERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %60, i64 %64)
  %66 = load i32, i32* @EILSEQ, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %45
  %69 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %70 = call i32 @check_metadata_version(%struct.superblock_disk* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %58, %36, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.superblock_disk* @dm_block_data(%struct.dm_block*) #1

declare dso_local i64 @dm_block_location(%struct.dm_block*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @DMERR(i8*, i64, i64) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @dm_bm_checksum(i32*, i64, i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @check_metadata_version(%struct.superblock_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
