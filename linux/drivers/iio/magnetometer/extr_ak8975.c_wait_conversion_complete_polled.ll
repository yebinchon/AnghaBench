; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_wait_conversion_complete_polled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_wait_conversion_complete_polled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8975_data = type { %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32* }
%struct.i2c_client = type { i32 }

@AK8975_MAX_CONVERSION_TIMEOUT = common dso_local global i64 0, align 8
@AK8975_CONVERSION_DONE_POLL_TIME = common dso_local global i64 0, align 8
@ST1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Error in reading ST1\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Conversion timeout happened\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8975_data*)* @wait_conversion_complete_polled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_conversion_complete_polled(%struct.ak8975_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ak8975_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ak8975_data* %0, %struct.ak8975_data** %3, align 8
  %8 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %9 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %8, i32 0, i32 1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load i64, i64* @AK8975_MAX_CONVERSION_TIMEOUT, align 8
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %12
  %16 = load i64, i64* @AK8975_CONVERSION_DONE_POLL_TIME, align 8
  %17 = call i32 @msleep(i64 %16)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.ak8975_data*, %struct.ak8975_data** %3, align 8
  %20 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @ST1, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %18, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %15
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %15
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %44

40:                                               ; preds = %35
  %41 = load i64, i64* @AK8975_CONVERSION_DONE_POLL_TIME, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %12

44:                                               ; preds = %39, %12
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %47, %30
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
