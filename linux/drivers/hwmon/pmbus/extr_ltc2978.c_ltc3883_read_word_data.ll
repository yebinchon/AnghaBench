; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc3883_read_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc3883_read_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.ltc2978_data = type { i32 }

@LTC3883_MFR_IIN_PEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @ltc3883_read_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc3883_read_word_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
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
  switch i32 %14, label %24 [
    i32 129, label %15
    i32 128, label %23
  ]

15:                                               ; preds = %3
  %16 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @LTC3883_MFR_IIN_PEAK, align 4
  %20 = load %struct.ltc2978_data*, %struct.ltc2978_data** %8, align 8
  %21 = getelementptr inbounds %struct.ltc2978_data, %struct.ltc2978_data* %20, i32 0, i32 0
  %22 = call i32 @ltc_get_max(%struct.ltc2978_data* %16, %struct.i2c_client* %17, i32 %18, i32 %19, i32* %21)
  store i32 %22, i32* %9, align 4
  br label %29

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ltc3880_read_word_data(%struct.i2c_client* %25, i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %24, %23, %15
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.ltc2978_data* @to_ltc2978_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @ltc_get_max(%struct.ltc2978_data*, %struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @ltc3880_read_word_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
