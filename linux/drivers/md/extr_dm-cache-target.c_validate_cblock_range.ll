; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_validate_cblock_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_validate_cblock_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.cblock_range = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"%s: begin cblock out of range: %llu >= %llu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: end cblock out of range: %llu > %llu\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: invalid cblock range: %llu >= %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, %struct.cblock_range*)* @validate_cblock_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_cblock_range(%struct.cache* %0, %struct.cblock_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache*, align 8
  %5 = alloca %struct.cblock_range*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.cache* %0, %struct.cache** %4, align 8
  store %struct.cblock_range* %1, %struct.cblock_range** %5, align 8
  %9 = load %struct.cblock_range*, %struct.cblock_range** %5, align 8
  %10 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @from_cblock(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.cblock_range*, %struct.cblock_range** %5, align 8
  %14 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @from_cblock(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.cache*, %struct.cache** %4, align 8
  %18 = getelementptr inbounds %struct.cache, %struct.cache* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @from_cblock(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.cache*, %struct.cache** %4, align 8
  %26 = call i32 @cache_device_name(%struct.cache* %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @DMERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %2
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.cache*, %struct.cache** %4, align 8
  %38 = call i32 @cache_device_name(%struct.cache* %37)
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @DMERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %39, i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %32
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.cache*, %struct.cache** %4, align 8
  %50 = call i32 @cache_device_name(%struct.cache* %49)
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @DMERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %50, i64 %51, i64 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %48, %36, %24
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @from_cblock(i32) #1

declare dso_local i32 @DMERR(i8*, i32, i64, i64) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
