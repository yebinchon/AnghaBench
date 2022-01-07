; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.pm8xxx_xoadc = type { i32, i32* }
%struct.pm8xxx_chan_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"no such channel %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VADC_CALIB_ABSOLUTE = common dso_local global i64 0, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @pm8xxx_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pm8xxx_xoadc*, align 8
  %13 = alloca %struct.pm8xxx_chan_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.pm8xxx_xoadc* @iio_priv(%struct.iio_dev* %16)
  store %struct.pm8xxx_xoadc* %17, %struct.pm8xxx_xoadc** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %108 [
    i64 129, label %19
    i64 128, label %77
  ]

19:                                               ; preds = %5
  %20 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %12, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.pm8xxx_chan_info* @pm8xxx_get_channel(%struct.pm8xxx_xoadc* %20, i32 %23)
  store %struct.pm8xxx_chan_info* %24, %struct.pm8xxx_chan_info** %13, align 8
  %25 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %13, align 8
  %26 = icmp ne %struct.pm8xxx_chan_info* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %19
  %28 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %12, align 8
  %29 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %111

37:                                               ; preds = %19
  %38 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %12, align 8
  %39 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %13, align 8
  %40 = call i32 @pm8xxx_read_channel(%struct.pm8xxx_xoadc* %38, %struct.pm8xxx_chan_info* %39, i64* %14)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %6, align 4
  br label %111

45:                                               ; preds = %37
  %46 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %13, align 8
  %47 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %12, align 8
  %52 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %13, align 8
  %55 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %13, align 8
  %59 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %13, align 8
  %63 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VADC_CALIB_ABSOLUTE, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %14, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @qcom_vadc_scale(i32 %50, i32* %57, i32* %61, i32 %67, i64 %68, i32* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %45
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %6, align 4
  br label %111

75:                                               ; preds = %45
  %76 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %76, i32* %6, align 4
  br label %111

77:                                               ; preds = %5
  %78 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %12, align 8
  %79 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %80 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.pm8xxx_chan_info* @pm8xxx_get_channel(%struct.pm8xxx_xoadc* %78, i32 %81)
  store %struct.pm8xxx_chan_info* %82, %struct.pm8xxx_chan_info** %13, align 8
  %83 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %13, align 8
  %84 = icmp ne %struct.pm8xxx_chan_info* %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %77
  %86 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %12, align 8
  %87 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %90 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %111

95:                                               ; preds = %77
  %96 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %12, align 8
  %97 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %13, align 8
  %98 = call i32 @pm8xxx_read_channel(%struct.pm8xxx_xoadc* %96, %struct.pm8xxx_chan_info* %97, i64* %14)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %111

103:                                              ; preds = %95
  %104 = load i64, i64* %14, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %107, i32* %6, align 4
  br label %111

108:                                              ; preds = %5
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %108, %103, %101, %85, %75, %73, %43, %27
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.pm8xxx_xoadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.pm8xxx_chan_info* @pm8xxx_get_channel(%struct.pm8xxx_xoadc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pm8xxx_read_channel(%struct.pm8xxx_xoadc*, %struct.pm8xxx_chan_info*, i64*) #1

declare dso_local i32 @qcom_vadc_scale(i32, i32*, i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
