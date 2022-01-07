; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp320x.c_mcp320x_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp320x.c_mcp320x_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.mcp320x = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mcp320x_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp320x_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mcp320x*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.mcp320x* @iio_priv(%struct.iio_dev* %14)
  store %struct.mcp320x* %15, %struct.mcp320x** %11, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.mcp320x*, %struct.mcp320x** %11, align 8
  %19 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.mcp320x*, %struct.mcp320x** %11, align 8
  %22 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_4__* @spi_get_device_id(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i64, i64* %10, align 8
  switch i64 %27, label %63 [
    i64 129, label %28
    i64 128, label %44
  ]

28:                                               ; preds = %5
  %29 = load %struct.mcp320x*, %struct.mcp320x** %11, align 8
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @mcp320x_adc_conversion(%struct.mcp320x* %29, i32 %32, i32 %35, i32 %36, i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %64

42:                                               ; preds = %28
  %43 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %43, i32* %12, align 4
  br label %63

44:                                               ; preds = %5
  %45 = load %struct.mcp320x*, %struct.mcp320x** %11, align 8
  %46 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @regulator_get_voltage(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %64

52:                                               ; preds = %44
  %53 = load i32, i32* %12, align 4
  %54 = sdiv i32 %53, 1000
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.mcp320x*, %struct.mcp320x** %11, align 8
  %57 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %5, %52, %42
  br label %64

64:                                               ; preds = %63, %51, %41
  %65 = load %struct.mcp320x*, %struct.mcp320x** %11, align 8
  %66 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %12, align 4
  ret i32 %68
}

declare dso_local %struct.mcp320x* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @spi_get_device_id(i32) #1

declare dso_local i32 @mcp320x_adc_conversion(%struct.mcp320x*, i32, i32, i32, i32*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
