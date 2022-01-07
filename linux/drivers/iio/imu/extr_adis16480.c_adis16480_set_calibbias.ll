; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_set_calibbias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_set_calibbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.adis16480 = type { i32 }

@adis16480_calibbias_regs = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @adis16480_set_calibbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_set_calibbias(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adis16480*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** @adis16480_calibbias_regs, align 8
  %11 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %12 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call %struct.adis16480* @iio_priv(%struct.iio_dev* %16)
  store %struct.adis16480* %17, %struct.adis16480** %9, align 8
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %42 [
    i32 129, label %21
    i32 128, label %21
    i32 130, label %36
    i32 131, label %36
  ]

21:                                               ; preds = %3, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, -32768
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 32768
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %46

30:                                               ; preds = %24
  %31 = load %struct.adis16480*, %struct.adis16480** %9, align 8
  %32 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %31, i32 0, i32 0
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @adis_write_reg_16(i32* %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %46

36:                                               ; preds = %3, %3
  %37 = load %struct.adis16480*, %struct.adis16480** %9, align 8
  %38 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %37, i32 0, i32 0
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @adis_write_reg_32(i32* %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %36, %30, %27
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.adis16480* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_write_reg_16(i32*, i32, i32) #1

declare dso_local i32 @adis_write_reg_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
