; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lochnagar-hwmon.c_read_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lochnagar-hwmon.c_read_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lochnagar_hwmon = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"SYSVDD\00", align 1
@lochnagar_chan_names = common dso_local global i32* null, align 8
@LN2_PWR_UNITS = common dso_local global i32 0, align 4
@LN2_VOLT = common dso_local global i32 0, align 4
@LN2_CURR = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64*)* @read_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_power(%struct.device* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.lochnagar_hwmon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.lochnagar_hwmon* @dev_get_drvdata(%struct.device* %12)
  store %struct.lochnagar_hwmon* %13, %struct.lochnagar_hwmon** %8, align 8
  %14 = load %struct.lochnagar_hwmon*, %struct.lochnagar_hwmon** %8, align 8
  %15 = getelementptr inbounds %struct.lochnagar_hwmon, %struct.lochnagar_hwmon* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** @lochnagar_chan_names, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @LN2_PWR_UNITS, align 4
  %30 = mul nsw i32 5, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %10, align 8
  br label %47

32:                                               ; preds = %3
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @LN2_VOLT, align 4
  %36 = load i32, i32* @LN2_PWR_UNITS, align 4
  %37 = load i64*, i64** %7, align 8
  %38 = call i32 @read_sensor(%struct.device* %33, i32 %34, i32 %35, i32 1, i32 %36, i64* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  br label %78

43:                                               ; preds = %32
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @abs(i64 %45)
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %43, %28
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @LN2_CURR, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @LN2_PWR_UNITS, align 4
  %53 = load i64*, i64** %7, align 8
  %54 = call i32 @read_sensor(%struct.device* %48, i32 %49, i32 %50, i32 %51, i32 %52, i64* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %78

59:                                               ; preds = %47
  %60 = load i64*, i64** %7, align 8
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @abs(i64 %61)
  %63 = load i64, i64* %10, align 8
  %64 = mul nsw i64 %63, %62
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* @LN2_PWR_UNITS, align 4
  %67 = call i64 @DIV_ROUND_CLOSEST_ULL(i64 %65, i32 %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @LONG_MAX, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %59
  %72 = load i64, i64* @LONG_MAX, align 8
  %73 = load i64*, i64** %7, align 8
  store i64 %72, i64* %73, align 8
  br label %77

74:                                               ; preds = %59
  %75 = load i64, i64* %10, align 8
  %76 = load i64*, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %57, %41
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.lochnagar_hwmon* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @read_sensor(%struct.device*, i32, i32, i32, i32, i64*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @DIV_ROUND_CLOSEST_ULL(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
