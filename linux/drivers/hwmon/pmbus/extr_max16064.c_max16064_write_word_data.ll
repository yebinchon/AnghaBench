; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max16064.c_max16064_write_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max16064.c_max16064_write_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@MAX16064_MFR_VOUT_PEAK = common dso_local global i32 0, align 4
@MAX16064_MFR_TEMPERATURE_PEAK = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @max16064_write_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max16064_write_word_data(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %21 [
    i32 128, label %11
    i32 129, label %16
  ]

11:                                               ; preds = %4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX16064_MFR_VOUT_PEAK, align 4
  %15 = call i32 @pmbus_write_word_data(%struct.i2c_client* %12, i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %9, align 4
  br label %24

16:                                               ; preds = %4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX16064_MFR_TEMPERATURE_PEAK, align 4
  %20 = call i32 @pmbus_write_word_data(%struct.i2c_client* %17, i32 %18, i32 %19, i32 65535)
  store i32 %20, i32* %9, align 4
  br label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENODATA, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %21, %16, %11
  %25 = load i32, i32* %9, align 4
  ret i32 %25
}

declare dso_local i32 @pmbus_write_word_data(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
