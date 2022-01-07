; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc3815.c_ltc3815_read_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc3815.c_ltc3815_read_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@LTC3815_MFR_VIN_PEAK = common dso_local global i32 0, align 4
@LTC3815_MFR_VOUT_PEAK = common dso_local global i32 0, align 4
@LTC3815_MFR_TEMP_PEAK = common dso_local global i32 0, align 4
@LTC3815_MFR_IOUT_PEAK = common dso_local global i32 0, align 4
@LTC3815_MFR_IIN_PEAK = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @ltc3815_read_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc3815_read_word_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %35 [
    i32 134, label %9
    i32 133, label %14
    i32 135, label %19
    i32 136, label %24
    i32 137, label %29
    i32 128, label %34
    i32 129, label %34
    i32 130, label %34
    i32 131, label %34
    i32 132, label %34
  ]

9:                                                ; preds = %3
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LTC3815_MFR_VIN_PEAK, align 4
  %13 = call i32 @pmbus_read_word_data(%struct.i2c_client* %10, i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  br label %38

14:                                               ; preds = %3
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @LTC3815_MFR_VOUT_PEAK, align 4
  %18 = call i32 @pmbus_read_word_data(%struct.i2c_client* %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @LTC3815_MFR_TEMP_PEAK, align 4
  %23 = call i32 @pmbus_read_word_data(%struct.i2c_client* %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  br label %38

24:                                               ; preds = %3
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @LTC3815_MFR_IOUT_PEAK, align 4
  %28 = call i32 @pmbus_read_word_data(%struct.i2c_client* %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @LTC3815_MFR_IIN_PEAK, align 4
  %33 = call i32 @pmbus_read_word_data(%struct.i2c_client* %30, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %38

34:                                               ; preds = %3, %3, %3, %3, %3
  store i32 0, i32* %7, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @ENODATA, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %34, %29, %24, %19, %14, %9
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @pmbus_read_word_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
