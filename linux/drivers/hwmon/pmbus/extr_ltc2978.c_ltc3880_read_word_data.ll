; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc3880_read_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc3880_read_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.ltc2978_data = type { i32, i32* }

@LTC3880_MFR_IOUT_PEAK = common dso_local global i32 0, align 4
@LTC3880_MFR_TEMPERATURE2_PEAK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @ltc3880_read_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc3880_read_word_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmbus_driver_info*, align 8
  %8 = alloca %struct.ltc2978_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %10)
  store %struct.pmbus_driver_info* %11, %struct.pmbus_driver_info** %7, align 8
  %12 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %13 = call %struct.ltc2978_data* @to_ltc2978_data(%struct.pmbus_driver_info* %12)
  store %struct.ltc2978_data* %13, %struct.ltc2978_data** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %39 [
    i32 134, label %15
    i32 133, label %27
    i32 131, label %35
    i32 130, label %35
    i32 132, label %35
    i32 129, label %38
    i32 128, label %38
  ]

15:                                               ; preds = %3
  %16 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @LTC3880_MFR_IOUT_PEAK, align 4
  %20 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %21 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @ltc_get_max(%struct.ltc2978_data* %16, %struct.i2c_client* %17, i32 %18, i32 %19, i32* %25)
  store i32 %26, i32* %9, align 4
  br label %44

27:                                               ; preds = %3
  %28 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @LTC3880_MFR_TEMPERATURE2_PEAK, align 4
  %32 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %33 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %32, i32 0, i32 0
  %34 = call i32 @ltc_get_max(%struct.ltc2978_data* %28, %struct.i2c_client* %29, i32 %30, i32 %31, i32* %33)
  store i32 %34, i32* %9, align 4
  br label %44

35:                                               ; preds = %3, %3, %3
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %44

38:                                               ; preds = %3, %3
  store i32 0, i32* %9, align 4
  br label %44

39:                                               ; preds = %3
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ltc2978_read_word_data_common(%struct.i2c_client* %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %38, %35, %27, %15
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.ltc2978_data* @to_ltc2978_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @ltc_get_max(%struct.ltc2978_data*, %struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @ltc2978_read_word_data_common(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
