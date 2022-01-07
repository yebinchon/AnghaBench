; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_initial_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_initial_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.adis16480 = type { i32 }

@ADIS16480_REG_GLOB_CMD = common dso_local global i32 0, align 4
@ADIS16480_REG_PROD_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"adis%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Device ID(%u) and product ID(%u) do not match.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @adis16480_initial_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_initial_setup(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.adis16480*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.adis16480* @iio_priv(%struct.iio_dev* %8)
  store %struct.adis16480* %9, %struct.adis16480** %4, align 8
  %10 = load %struct.adis16480*, %struct.adis16480** %4, align 8
  %11 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %10, i32 0, i32 0
  %12 = call i32 @adis_reset(i32* %11)
  %13 = call i32 @msleep(i32 70)
  %14 = load %struct.adis16480*, %struct.adis16480** %4, align 8
  %15 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %14, i32 0, i32 0
  %16 = load i32, i32* @ADIS16480_REG_GLOB_CMD, align 4
  %17 = call i32 @BIT(i32 1)
  %18 = call i32 @adis_write_reg_16(i32* %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %1
  %24 = call i32 @msleep(i32 30)
  %25 = load %struct.adis16480*, %struct.adis16480** %4, align 8
  %26 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %25, i32 0, i32 0
  %27 = call i32 @adis_check_status(i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %23
  %33 = load %struct.adis16480*, %struct.adis16480** %4, align 8
  %34 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %33, i32 0, i32 0
  %35 = load i32, i32* @ADIS16480_REG_PROD_ID, align 4
  %36 = call i32 @adis_read_reg_16(i32* %34, i32 %35, i32* %5)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %62

41:                                               ; preds = %32
  %42 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sscanf(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %62

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %51
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %48, %39, %30, %21
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.adis16480* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_reset(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @adis_write_reg_16(i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @adis_check_status(i32*) #1

declare dso_local i32 @adis_read_reg_16(i32*, i32, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
