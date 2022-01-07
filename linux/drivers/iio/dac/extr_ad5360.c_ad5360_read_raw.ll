; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5360.c_ad5360_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5360.c_ad5360_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ad5360_state = type { i32 }

@AD5360_READBACK_X1A = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@AD5360_READBACK_OFFSET = common dso_local global i32 0, align 4
@AD5360_READBACK_GAIN = common dso_local global i32 0, align 4
@AD5360_READBACK_SF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad5360_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5360_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5360_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ad5360_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad5360_state* %17, %struct.ad5360_state** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %117 [
    i64 129, label %19
    i64 128, label %39
    i64 132, label %60
    i64 131, label %75
    i64 130, label %90
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = load i32, i32* @AD5360_READBACK_X1A, align 4
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ad5360_read(%struct.iio_dev* %20, i32 %21, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %6, align 4
  br label %120

30:                                               ; preds = %19
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %31, %35
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %38, i32* %6, align 4
  br label %120

39:                                               ; preds = %5
  %40 = load %struct.ad5360_state*, %struct.ad5360_state** %12, align 8
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %42 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ad5360_get_channel_vref(%struct.ad5360_state* %40, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %6, align 4
  br label %120

49:                                               ; preds = %39
  %50 = load i32, i32* %14, align 4
  %51 = mul nsw i32 %50, 4
  %52 = sdiv i32 %51, 1000
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %59, i32* %6, align 4
  br label %120

60:                                               ; preds = %5
  %61 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %62 = load i32, i32* @AD5360_READBACK_OFFSET, align 4
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %64 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ad5360_read(%struct.iio_dev* %61, i32 %62, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %6, align 4
  br label %120

71:                                               ; preds = %60
  %72 = load i32, i32* %15, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %74, i32* %6, align 4
  br label %120

75:                                               ; preds = %5
  %76 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %77 = load i32, i32* @AD5360_READBACK_GAIN, align 4
  %78 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %79 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ad5360_read(%struct.iio_dev* %76, i32 %77, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %6, align 4
  br label %120

86:                                               ; preds = %75
  %87 = load i32, i32* %15, align 4
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %89, i32* %6, align 4
  br label %120

90:                                               ; preds = %5
  %91 = load %struct.ad5360_state*, %struct.ad5360_state** %12, align 8
  %92 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %93 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ad5360_get_channel_vref_index(%struct.ad5360_state* %91, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %97 = load i32, i32* @AD5360_READBACK_SF, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @AD5360_REG_SF_OFS(i32 %98)
  %100 = call i32 @ad5360_read(%struct.iio_dev* %96, i32 %97, i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %6, align 4
  br label %120

105:                                              ; preds = %90
  %106 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %107 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 14
  %111 = load i32, i32* %15, align 4
  %112 = shl i32 %111, %110
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 0, %113
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %116, i32* %6, align 4
  br label %120

117:                                              ; preds = %5
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %117, %105, %103, %86, %84, %71, %69, %49, %47, %30, %28
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local %struct.ad5360_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad5360_read(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @ad5360_get_channel_vref(%struct.ad5360_state*, i32) #1

declare dso_local i32 @ad5360_get_channel_vref_index(%struct.ad5360_state*, i32) #1

declare dso_local i32 @AD5360_REG_SF_OFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
