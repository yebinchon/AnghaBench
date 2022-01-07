; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_who_i_am.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_who_i_am.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@AK09912_REG_WIA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error reading WIA\0A\00", align 1
@AK8975_DEVICE_ID = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@AK09911_DEVICE_ID = common dso_local global i64 0, align 8
@AK09912_DEVICE_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Type %d unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @ak8975_who_i_am to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8975_who_i_am(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i64], align 16
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load i32, i32* @AK09912_REG_WIA1, align 4
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %11 = call i32 @i2c_smbus_read_i2c_block_data_or_emulated(%struct.i2c_client* %8, i32 %9, i32 2, i64* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %21 = load i64, i64* %20, align 16
  %22 = load i64, i64* @AK8975_DEVICE_ID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %44 [
    i32 128, label %29
    i32 129, label %29
    i32 131, label %30
    i32 130, label %37
  ]

29:                                               ; preds = %27, %27
  store i32 0, i32* %3, align 4
  br label %52

30:                                               ; preds = %27
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AK09911_DEVICE_ID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %52

36:                                               ; preds = %30
  br label %49

37:                                               ; preds = %27
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AK09912_DEVICE_ID, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %52

43:                                               ; preds = %37
  br label %49

44:                                               ; preds = %27
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %43, %36
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %42, %35, %29, %24, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @i2c_smbus_read_i2c_block_data_or_emulated(%struct.i2c_client*, i32, i32, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
