; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_blocks_are_clean_combined_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_blocks_are_clean_combined_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"block_clean_combined_dirty failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cache block %llu is dirty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, i64, i64, i32*)* @blocks_are_clean_combined_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blocks_are_clean_combined_dirty(%struct.dm_cache_metadata* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_cache_metadata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  store i32 1, i32* %11, align 4
  br label %12

12:                                               ; preds = %34, %4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @block_clean_combined_dirty(%struct.dm_cache_metadata* %17, i64 %18, i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %40

26:                                               ; preds = %16
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @from_cblock(i64 %31)
  %33 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  store i32 0, i32* %5, align 4
  br label %40

34:                                               ; preds = %26
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @from_cblock(i64 %35)
  %37 = add nsw i64 %36, 1
  %38 = call i64 @to_cblock(i64 %37)
  store i64 %38, i64* %7, align 8
  br label %12

39:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %30, %23
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @block_clean_combined_dirty(%struct.dm_cache_metadata*, i64, i32*) #1

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local i64 @from_cblock(i64) #1

declare dso_local i64 @to_cblock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
