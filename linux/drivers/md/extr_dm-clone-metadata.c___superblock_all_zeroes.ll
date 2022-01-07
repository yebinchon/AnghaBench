; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___superblock_all_zeroes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___superblock_all_zeroes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_manager = type { i32 }
%struct.dm_block = type { i32 }

@SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read_lock superblock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_block_manager*, i32*)* @__superblock_all_zeroes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__superblock_all_zeroes(%struct.dm_block_manager* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_block_manager*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_block*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.dm_block_manager* %0, %struct.dm_block_manager** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = call i64 @cpu_to_le64(i32 0)
  store i64 %12, i64* %11, align 8
  %13 = load %struct.dm_block_manager*, %struct.dm_block_manager** %4, align 8
  %14 = load i32, i32* @SUPERBLOCK_LOCATION, align 4
  %15 = call i32 @dm_bm_read_lock(%struct.dm_block_manager* %13, i32 %14, i32* null, %struct.dm_block** %9)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @DMERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.dm_block*, %struct.dm_block** %9, align 8
  %23 = call i64* @dm_block_data(%struct.dm_block* %22)
  store i64* %23, i64** %10, align 8
  %24 = load i32*, i32** %5, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.dm_block_manager*, %struct.dm_block_manager** %4, align 8
  %26 = call i32 @dm_bm_block_size(%struct.dm_block_manager* %25)
  %27 = sext i32 %26 to i64
  %28 = urem i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.dm_block_manager*, %struct.dm_block_manager** %4, align 8
  %32 = call i32 @dm_bm_block_size(%struct.dm_block_manager* %31)
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %51, %21
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i64*, i64** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32*, i32** %5, align 8
  store i32 1, i32* %49, align 4
  br label %54

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %36

54:                                               ; preds = %48, %36
  %55 = load %struct.dm_block*, %struct.dm_block** %9, align 8
  %56 = call i32 @dm_bm_unlock(%struct.dm_block* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_bm_read_lock(%struct.dm_block_manager*, i32, i32*, %struct.dm_block**) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i64* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_bm_block_size(%struct.dm_block_manager*) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
