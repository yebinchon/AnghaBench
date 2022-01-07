; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_get_ext_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_get_ext_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis16480 = type { i8*, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ADIS16480_CLK_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@ADIS16480_CLK_SYNC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get ext clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@ADIS16480_CLK_PPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adis16480*)* @adis16480_get_ext_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_get_ext_clocks(%struct.adis16480* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adis16480*, align 8
  store %struct.adis16480* %0, %struct.adis16480** %3, align 8
  %4 = load i32, i32* @ADIS16480_CLK_INT, align 4
  %5 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %6 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %5, i32 0, i32 2
  store i32 %4, i32* %6, align 8
  %7 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %8 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = call i8* @devm_clk_get(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %14 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %16 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @IS_ERR_OR_NULL(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ADIS16480_CLK_SYNC, align 4
  %22 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %23 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %2, align 4
  br label %89

24:                                               ; preds = %1
  %25 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %26 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @PTR_ERR(i8* %27)
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %34 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %40 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %2, align 4
  br label %89

43:                                               ; preds = %24
  %44 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %45 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %43
  %51 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %52 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i8* @devm_clk_get(i32* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %58 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %60 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @IS_ERR_OR_NULL(i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %50
  %65 = load i32, i32* @ADIS16480_CLK_PPS, align 4
  %66 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %67 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  store i32 0, i32* %2, align 4
  br label %89

68:                                               ; preds = %50
  %69 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %70 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @PTR_ERR(i8* %71)
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %68
  %77 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %78 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %84 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %2, align 4
  br label %89

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %43
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %76, %64, %32, %20
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
