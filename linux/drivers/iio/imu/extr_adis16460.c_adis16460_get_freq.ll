; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16460.c_adis16460_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16460.c_adis16460_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adis16460 = type { i32 }

@ADIS16460_REG_DEC_RATE = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32*, i32*)* @adis16460_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16460_get_freq(%struct.iio_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.adis16460*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.adis16460* @iio_priv(%struct.iio_dev* %12)
  store %struct.adis16460* %13, %struct.adis16460** %8, align 8
  %14 = load %struct.adis16460*, %struct.adis16460** %8, align 8
  %15 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %14, i32 0, i32 0
  %16 = load i32, i32* @ADIS16460_REG_DEC_RATE, align 4
  %17 = call i32 @adis_read_reg_16(i32* %15, i32 %16, i32* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  %25 = sdiv i32 2048000, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = udiv i32 %26, 1000
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = urem i32 %29, 1000
  %31 = mul i32 %30, 1000
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %22, %20
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.adis16460* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_read_reg_16(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
