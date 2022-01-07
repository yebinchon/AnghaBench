; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_get_filter_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_get_filter_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.adis16480 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@ad16480_filter_data = common dso_local global i32** null, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @adis16480_get_filter_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_get_filter_freq(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.adis16480*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = call %struct.adis16480* @iio_priv(%struct.iio_dev* %14)
  store %struct.adis16480* %15, %struct.adis16480** %8, align 8
  %16 = load i32**, i32*** @ad16480_filter_data, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32*, i32** %16, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32**, i32*** @ad16480_filter_data, align 8
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32*, i32** %24, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %32, 2
  %34 = call i32 @BIT(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %36 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %35, i32 0, i32 1
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @adis_read_reg_16(i32* %36, i32 %37, i32* %12)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %4, align 4
  br label %66

43:                                               ; preds = %3
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  store i32 0, i32* %49, align 4
  br label %64

50:                                               ; preds = %43
  %51 = load %struct.adis16480*, %struct.adis16480** %8, align 8
  %52 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %10, align 4
  %58 = lshr i32 %56, %57
  %59 = and i32 %58, 3
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %50, %48
  %65 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %41
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.adis16480* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @adis_read_reg_16(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
