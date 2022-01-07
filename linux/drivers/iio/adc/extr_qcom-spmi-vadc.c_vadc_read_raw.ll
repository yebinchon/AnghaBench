; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.vadc_priv = type { %struct.vadc_channel_prop*, i32* }
%struct.vadc_channel_prop = type { i64, i64, i32 }

@vadc_prescale_ratios = common dso_local global i32* null, align 8
@VADC_CALIB_ABSOLUTE = common dso_local global i64 0, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @vadc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vadc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vadc_priv*, align 8
  %13 = alloca %struct.vadc_channel_prop*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.vadc_priv* @iio_priv(%struct.iio_dev* %16)
  store %struct.vadc_priv* %17, %struct.vadc_priv** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %82 [
    i64 129, label %19
    i64 128, label %63
  ]

19:                                               ; preds = %5
  %20 = load %struct.vadc_priv*, %struct.vadc_priv** %12, align 8
  %21 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %20, i32 0, i32 0
  %22 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %21, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %22, i64 %25
  store %struct.vadc_channel_prop* %26, %struct.vadc_channel_prop** %13, align 8
  %27 = load %struct.vadc_priv*, %struct.vadc_priv** %12, align 8
  %28 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %13, align 8
  %29 = call i32 @vadc_do_conversion(%struct.vadc_priv* %27, %struct.vadc_channel_prop* %28, i64* %14)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %85

33:                                               ; preds = %19
  %34 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %13, align 8
  %35 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vadc_priv*, %struct.vadc_priv** %12, align 8
  %38 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %13, align 8
  %41 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32*, i32** @vadc_prescale_ratios, align 8
  %45 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %13, align 8
  %46 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %13, align 8
  %50 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VADC_CALIB_ABSOLUTE, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %14, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @qcom_vadc_scale(i32 %36, i32* %43, i32* %48, i32 %54, i64 %55, i32* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %33
  br label %85

61:                                               ; preds = %33
  %62 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %62, i32* %6, align 4
  br label %87

63:                                               ; preds = %5
  %64 = load %struct.vadc_priv*, %struct.vadc_priv** %12, align 8
  %65 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %64, i32 0, i32 0
  %66 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %65, align 8
  %67 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %68 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.vadc_channel_prop, %struct.vadc_channel_prop* %66, i64 %69
  store %struct.vadc_channel_prop* %70, %struct.vadc_channel_prop** %13, align 8
  %71 = load %struct.vadc_priv*, %struct.vadc_priv** %12, align 8
  %72 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %13, align 8
  %73 = call i32 @vadc_do_conversion(%struct.vadc_priv* %71, %struct.vadc_channel_prop* %72, i64* %14)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %85

77:                                               ; preds = %63
  %78 = load i64, i64* %14, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %81, i32* %6, align 4
  br label %87

82:                                               ; preds = %5
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %82, %76, %60, %32
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %77, %61
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.vadc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @vadc_do_conversion(%struct.vadc_priv*, %struct.vadc_channel_prop*, i64*) #1

declare dso_local i32 @qcom_vadc_scale(i32, i32*, i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
