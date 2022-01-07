; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_sb_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_sb_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.superblock_disk = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"Superblock check failed: blocknr %llu, expected %llu\00", align 1
@ENOTBLK = common dso_local global i32 0, align 4
@SUPERBLOCK_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Superblock check failed: magic %llu, expected %llu\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@SUPERBLOCK_CSUM_XOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Superblock check failed: checksum %u, expected %u\00", align 1
@DM_CLONE_MIN_METADATA_VERSION = common dso_local global i32 0, align 4
@DM_CLONE_MAX_METADATA_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [80 x i8] c"Clone metadata version %u found, but only versions between %u and %u supported.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_block_validator*, %struct.dm_block*, i64)* @sb_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_check(%struct.dm_block_validator* %0, %struct.dm_block* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block_validator*, align 8
  %6 = alloca %struct.dm_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.superblock_disk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dm_block_validator* %0, %struct.dm_block_validator** %5, align 8
  store %struct.dm_block* %1, %struct.dm_block** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %12 = call %struct.superblock_disk* @dm_block_data(%struct.dm_block* %11)
  store %struct.superblock_disk* %12, %struct.superblock_disk** %8, align 8
  %13 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %14 = call i64 @dm_block_location(%struct.dm_block* %13)
  %15 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %16 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @le64_to_cpu(i32 %17)
  %19 = icmp ne i64 %14, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %22 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @le64_to_cpu(i32 %23)
  %25 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %26 = call i64 @dm_block_location(%struct.dm_block* %25)
  %27 = call i32 (i8*, i64, i64, ...) @DMERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %26)
  %28 = load i32, i32* @ENOTBLK, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %92

30:                                               ; preds = %3
  %31 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %32 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le64_to_cpu(i32 %33)
  %35 = load i64, i64* @SUPERBLOCK_MAGIC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %39 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le64_to_cpu(i32 %40)
  %42 = load i64, i64* @SUPERBLOCK_MAGIC, align 8
  %43 = call i32 (i8*, i64, i64, ...) @DMERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %42)
  %44 = load i32, i32* @EILSEQ, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %92

46:                                               ; preds = %30
  %47 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %48 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %47, i32 0, i32 2
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, 4
  %51 = load i32, i32* @SUPERBLOCK_CSUM_XOR, align 4
  %52 = call i32 @dm_bm_checksum(i32* %48, i64 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %54 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @cpu_to_le32(i32 %56)
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %63 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @le32_to_cpu(i64 %64)
  %66 = sext i32 %65 to i64
  %67 = call i32 (i8*, i64, i64, ...) @DMERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %61, i64 %66)
  %68 = load i32, i32* @EILSEQ, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %92

70:                                               ; preds = %46
  %71 = load %struct.superblock_disk*, %struct.superblock_disk** %8, align 8
  %72 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @le32_to_cpu(i64 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @DM_CLONE_MIN_METADATA_VERSION, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @DM_CLONE_MAX_METADATA_VERSION, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78, %70
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = load i32, i32* @DM_CLONE_MIN_METADATA_VERSION, align 4
  %86 = sext i32 %85 to i64
  %87 = load i32, i32* @DM_CLONE_MAX_METADATA_VERSION, align 4
  %88 = call i32 (i8*, i64, i64, ...) @DMERR(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i64 %84, i64 %86, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %82, %59, %37, %20
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.superblock_disk* @dm_block_data(%struct.dm_block*) #1

declare dso_local i64 @dm_block_location(%struct.dm_block*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @DMERR(i8*, i64, i64, ...) #1

declare dso_local i32 @dm_bm_checksum(i32*, i64, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
