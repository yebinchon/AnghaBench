; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_write_in_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_write_in_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7411_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @adt7411_write_in_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_write_in_chan(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.adt7411_data*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.adt7411_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.adt7411_data* %14, %struct.adt7411_data** %9, align 8
  %15 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %16 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %15, i32 0, i32 2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %19 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @adt7411_update_vref(%struct.device* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %55

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %29 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 255, %30
  %32 = sdiv i32 %31, 256
  %33 = call i64 @clamp_val(i64 %27, i32 0, i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = mul nsw i64 %34, 256
  %36 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %37 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @DIV_ROUND_CLOSEST(i64 %35, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %47 [
    i32 128, label %41
    i32 129, label %44
  ]

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @ADT7411_REG_IN_LOW(i32 %42)
  store i32 %43, i32* %12, align 4
  br label %50

44:                                               ; preds = %26
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ADT7411_REG_IN_HIGH(i32 %45)
  store i32 %46, i32* %12, align 4
  br label %50

47:                                               ; preds = %26
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %55

50:                                               ; preds = %44, %41
  %51 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %51, i32 %52, i64 %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %50, %47, %25
  %56 = load %struct.adt7411_data*, %struct.adt7411_data** %9, align 8
  %57 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local %struct.adt7411_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7411_update_vref(%struct.device*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @ADT7411_REG_IN_LOW(i32) #1

declare dso_local i32 @ADT7411_REG_IN_HIGH(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
