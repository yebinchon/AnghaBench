; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mcp3422 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@mcp3422_scales = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@mcp3422_sample_rates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mcp3422_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3422_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mcp3422*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.mcp3422* @iio_priv(%struct.iio_dev* %16)
  store %struct.mcp3422* %17, %struct.mcp3422** %12, align 8
  %18 = load %struct.mcp3422*, %struct.mcp3422** %12, align 8
  %19 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @MCP3422_SAMPLE_RATE(i32 %20)
  store i64 %21, i64* %14, align 8
  %22 = load %struct.mcp3422*, %struct.mcp3422** %12, align 8
  %23 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @MCP3422_PGA(i32 %24)
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %11, align 8
  switch i64 %26, label %60 [
    i64 130, label %27
    i64 128, label %39
    i64 129, label %50
  ]

27:                                               ; preds = %5
  %28 = load %struct.mcp3422*, %struct.mcp3422** %12, align 8
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @mcp3422_read_channel(%struct.mcp3422* %28, %struct.iio_chan_spec* %29, i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %64

37:                                               ; preds = %27
  %38 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %38, i32* %6, align 4
  br label %64

39:                                               ; preds = %5
  %40 = load i32*, i32** %9, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32**, i32*** @mcp3422_scales, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %49, i32* %6, align 4
  br label %64

50:                                               ; preds = %5
  %51 = load i32*, i32** @mcp3422_sample_rates, align 8
  %52 = load %struct.mcp3422*, %struct.mcp3422** %12, align 8
  %53 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @MCP3422_SAMPLE_RATE(i32 %54)
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %59, i32* %6, align 4
  br label %64

60:                                               ; preds = %5
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %50, %39, %37, %34
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.mcp3422* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @MCP3422_SAMPLE_RATE(i32) #1

declare dso_local i64 @MCP3422_PGA(i32) #1

declare dso_local i32 @mcp3422_read_channel(%struct.mcp3422*, %struct.iio_chan_spec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
