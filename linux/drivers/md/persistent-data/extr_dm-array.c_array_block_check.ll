; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_array_block_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_array_block_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.array_block = type { i64, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"array_block_check failed: blocknr %llu != wanted %llu\00", align 1
@ENOTBLK = common dso_local global i32 0, align 4
@CSUM_XOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"array_block_check failed: csum %u != wanted %u\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_block_validator*, %struct.dm_block*, i64)* @array_block_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_block_check(%struct.dm_block_validator* %0, %struct.dm_block* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block_validator*, align 8
  %6 = alloca %struct.dm_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.array_block*, align 8
  %9 = alloca i64, align 8
  store %struct.dm_block_validator* %0, %struct.dm_block_validator** %5, align 8
  store %struct.dm_block* %1, %struct.dm_block** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %11 = call %struct.array_block* @dm_block_data(%struct.dm_block* %10)
  store %struct.array_block* %11, %struct.array_block** %8, align 8
  %12 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %13 = call i64 @dm_block_location(%struct.dm_block* %12)
  %14 = load %struct.array_block*, %struct.array_block** %8, align 8
  %15 = getelementptr inbounds %struct.array_block, %struct.array_block* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le64_to_cpu(i32 %16)
  %18 = icmp ne i64 %13, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.array_block*, %struct.array_block** %8, align 8
  %21 = getelementptr inbounds %struct.array_block, %struct.array_block* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le64_to_cpu(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %26 = call i64 @dm_block_location(%struct.dm_block* %25)
  %27 = trunc i64 %26 to i32
  %28 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* @ENOTBLK, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %57

31:                                               ; preds = %3
  %32 = load %struct.array_block*, %struct.array_block** %8, align 8
  %33 = getelementptr inbounds %struct.array_block, %struct.array_block* %32, i32 0, i32 1
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %34, 8
  %36 = load i32, i32* @CSUM_XOR, align 4
  %37 = call i32 @dm_bm_checksum(i32* %33, i64 %35, i32 %36)
  %38 = call i64 @cpu_to_le32(i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.array_block*, %struct.array_block** %8, align 8
  %41 = getelementptr inbounds %struct.array_block, %struct.array_block* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %31
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @le32_to_cpu(i64 %45)
  %47 = trunc i64 %46 to i32
  %48 = load %struct.array_block*, %struct.array_block** %8, align 8
  %49 = getelementptr inbounds %struct.array_block, %struct.array_block* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @le32_to_cpu(i64 %50)
  %52 = trunc i64 %51 to i32
  %53 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %52)
  %54 = load i32, i32* @EILSEQ, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %44, %19
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.array_block* @dm_block_data(%struct.dm_block*) #1

declare dso_local i64 @dm_block_location(%struct.dm_block*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @DMERR_LIMIT(i8*, i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @dm_bm_checksum(i32*, i64, i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
