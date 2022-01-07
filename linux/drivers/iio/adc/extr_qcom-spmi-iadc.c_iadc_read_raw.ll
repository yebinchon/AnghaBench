; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.iadc_chip = type { i32*, i32*, i32, i32, i32 }

@IADC_REF_GAIN_MICRO_VOLTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"off %d gain %d adc %d %duV I %duA\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @iadc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iadc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.iadc_chip*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.iadc_chip* @iio_priv(%struct.iio_dev* %18)
  store %struct.iadc_chip* %19, %struct.iadc_chip** %12, align 8
  %20 = load i64, i64* %11, align 8
  switch i64 %20, label %100 [
    i64 129, label %21
    i64 128, label %96
  ]

21:                                               ; preds = %5
  %22 = load %struct.iadc_chip*, %struct.iadc_chip** %12, align 8
  %23 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %22, i32 0, i32 4
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.iadc_chip*, %struct.iadc_chip** %12, align 8
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @iadc_do_conversion(%struct.iadc_chip* %25, i64 %28, i32* %15)
  store i32 %29, i32* %17, align 4
  %30 = load %struct.iadc_chip*, %struct.iadc_chip** %12, align 8
  %31 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %30, i32 0, i32 4
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %17, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %17, align 4
  store i32 %36, i32* %6, align 4
  br label %103

37:                                               ; preds = %21
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.iadc_chip*, %struct.iadc_chip** %12, align 8
  %40 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %38, %46
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @IADC_REF_GAIN_MICRO_VOLTS, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %14, align 4
  %51 = load %struct.iadc_chip*, %struct.iadc_chip** %12, align 8
  %52 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.iadc_chip*, %struct.iadc_chip** %12, align 8
  %55 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %58 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %53, %61
  %63 = load i32, i32* %14, align 4
  %64 = sdiv i32 %63, %62
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.iadc_chip*, %struct.iadc_chip** %12, align 8
  %67 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %70 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %65, %73
  store i32 %74, i32* %13, align 4
  %75 = load %struct.iadc_chip*, %struct.iadc_chip** %12, align 8
  %76 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iadc_chip*, %struct.iadc_chip** %12, align 8
  %79 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %82 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.iadc_chip*, %struct.iadc_chip** %12, align 8
  %87 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %13, align 4
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %95, i32* %6, align 4
  br label %103

96:                                               ; preds = %5
  %97 = load i32*, i32** %9, align 8
  store i32 0, i32* %97, align 4
  %98 = load i32*, i32** %10, align 8
  store i32 1000, i32* %98, align 4
  %99 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %99, i32* %6, align 4
  br label %103

100:                                              ; preds = %5
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %96, %37, %35
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.iadc_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iadc_do_conversion(%struct.iadc_chip*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
