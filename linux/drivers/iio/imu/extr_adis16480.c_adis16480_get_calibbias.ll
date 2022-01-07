; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_get_calibbias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_get_calibbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.adis16480 = type { i32 }

@adis16480_calibbias_regs = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @adis16480_get_calibbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_get_calibbias(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.adis16480*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** @adis16480_calibbias_regs, align 8
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %15 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call %struct.adis16480* @iio_priv(%struct.iio_dev* %19)
  store %struct.adis16480* %20, %struct.adis16480** %9, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %40 [
    i32 129, label %24
    i32 128, label %24
    i32 130, label %32
    i32 131, label %32
  ]

24:                                               ; preds = %3, %3
  %25 = load %struct.adis16480*, %struct.adis16480** %9, align 8
  %26 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @adis_read_reg_16(i32* %26, i32 %27, i32* %10)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @sign_extend32(i32 %29, i32 15)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %43

32:                                               ; preds = %3, %3
  %33 = load %struct.adis16480*, %struct.adis16480** %9, align 8
  %34 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %33, i32 0, i32 0
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @adis_read_reg_32(i32* %34, i32 %35, i32* %11)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @sign_extend32(i32 %37, i32 31)
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %40, %32, %24
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.adis16480* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_read_reg_16(i32*, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @adis_read_reg_32(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
