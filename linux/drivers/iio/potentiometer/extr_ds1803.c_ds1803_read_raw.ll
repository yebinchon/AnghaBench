; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_ds1803.c_ds1803_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_ds1803.c_ds1803_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ds1803_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ds1803_channels = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@DS1803_MAX_POS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ds1803_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1803_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ds1803_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.ds1803_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.ds1803_data* %19, %struct.ds1803_data** %12, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @ds1803_channels, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = load i64, i64* %11, align 8
  switch i64 %28, label %59 [
    i64 129, label %29
    i64 128, label %48
  ]

29:                                               ; preds = %5
  %30 = load %struct.ds1803_data*, %struct.ds1803_data** %12, align 8
  %31 = getelementptr inbounds %struct.ds1803_data, %struct.ds1803_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @i2c_master_recv(i32 %32, i32* %27, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %62

41:                                               ; preds = %29
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %27, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %62

48:                                               ; preds = %5
  %49 = load %struct.ds1803_data*, %struct.ds1803_data** %12, align 8
  %50 = getelementptr inbounds %struct.ds1803_data, %struct.ds1803_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 1000, %53
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @DS1803_MAX_POS, align 4
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %58, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %62

59:                                               ; preds = %5
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %62

62:                                               ; preds = %59, %48, %41, %39
  %63 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.ds1803_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
