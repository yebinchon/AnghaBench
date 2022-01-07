; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_wait_conversion_complete_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_wait_conversion_complete_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8975_data = type { %struct.TYPE_2__*, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32* }
%struct.i2c_client = type { i32 }

@AK8975_MAX_CONVERSION_TIMEOUT = common dso_local global i64 0, align 8
@AK8975_CONVERSION_DONE_POLL_TIME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Conversion timeout happened\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ST1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Error in reading ST1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8975_data*)* @wait_conversion_complete_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_conversion_complete_gpio(%struct.ak8975_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ak8975_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ak8975_data* %0, %struct.ak8975_data** %3, align 8
  %7 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %8 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %7, i32 0, i32 2
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load i64, i64* @AK8975_MAX_CONVERSION_TIMEOUT, align 8
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i64, i64* @AK8975_CONVERSION_DONE_POLL_TIME, align 8
  %16 = call i32 @msleep(i64 %15)
  %17 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %18 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @gpio_get_value(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  %24 = load i64, i64* @AK8975_CONVERSION_DONE_POLL_TIME, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub nsw i64 %25, %24
  store i64 %26, i64* %5, align 8
  br label %11

27:                                               ; preds = %22, %11
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %55

36:                                               ; preds = %27
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %39 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @ST1, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %36
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %30
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @msleep(i64) #1

declare dso_local i64 @gpio_get_value(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
