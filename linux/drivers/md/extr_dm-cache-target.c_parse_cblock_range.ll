; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_parse_cblock_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_parse_cblock_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.cblock_range = type { i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"%llu-%llu%c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: invalid cblock range '%s'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, i8*, %struct.cblock_range*)* @parse_cblock_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cblock_range(%struct.cache* %0, i8* %1, %struct.cblock_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cblock_range*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.cblock_range* %2, %struct.cblock_range** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i64* %10 to i8*
  %14 = call i32 (i8*, i8*, i64*, i8*, ...) @sscanf(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64* %9, i8* %13, i8* %8)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i64, i64* %9, align 8
  %24 = call i8* @to_cblock(i64 %23)
  %25 = load %struct.cblock_range*, %struct.cblock_range** %7, align 8
  %26 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i8* @to_cblock(i64 %27)
  %29 = load %struct.cblock_range*, %struct.cblock_range** %7, align 8
  %30 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  store i32 0, i32* %4, align 4
  br label %61

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, i8*, i64*, i8*, ...) @sscanf(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %9, i8* %8)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %61

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = call i8* @to_cblock(i64 %42)
  %44 = load %struct.cblock_range*, %struct.cblock_range** %7, align 8
  %45 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.cblock_range*, %struct.cblock_range** %7, align 8
  %47 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @from_cblock(i8* %48)
  %50 = add nsw i64 %49, 1
  %51 = call i8* @to_cblock(i64 %50)
  %52 = load %struct.cblock_range*, %struct.cblock_range** %7, align 8
  %53 = getelementptr inbounds %struct.cblock_range, %struct.cblock_range* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  store i32 0, i32* %4, align 4
  br label %61

54:                                               ; preds = %38
  %55 = load %struct.cache*, %struct.cache** %5, align 8
  %56 = call i32 @cache_device_name(%struct.cache* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @DMERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %56, i8* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %54, %41, %36, %22, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*, ...) #1

declare dso_local i8* @to_cblock(i64) #1

declare dso_local i64 @from_cblock(i8*) #1

declare dso_local i32 @DMERR(i8*, i32, i8*) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
