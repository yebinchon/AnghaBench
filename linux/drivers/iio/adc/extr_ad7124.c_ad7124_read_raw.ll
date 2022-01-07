; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ad7124_state = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7124_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7124_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7124_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad7124_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad7124_state* %16, %struct.ad7124_state** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %137 [
    i64 130, label %18
    i64 128, label %52
    i64 131, label %101
    i64 129, label %125
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @ad_sigma_delta_single_conversion(%struct.iio_dev* %19, %struct.iio_chan_spec* %20, i32* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %6, align 4
  br label %140

27:                                               ; preds = %18
  %28 = load %struct.ad7124_state*, %struct.ad7124_state** %12, align 8
  %29 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %28, i32 0, i32 1
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @AD7124_CHANNEL(i64 %32)
  %34 = load %struct.ad7124_state*, %struct.ad7124_state** %12, align 8
  %35 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @AD7124_CHANNEL_EN(i32 0)
  %44 = or i32 %42, %43
  %45 = call i32 @ad_sd_write_reg(i32* %29, i32 %33, i32 2, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %6, align 4
  br label %140

50:                                               ; preds = %27
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %6, align 4
  br label %140

52:                                               ; preds = %5
  %53 = load %struct.ad7124_state*, %struct.ad7124_state** %12, align 8
  %54 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %13, align 4
  %62 = load %struct.ad7124_state*, %struct.ad7124_state** %12, align 8
  %63 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %66 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.ad7124_state*, %struct.ad7124_state** %12, align 8
  %73 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %76 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %52
  %83 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %84 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32*, i32** %10, align 8
  store i32 %89, i32* %90, align 4
  br label %99

91:                                               ; preds = %52
  %92 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %93 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %82
  %100 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %100, i32* %6, align 4
  br label %140

101:                                              ; preds = %5
  %102 = load %struct.ad7124_state*, %struct.ad7124_state** %12, align 8
  %103 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %106 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %101
  %113 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %114 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = shl i32 1, %117
  %119 = sub nsw i32 0, %118
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  br label %123

121:                                              ; preds = %101
  %122 = load i32*, i32** %9, align 8
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %121, %112
  %124 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %124, i32* %6, align 4
  br label %140

125:                                              ; preds = %5
  %126 = load %struct.ad7124_state*, %struct.ad7124_state** %12, align 8
  %127 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %130 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %9, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %136, i32* %6, align 4
  br label %140

137:                                              ; preds = %5
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %137, %125, %123, %99, %50, %48, %25
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local %struct.ad7124_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad_sigma_delta_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @ad_sd_write_reg(i32*, i32, i32, i32) #1

declare dso_local i32 @AD7124_CHANNEL(i64) #1

declare dso_local i32 @AD7124_CHANNEL_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
