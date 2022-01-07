; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_get_calibscale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_get_calibscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.adis16480 = type { i32 }

@adis16480_calibscale_regs = common dso_local global i32* null, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @adis16480_get_calibscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_get_calibscale(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.adis16480*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** @adis16480_calibscale_regs, align 8
  %13 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %14 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %19 = call %struct.adis16480* @iio_priv(%struct.iio_dev* %18)
  store %struct.adis16480* %19, %struct.adis16480** %9, align 8
  %20 = load %struct.adis16480*, %struct.adis16480** %9, align 8
  %21 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %20, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @adis_read_reg_16(i32* %21, i32 %22, i32* %10)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @sign_extend32(i32 %29, i32 15)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.adis16480* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_read_reg_16(i32*, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
