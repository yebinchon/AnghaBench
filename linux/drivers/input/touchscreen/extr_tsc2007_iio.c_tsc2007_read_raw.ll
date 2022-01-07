; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_iio.c_tsc2007_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_iio.c_tsc2007_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tsc2007_iio = type { %struct.tsc2007* }
%struct.tsc2007 = type { i32 }
%struct.ts_event = type { i8*, i8*, i8* }

@tsc2007_iio_channel = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_RAW = common dso_local global i64 0, align 8
@READ_X = common dso_local global i32 0, align 4
@READ_Y = common dso_local global i32 0, align 4
@READ_Z1 = common dso_local global i32 0, align 4
@READ_Z2 = common dso_local global i32 0, align 4
@ADC_ON_12BIT = common dso_local global i32 0, align 4
@TSC2007_MEASURE_AUX = common dso_local global i32 0, align 4
@TSC2007_MEASURE_TEMP0 = common dso_local global i32 0, align 4
@TSC2007_MEASURE_TEMP1 = common dso_local global i32 0, align 4
@PWRDOWN = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @tsc2007_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc2007_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tsc2007_iio*, align 8
  %13 = alloca %struct.tsc2007*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ts_event, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.tsc2007_iio* @iio_priv(%struct.iio_dev* %17)
  store %struct.tsc2007_iio* %18, %struct.tsc2007_iio** %12, align 8
  %19 = load %struct.tsc2007_iio*, %struct.tsc2007_iio** %12, align 8
  %20 = getelementptr inbounds %struct.tsc2007_iio, %struct.tsc2007_iio* %19, i32 0, i32 0
  %21 = load %struct.tsc2007*, %struct.tsc2007** %20, align 8
  store %struct.tsc2007* %21, %struct.tsc2007** %13, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @tsc2007_iio_channel, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %123

32:                                               ; preds = %5
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @IIO_CHAN_INFO_RAW, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %123

39:                                               ; preds = %32
  %40 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %41 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %114 [
    i32 0, label %46
    i32 1, label %52
    i32 2, label %58
    i32 3, label %64
    i32 4, label %70
    i32 5, label %78
    i32 6, label %94
    i32 7, label %98
    i32 8, label %106
  ]

46:                                               ; preds = %39
  %47 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %48 = load i32, i32* @READ_X, align 4
  %49 = call i8* @tsc2007_xfer(%struct.tsc2007* %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %114

52:                                               ; preds = %39
  %53 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %54 = load i32, i32* @READ_Y, align 4
  %55 = call i8* @tsc2007_xfer(%struct.tsc2007* %53, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %114

58:                                               ; preds = %39
  %59 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %60 = load i32, i32* @READ_Z1, align 4
  %61 = call i8* @tsc2007_xfer(%struct.tsc2007* %59, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  br label %114

64:                                               ; preds = %39
  %65 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %66 = load i32, i32* @READ_Z2, align 4
  %67 = call i8* @tsc2007_xfer(%struct.tsc2007* %65, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %114

70:                                               ; preds = %39
  %71 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %72 = load i32, i32* @ADC_ON_12BIT, align 4
  %73 = load i32, i32* @TSC2007_MEASURE_AUX, align 4
  %74 = or i32 %72, %73
  %75 = call i8* @tsc2007_xfer(%struct.tsc2007* %71, i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  br label %114

78:                                               ; preds = %39
  %79 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %80 = load i32, i32* @READ_X, align 4
  %81 = call i8* @tsc2007_xfer(%struct.tsc2007* %79, i32 %80)
  %82 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %16, i32 0, i32 2
  store i8* %81, i8** %82, align 8
  %83 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %84 = load i32, i32* @READ_Z1, align 4
  %85 = call i8* @tsc2007_xfer(%struct.tsc2007* %83, i32 %84)
  %86 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %16, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  %87 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %88 = load i32, i32* @READ_Z2, align 4
  %89 = call i8* @tsc2007_xfer(%struct.tsc2007* %87, i32 %88)
  %90 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %16, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  %91 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %92 = call i32 @tsc2007_calculate_resistance(%struct.tsc2007* %91, %struct.ts_event* %16)
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  br label %114

94:                                               ; preds = %39
  %95 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %96 = call i32 @tsc2007_is_pen_down(%struct.tsc2007* %95)
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  br label %114

98:                                               ; preds = %39
  %99 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %100 = load i32, i32* @ADC_ON_12BIT, align 4
  %101 = load i32, i32* @TSC2007_MEASURE_TEMP0, align 4
  %102 = or i32 %100, %101
  %103 = call i8* @tsc2007_xfer(%struct.tsc2007* %99, i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  br label %114

106:                                              ; preds = %39
  %107 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %108 = load i32, i32* @ADC_ON_12BIT, align 4
  %109 = load i32, i32* @TSC2007_MEASURE_TEMP1, align 4
  %110 = or i32 %108, %109
  %111 = call i8* @tsc2007_xfer(%struct.tsc2007* %107, i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %39, %106, %98, %94, %78, %70, %64, %58, %52, %46
  %115 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %116 = load i32, i32* @PWRDOWN, align 4
  %117 = call i8* @tsc2007_xfer(%struct.tsc2007* %115, i32 %116)
  %118 = load %struct.tsc2007*, %struct.tsc2007** %13, align 8
  %119 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %114, %36, %29
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.tsc2007_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @tsc2007_xfer(%struct.tsc2007*, i32) #1

declare dso_local i32 @tsc2007_calculate_resistance(%struct.tsc2007*, %struct.ts_event*) #1

declare dso_local i32 @tsc2007_is_pen_down(%struct.tsc2007*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
