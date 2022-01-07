; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c_ad5761_get_vref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c_ad5761_get_vref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5761_state = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ad5761_chip_info = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Voltage reference not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Error getting voltage reference regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to enable voltage reference\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to get voltage reference value\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Invalid external voltage ref. value %d uV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5761_state*, %struct.ad5761_chip_info*)* @ad5761_get_vref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5761_get_vref(%struct.ad5761_state* %0, %struct.ad5761_chip_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad5761_state*, align 8
  %5 = alloca %struct.ad5761_chip_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ad5761_state* %0, %struct.ad5761_state** %4, align 8
  store %struct.ad5761_chip_info* %1, %struct.ad5761_chip_info** %5, align 8
  %7 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %8 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32* @devm_regulator_get_optional(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %13 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %12, i32 0, i32 2
  store i32* %11, i32** %13, align 8
  %14 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %15 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @PTR_ERR(i32* %16)
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load %struct.ad5761_chip_info*, %struct.ad5761_chip_info** %5, align 8
  %23 = getelementptr inbounds %struct.ad5761_chip_info, %struct.ad5761_chip_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %28 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %115

34:                                               ; preds = %21
  %35 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %36 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.ad5761_chip_info*, %struct.ad5761_chip_info** %5, align 8
  %38 = getelementptr inbounds %struct.ad5761_chip_info, %struct.ad5761_chip_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %41 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %115

42:                                               ; preds = %2
  %43 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %44 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @IS_ERR(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %50 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %55 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @PTR_ERR(i32* %56)
  store i32 %57, i32* %3, align 4
  br label %115

58:                                               ; preds = %42
  %59 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %60 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @regulator_enable(i32* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %67 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %115

72:                                               ; preds = %58
  %73 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %74 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @regulator_get_voltage(i32* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %81 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %107

85:                                               ; preds = %72
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 2000000
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %89, 3000000
  br i1 %90, label %91, label %100

91:                                               ; preds = %88, %85
  %92 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %93 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @dev_warn(i32* %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %107

100:                                              ; preds = %88
  %101 = load i32, i32* %6, align 4
  %102 = sdiv i32 %101, 1000
  %103 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %104 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %106 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  store i32 0, i32* %3, align 4
  br label %115

107:                                              ; preds = %91, %79
  %108 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %109 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @regulator_disable(i32* %110)
  %112 = load %struct.ad5761_state*, %struct.ad5761_state** %4, align 8
  %113 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %107, %100, %65, %48, %34, %26
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32* @devm_regulator_get_optional(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @regulator_get_voltage(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @regulator_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
