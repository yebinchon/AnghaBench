; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tsl2772_chip = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@IIO_INTENSITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TSL2772_ALS_GAIN_TRIM_MIN = common dso_local global i32 0, align 4
@TSL2772_ALS_GAIN_TRIM_MAX = common dso_local global i32 0, align 4
@tsl2772_int_time_avail = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @tsl2772_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2772_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tsl2772_chip*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.tsl2772_chip* @iio_priv(%struct.iio_dev* %13)
  store %struct.tsl2772_chip* %14, %struct.tsl2772_chip** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %126 [
    i64 129, label %16
    i64 130, label %67
    i64 128, label %83
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IIO_INTENSITY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %40 [
    i32 1, label %24
    i32 8, label %28
    i32 16, label %32
    i32 120, label %36
  ]

24:                                               ; preds = %22
  %25 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %26 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %43

28:                                               ; preds = %22
  %29 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %30 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %43

32:                                               ; preds = %22
  %33 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %34 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 2, i32* %35, align 8
  br label %43

36:                                               ; preds = %22
  %37 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %38 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 3, i32* %39, align 8
  br label %43

40:                                               ; preds = %22
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %132

43:                                               ; preds = %36, %32, %28, %24
  br label %66

44:                                               ; preds = %16
  %45 = load i32, i32* %9, align 4
  switch i32 %45, label %62 [
    i32 1, label %46
    i32 2, label %50
    i32 4, label %54
    i32 8, label %58
  ]

46:                                               ; preds = %44
  %47 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %48 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %65

50:                                               ; preds = %44
  %51 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %52 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %65

54:                                               ; preds = %44
  %55 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %56 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 2, i32* %57, align 4
  br label %65

58:                                               ; preds = %44
  %59 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %60 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 3, i32* %61, align 4
  br label %65

62:                                               ; preds = %44
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %132

65:                                               ; preds = %58, %54, %50, %46
  br label %66

66:                                               ; preds = %65, %43
  br label %129

67:                                               ; preds = %5
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @TSL2772_ALS_GAIN_TRIM_MIN, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @TSL2772_ALS_GAIN_TRIM_MAX, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %132

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %81 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  br label %129

83:                                               ; preds = %5
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = load i32**, i32*** @tsl2772_int_time_avail, align 8
  %89 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %90 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32*, i32** %88, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %87, %95
  br i1 %96, label %108, label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %10, align 4
  %99 = load i32**, i32*** @tsl2772_int_time_avail, align 8
  %100 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %101 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32*, i32** %99, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %98, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %97, %86, %83
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %132

111:                                              ; preds = %97
  %112 = load i32, i32* %10, align 4
  %113 = load i32**, i32*** @tsl2772_int_time_avail, align 8
  %114 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %115 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32*, i32** %113, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %112, %120
  %122 = sub nsw i32 256, %121
  %123 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %124 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  store i32 %122, i32* %125, align 4
  br label %129

126:                                              ; preds = %5
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %132

129:                                              ; preds = %111, %78, %66
  %130 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %131 = call i32 @tsl2772_invoke_change(%struct.iio_dev* %130)
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %129, %126, %108, %75, %62, %40
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local %struct.tsl2772_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @tsl2772_invoke_change(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
