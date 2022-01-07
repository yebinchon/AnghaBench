; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_parse_region_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_parse_region_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dm_arg_set = type { i32 }
%struct.dm_arg = type { i8*, i32, i32 }

@MIN_REGION_SIZE = common dso_local global i32 0, align 4
@MAX_REGION_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid region size\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Region size is not a power of 2\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Region size is not a multiple of device logical block size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone*, %struct.dm_arg_set*, i8**)* @parse_region_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_region_size(%struct.clone* %0, %struct.dm_arg_set* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clone*, align 8
  %6 = alloca %struct.dm_arg_set*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_arg, align 8
  store %struct.clone* %0, %struct.clone** %5, align 8
  store %struct.dm_arg_set* %1, %struct.dm_arg_set** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* @MIN_REGION_SIZE, align 4
  %12 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %10, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @MAX_REGION_SIZE, align 4
  %14 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %10, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load %struct.dm_arg_set*, %struct.dm_arg_set** %6, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = call i32 @dm_read_arg(%struct.dm_arg* %10, %struct.dm_arg_set* %16, i32* %9, i8** %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %61

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @is_power_of_2(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %61

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.clone*, %struct.clone** %5, align 8
  %34 = getelementptr inbounds %struct.clone, %struct.clone* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bdev_logical_block_size(i32 %37)
  %39 = ashr i32 %38, 9
  %40 = urem i32 %32, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.clone*, %struct.clone** %5, align 8
  %45 = getelementptr inbounds %struct.clone, %struct.clone* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bdev_logical_block_size(i32 %48)
  %50 = ashr i32 %49, 9
  %51 = urem i32 %43, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42, %31
  %54 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8** %54, align 8
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.clone*, %struct.clone** %5, align 8
  %60 = getelementptr inbounds %struct.clone, %struct.clone* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %53, %27, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @dm_read_arg(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
