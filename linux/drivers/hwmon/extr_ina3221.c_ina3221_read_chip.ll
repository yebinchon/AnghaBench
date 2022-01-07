; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_read_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_read_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ina3221_data = type { i32 }

@ina3221_avg_samples = common dso_local global i64* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64*)* @ina3221_read_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina3221_read_chip(%struct.device* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ina3221_data*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.ina3221_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.ina3221_data* %11, %struct.ina3221_data** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %34 [
    i32 129, label %13
    i32 128, label %24
  ]

13:                                               ; preds = %3
  %14 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %15 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @INA3221_CONFIG_AVG(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i64*, i64** @ina3221_avg_samples, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %7, align 8
  store i64 %22, i64* %23, align 8
  store i32 0, i32* %4, align 4
  br label %37

24:                                               ; preds = %3
  %25 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %26 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ina3221_reg_to_interval_us(i32 %27)
  %29 = load i64*, i64** %7, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @DIV_ROUND_CLOSEST(i64 %31, i32 1000)
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %24, %13
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.ina3221_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @INA3221_CONFIG_AVG(i32) #1

declare dso_local i64 @ina3221_reg_to_interval_us(i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
