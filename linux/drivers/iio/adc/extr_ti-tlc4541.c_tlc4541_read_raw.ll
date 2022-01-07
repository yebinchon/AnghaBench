; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-tlc4541.c_tlc4541_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-tlc4541.c_tlc4541_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tlc4541_state = type { i32*, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @tlc4541_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlc4541_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tlc4541_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.tlc4541_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.tlc4541_state* %15, %struct.tlc4541_state** %13, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %79 [
    i64 129, label %17
    i64 128, label %63
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %82

24:                                               ; preds = %17
  %25 = load %struct.tlc4541_state*, %struct.tlc4541_state** %13, align 8
  %26 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tlc4541_state*, %struct.tlc4541_state** %13, align 8
  %29 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %28, i32 0, i32 1
  %30 = call i32 @spi_sync(i32 %27, i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %31)
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %82

37:                                               ; preds = %24
  %38 = load %struct.tlc4541_state*, %struct.tlc4541_state** %13, align 8
  %39 = getelementptr inbounds %struct.tlc4541_state, %struct.tlc4541_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be16_to_cpu(i32 %42)
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %48 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %46, %50
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %54 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @GENMASK(i32 %57, i32 0)
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %62, i32* %6, align 4
  br label %82

63:                                               ; preds = %5
  %64 = load %struct.tlc4541_state*, %struct.tlc4541_state** %13, align 8
  %65 = call i32 @tlc4541_get_range(%struct.tlc4541_state* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %6, align 4
  br label %82

70:                                               ; preds = %63
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %74 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %78, i32* %6, align 4
  br label %82

79:                                               ; preds = %5
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %70, %68, %37, %35, %22
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.tlc4541_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @tlc4541_get_range(%struct.tlc4541_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
