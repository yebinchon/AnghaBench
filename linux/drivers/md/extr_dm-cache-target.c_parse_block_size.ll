; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_parse_block_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_parse_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_args = type { i64, i64 }
%struct.dm_arg_set = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DATA_DEV_BLOCK_SIZE_MIN_SECTORS = common dso_local global i64 0, align 8
@DATA_DEV_BLOCK_SIZE_MAX_SECTORS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid data block size\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Data block size is larger than the cache device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_args*, %struct.dm_arg_set*, i8**)* @parse_block_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_block_size(%struct.cache_args* %0, %struct.dm_arg_set* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_args*, align 8
  %6 = alloca %struct.dm_arg_set*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  store %struct.cache_args* %0, %struct.cache_args** %5, align 8
  store %struct.dm_arg_set* %1, %struct.dm_arg_set** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.dm_arg_set*, %struct.dm_arg_set** %6, align 8
  %10 = load i8**, i8*** %7, align 8
  %11 = call i32 @at_least_one_arg(%struct.dm_arg_set* %9, i8** %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %56

16:                                               ; preds = %3
  %17 = load %struct.dm_arg_set*, %struct.dm_arg_set** %6, align 8
  %18 = call i32 @dm_shift_arg(%struct.dm_arg_set* %17)
  %19 = call i64 @kstrtoul(i32 %18, i32 10, i64* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @DATA_DEV_BLOCK_SIZE_MIN_SECTORS, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @DATA_DEV_BLOCK_SIZE_MAX_SECTORS, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @DATA_DEV_BLOCK_SIZE_MIN_SECTORS, align 8
  %35 = sub i64 %34, 1
  %36 = and i64 %33, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %28, %24, %21, %16
  %39 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %56

42:                                               ; preds = %32
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.cache_args*, %struct.cache_args** %5, align 8
  %45 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 8
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %42
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.cache_args*, %struct.cache_args** %5, align 8
  %55 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %48, %38, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @at_least_one_arg(%struct.dm_arg_set*, i8**) #1

declare dso_local i64 @kstrtoul(i32, i32, i64*) #1

declare dso_local i32 @dm_shift_arg(%struct.dm_arg_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
