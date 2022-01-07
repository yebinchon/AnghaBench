; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp006.c_tmp006_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp006.c_tmp006_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tmp006_data = type { i32 }

@IIO_VOLTAGE = common dso_local global i32 0, align 4
@TMP006_VOBJECT = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i32 0, align 4
@TMP006_TAMBIENT = common dso_local global i32 0, align 4
@TMP006_TAMBIENT_SHIFT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@TMP006_CONFIG_CR_MASK = common dso_local global i32 0, align 4
@TMP006_CONFIG_CR_SHIFT = common dso_local global i32 0, align 4
@tmp006_freqs = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @tmp006_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp006_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tmp006_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.tmp006_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.tmp006_data* %16, %struct.tmp006_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %107 [
    i64 130, label %18
    i64 128, label %60
    i64 129, label %82
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IIO_VOLTAGE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.tmp006_data*, %struct.tmp006_data** %12, align 8
  %26 = load i32, i32* @TMP006_VOBJECT, align 4
  %27 = call i32 @tmp006_read_measurement(%struct.tmp006_data* %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %111

32:                                               ; preds = %24
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @sign_extend32(i32 %33, i32 15)
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  br label %58

36:                                               ; preds = %18
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IIO_TEMP, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.tmp006_data*, %struct.tmp006_data** %12, align 8
  %44 = load i32, i32* @TMP006_TAMBIENT, align 4
  %45 = call i32 @tmp006_read_measurement(%struct.tmp006_data* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %111

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @sign_extend32(i32 %51, i32 15)
  %53 = load i32, i32* @TMP006_TAMBIENT_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  br label %57

56:                                               ; preds = %36
  br label %108

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %59, i32* %6, align 4
  br label %111

60:                                               ; preds = %5
  %61 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %62 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IIO_VOLTAGE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32*, i32** %9, align 8
  store i32 0, i32* %67, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 156250, i32* %68, align 4
  br label %80

69:                                               ; preds = %60
  %70 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %71 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IIO_TEMP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32*, i32** %9, align 8
  store i32 31, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 250000, i32* %77, align 4
  br label %79

78:                                               ; preds = %69
  br label %108

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %66
  %81 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %81, i32* %6, align 4
  br label %111

82:                                               ; preds = %5
  %83 = load %struct.tmp006_data*, %struct.tmp006_data** %12, align 8
  %84 = getelementptr inbounds %struct.tmp006_data, %struct.tmp006_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @TMP006_CONFIG_CR_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @TMP006_CONFIG_CR_SHIFT, align 4
  %89 = ashr i32 %87, %88
  store i32 %89, i32* %14, align 4
  %90 = load i32**, i32*** @tmp006_freqs, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32**, i32*** @tmp006_freqs, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %10, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %106, i32* %6, align 4
  br label %111

107:                                              ; preds = %5
  br label %108

108:                                              ; preds = %107, %78, %56
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %108, %82, %80, %58, %48, %30
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.tmp006_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @tmp006_read_measurement(%struct.tmp006_data*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
