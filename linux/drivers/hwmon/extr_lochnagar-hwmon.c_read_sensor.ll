; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lochnagar-hwmon.c_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lochnagar-hwmon.c_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lochnagar_hwmon = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to perform measurement: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to read measurement: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i32, i64*)* @read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sensor(%struct.device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.lochnagar_hwmon*, align 8
  %14 = alloca %struct.regmap*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.lochnagar_hwmon* @dev_get_drvdata(%struct.device* %17)
  store %struct.lochnagar_hwmon* %18, %struct.lochnagar_hwmon** %13, align 8
  %19 = load %struct.lochnagar_hwmon*, %struct.lochnagar_hwmon** %13, align 8
  %20 = getelementptr inbounds %struct.lochnagar_hwmon, %struct.lochnagar_hwmon* %19, i32 0, i32 1
  %21 = load %struct.regmap*, %struct.regmap** %20, align 8
  store %struct.regmap* %21, %struct.regmap** %14, align 8
  %22 = load %struct.lochnagar_hwmon*, %struct.lochnagar_hwmon** %13, align 8
  %23 = getelementptr inbounds %struct.lochnagar_hwmon, %struct.lochnagar_hwmon* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.regmap*, %struct.regmap** %14, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @do_measurement(%struct.regmap* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %6
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %51

36:                                               ; preds = %6
  %37 = load %struct.regmap*, %struct.regmap** %14, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @request_data(%struct.regmap* %37, i32 %38, i32* %15)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %51

46:                                               ; preds = %36
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @float_to_long(i32 %47, i32 %48)
  %50 = load i64*, i64** %12, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %42, %32
  %52 = load %struct.lochnagar_hwmon*, %struct.lochnagar_hwmon** %13, align 8
  %53 = getelementptr inbounds %struct.lochnagar_hwmon, %struct.lochnagar_hwmon* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %16, align 4
  ret i32 %55
}

declare dso_local %struct.lochnagar_hwmon* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_measurement(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @request_data(%struct.regmap*, i32, i32*) #1

declare dso_local i64 @float_to_long(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
