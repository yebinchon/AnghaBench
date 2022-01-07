; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6621.c_max6621_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6621.c_max6621_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max6621_data = type { i32 }

@MAX6621_TEMP_INPUT_MIN = common dso_local global i32 0, align 4
@MAX6621_TEMP_INPUT_MAX = common dso_local global i32 0, align 4
@MAX6621_CONFIG2_REG = common dso_local global i32 0, align 4
@MAX6621_TEMP_ALERT_CHAN_SHIFT = common dso_local global i32 0, align 4
@max6621_temp_alert_chan2reg = common dso_local global i32* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64)* @max6621_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6621_write(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.max6621_data*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call %struct.max6621_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.max6621_data* %15, %struct.max6621_data** %12, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %56 [
    i32 130, label %17
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %53 [
    i32 128, label %19
    i32 129, label %32
  ]

19:                                               ; preds = %17
  %20 = load i64, i64* %11, align 8
  %21 = load i32, i32* @MAX6621_TEMP_INPUT_MIN, align 4
  %22 = load i32, i32* @MAX6621_TEMP_INPUT_MAX, align 4
  %23 = call i64 @clamp_val(i64 %20, i32 %21, i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @max6621_temp_mc2reg(i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.max6621_data*, %struct.max6621_data** %12, align 8
  %27 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAX6621_CONFIG2_REG, align 4
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @regmap_write(i32 %28, i32 %29, i64 %30)
  store i32 %31, i32* %6, align 4
  br label %59

32:                                               ; preds = %17
  %33 = load i32, i32* @MAX6621_TEMP_ALERT_CHAN_SHIFT, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** @max6621_temp_alert_chan2reg, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* @MAX6621_TEMP_INPUT_MIN, align 4
  %43 = load i32, i32* @MAX6621_TEMP_INPUT_MAX, align 4
  %44 = call i64 @clamp_val(i64 %41, i32 %42, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sdiv i64 %45, 1000
  store i64 %46, i64* %11, align 8
  %47 = load %struct.max6621_data*, %struct.max6621_data** %12, align 8
  %48 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @regmap_write(i32 %49, i32 %50, i64 %51)
  store i32 %52, i32* %6, align 4
  br label %59

53:                                               ; preds = %17
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %59

56:                                               ; preds = %5
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %53, %32, %19
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.max6621_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @max6621_temp_mc2reg(i64) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
