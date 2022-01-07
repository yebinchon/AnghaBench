; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rcar-gyroadc.c_rcar_gyroadc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rcar-gyroadc.c_rcar_gyroadc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.rcar_gyroadc = type { i64, i32, i32, %struct.regulator** }
%struct.regulator = type { i32 }

@RCAR_GYROADC_MODE_SELECT_1_MB88101A = common dso_local global i64 0, align 8
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@RCAR_GYROADC_SAMPLE_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @rcar_gyroadc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gyroadc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rcar_gyroadc*, align 8
  %13 = alloca %struct.regulator*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.rcar_gyroadc* @iio_priv(%struct.iio_dev* %17)
  store %struct.rcar_gyroadc* %18, %struct.rcar_gyroadc** %12, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @RCAR_GYROADC_REALTIME_DATA(i64 %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %12, align 8
  %24 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RCAR_GYROADC_MODE_SELECT_1_MB88101A, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %12, align 8
  %30 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %29, i32 0, i32 3
  %31 = load %struct.regulator**, %struct.regulator*** %30, align 8
  %32 = getelementptr inbounds %struct.regulator*, %struct.regulator** %31, i64 0
  %33 = load %struct.regulator*, %struct.regulator** %32, align 8
  store %struct.regulator* %33, %struct.regulator** %13, align 8
  br label %43

34:                                               ; preds = %5
  %35 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %12, align 8
  %36 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %35, i32 0, i32 3
  %37 = load %struct.regulator**, %struct.regulator*** %36, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.regulator*, %struct.regulator** %37, i64 %40
  %42 = load %struct.regulator*, %struct.regulator** %41, align 8
  store %struct.regulator* %42, %struct.regulator** %13, align 8
  br label %43

43:                                               ; preds = %34, %28
  %44 = load i64, i64* %11, align 8
  switch i64 %44, label %124 [
    i64 130, label %45
    i64 128, label %102
    i64 129, label %120
  ]

45:                                               ; preds = %43
  %46 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %47 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IIO_VOLTAGE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %127

54:                                               ; preds = %45
  %55 = load %struct.regulator*, %struct.regulator** %13, align 8
  %56 = icmp ne %struct.regulator* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %127

60:                                               ; preds = %54
  %61 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %62 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %6, align 4
  br label %127

67:                                               ; preds = %60
  %68 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %12, align 8
  %69 = call i32 @rcar_gyroadc_set_power(%struct.rcar_gyroadc* %68, i32 1)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %74 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %73)
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %6, align 4
  br label %127

76:                                               ; preds = %67
  %77 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %12, align 8
  %78 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %14, align 4
  %81 = add i32 %79, %80
  %82 = call i32 @readl(i32 %81)
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %12, align 8
  %85 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @BIT(i32 %86)
  %88 = sub nsw i32 %87, 1
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %88
  store i32 %91, i32* %89, align 4
  %92 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %12, align 8
  %93 = call i32 @rcar_gyroadc_set_power(%struct.rcar_gyroadc* %92, i32 0)
  store i32 %93, i32* %16, align 4
  %94 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %95 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %94)
  %96 = load i32, i32* %16, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %76
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %6, align 4
  br label %127

100:                                              ; preds = %76
  %101 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %101, i32* %6, align 4
  br label %127

102:                                              ; preds = %43
  %103 = load %struct.regulator*, %struct.regulator** %13, align 8
  %104 = icmp ne %struct.regulator* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %127

108:                                              ; preds = %102
  %109 = load %struct.regulator*, %struct.regulator** %13, align 8
  %110 = call i32 @regulator_get_voltage(%struct.regulator* %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = udiv i32 %111, 1000
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  %114 = load %struct.rcar_gyroadc*, %struct.rcar_gyroadc** %12, align 8
  %115 = getelementptr inbounds %struct.rcar_gyroadc, %struct.rcar_gyroadc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 1, %116
  %118 = load i32*, i32** %10, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %119, i32* %6, align 4
  br label %127

120:                                              ; preds = %43
  %121 = load i32, i32* @RCAR_GYROADC_SAMPLE_RATE, align 4
  %122 = load i32*, i32** %9, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %123, i32* %6, align 4
  br label %127

124:                                              ; preds = %43
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %124, %120, %108, %105, %100, %98, %72, %65, %57, %51
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local %struct.rcar_gyroadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @RCAR_GYROADC_REALTIME_DATA(i64) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @rcar_gyroadc_set_power(%struct.rcar_gyroadc*, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
