; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4531.c_mcp4531_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4531.c_mcp4531_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mcp4531_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@MCP4531_WIPER_SHIFT = common dso_local global i32 0, align 4
@MCP4531_READ = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mcp4531_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4531_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mcp4531_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mcp4531_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.mcp4531_data* %16, %struct.mcp4531_data** %12, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MCP4531_WIPER_SHIFT, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %13, align 4
  %22 = load i64, i64* %11, align 8
  switch i64 %22, label %56 [
    i64 129, label %23
    i64 128, label %39
  ]

23:                                               ; preds = %5
  %24 = load %struct.mcp4531_data*, %struct.mcp4531_data** %12, align 8
  %25 = getelementptr inbounds %struct.mcp4531_data, %struct.mcp4531_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MCP4531_READ, align 4
  %28 = load i32, i32* %13, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @i2c_smbus_read_word_swapped(i32 %26, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %6, align 4
  br label %59

35:                                               ; preds = %23
  %36 = load i32, i32* %14, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %38, i32* %6, align 4
  br label %59

39:                                               ; preds = %5
  %40 = load %struct.mcp4531_data*, %struct.mcp4531_data** %12, align 8
  %41 = getelementptr inbounds %struct.mcp4531_data, %struct.mcp4531_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 1000, %44
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.mcp4531_data*, %struct.mcp4531_data** %12, align 8
  %48 = getelementptr inbounds %struct.mcp4531_data, %struct.mcp4531_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %55, i32* %6, align 4
  br label %59

56:                                               ; preds = %5
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %39, %35, %33
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.mcp4531_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
