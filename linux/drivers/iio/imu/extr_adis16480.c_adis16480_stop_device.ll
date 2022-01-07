; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_stop_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_stop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adis16480 = type { i32 }

@ADIS16480_REG_SLP_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not power down device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @adis16480_stop_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_stop_device(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.adis16480*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %6 = call %struct.adis16480* @iio_priv(%struct.iio_dev* %5)
  store %struct.adis16480* %6, %struct.adis16480** %3, align 8
  %7 = load %struct.adis16480*, %struct.adis16480** %3, align 8
  %8 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %7, i32 0, i32 0
  %9 = load i32, i32* @ADIS16480_REG_SLP_CNT, align 4
  %10 = call i32 @BIT(i32 9)
  %11 = call i32 @adis_write_reg_16(i32* %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local %struct.adis16480* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_write_reg_16(i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
