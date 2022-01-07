; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_write_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_write_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7411_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @adt7411_write_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_write_temp(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.adt7411_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.adt7411_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.adt7411_data* %14, %struct.adt7411_data** %10, align 8
  %15 = load %struct.adt7411_data*, %struct.adt7411_data** %10, align 8
  %16 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %15, i32 0, i32 0
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @clamp_val(i64 %18, i32 -128000, i32 127000)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @DIV_ROUND_CLOSEST(i64 %20, i32 1000)
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %29 [
    i32 128, label %23
    i32 129, label %26
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ADT7411_REG_TEMP_LOW(i32 %24)
  store i32 %25, i32* %12, align 4
  br label %32

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ADT7411_REG_TEMP_HIGH(i32 %27)
  store i32 %28, i32* %12, align 4
  br label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %26, %23
  %33 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %33, i32 %34, i64 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.adt7411_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @ADT7411_REG_TEMP_LOW(i32) #1

declare dso_local i32 @ADT7411_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
