; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16136.c_adis16136_initial_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16136.c_adis16136_initial_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.adis16136 = type { i32 }

@ADIS16136_REG_PROD_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"adis%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Device ID(%u) and product ID(%u) do not match.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @adis16136_initial_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16136_initial_setup(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.adis16136*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.adis16136* @iio_priv(%struct.iio_dev* %8)
  store %struct.adis16136* %9, %struct.adis16136** %4, align 8
  %10 = load %struct.adis16136*, %struct.adis16136** %4, align 8
  %11 = getelementptr inbounds %struct.adis16136, %struct.adis16136* %10, i32 0, i32 0
  %12 = call i32 @adis_initial_startup(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.adis16136*, %struct.adis16136** %4, align 8
  %19 = getelementptr inbounds %struct.adis16136, %struct.adis16136* %18, i32 0, i32 0
  %20 = load i32, i32* @ADIS16136_REG_PROD_ID, align 4
  %21 = call i32 @adis_read_reg_16(i32* %19, i32 %20, i32* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %47

26:                                               ; preds = %17
  %27 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sscanf(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %36
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %33, %24, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.adis16136* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_initial_startup(i32*) #1

declare dso_local i32 @adis_read_reg_16(i32*, i32, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
