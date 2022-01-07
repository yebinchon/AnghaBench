; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max8688.c_max8688_read_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max8688.c_max8688_read_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@MAX8688_MFR_VOUT_PEAK = common dso_local global i32 0, align 4
@MAX8688_MFR_IOUT_PEAK = common dso_local global i32 0, align 4
@MAX8688_MFR_TEMPERATURE_PEAK = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @max8688_read_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8688_read_word_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %34

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %29 [
    i32 131, label %16
    i32 133, label %20
    i32 132, label %24
    i32 128, label %28
    i32 130, label %28
    i32 129, label %28
  ]

16:                                               ; preds = %14
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = load i32, i32* @MAX8688_MFR_VOUT_PEAK, align 4
  %19 = call i32 @pmbus_read_word_data(%struct.i2c_client* %17, i32 0, i32 %18)
  store i32 %19, i32* %8, align 4
  br label %32

20:                                               ; preds = %14
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = load i32, i32* @MAX8688_MFR_IOUT_PEAK, align 4
  %23 = call i32 @pmbus_read_word_data(%struct.i2c_client* %21, i32 0, i32 %22)
  store i32 %23, i32* %8, align 4
  br label %32

24:                                               ; preds = %14
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = load i32, i32* @MAX8688_MFR_TEMPERATURE_PEAK, align 4
  %27 = call i32 @pmbus_read_word_data(%struct.i2c_client* %25, i32 0, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %32

28:                                               ; preds = %14, %14, %14
  store i32 0, i32* %8, align 4
  br label %32

29:                                               ; preds = %14
  %30 = load i32, i32* @ENODATA, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %28, %24, %20, %16
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @pmbus_read_word_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
