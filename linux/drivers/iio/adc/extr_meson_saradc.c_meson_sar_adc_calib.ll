; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32* }
%struct.meson_sar_adc_priv = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CHAN7_MUX_VDD_DIV4 = common dso_local global i32 0, align 4
@MEAN_AVERAGING = common dso_local global i32 0, align 4
@EIGHT_SAMPLES = common dso_local global i32 0, align 4
@CHAN7_MUX_VDD_MUL3_DIV4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MILLION = common dso_local global i32 0, align 4
@CHAN7_MUX_CH7_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @meson_sar_adc_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_sar_adc_calib(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.meson_sar_adc_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %10 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %9)
  store %struct.meson_sar_adc_priv* %10, %struct.meson_sar_adc_priv** %3, align 8
  %11 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %3, align 8
  %12 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  %17 = sdiv i32 %16, 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %3, align 8
  %19 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = mul nsw i32 %23, 3
  %25 = sdiv i32 %24, 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %27 = load i32, i32* @CHAN7_MUX_VDD_DIV4, align 4
  %28 = call i32 @meson_sar_adc_set_chan7_mux(%struct.iio_dev* %26, i32 %27)
  %29 = call i32 @usleep_range(i32 10, i32 20)
  %30 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %31 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  %35 = load i32, i32* @MEAN_AVERAGING, align 4
  %36 = load i32, i32* @EIGHT_SAMPLES, align 4
  %37 = call i32 @meson_sar_adc_get_sample(%struct.iio_dev* %30, i32* %34, i32 %35, i32 %36, i32* %7)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %88

41:                                               ; preds = %1
  %42 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %43 = load i32, i32* @CHAN7_MUX_VDD_MUL3_DIV4, align 4
  %44 = call i32 @meson_sar_adc_set_chan7_mux(%struct.iio_dev* %42, i32 %43)
  %45 = call i32 @usleep_range(i32 10, i32 20)
  %46 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 7
  %51 = load i32, i32* @MEAN_AVERAGING, align 4
  %52 = load i32, i32* @EIGHT_SAMPLES, align 4
  %53 = call i32 @meson_sar_adc_get_sample(%struct.iio_dev* %46, i32* %50, i32 %51, i32 %52, i32* %8)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %88

57:                                               ; preds = %41
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %88

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* @MILLION, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @div_s64(i32 %69, i32 %72)
  %74 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %3, align 8
  %75 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %3, align 8
  %79 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  %82 = load i32, i32* @MILLION, align 4
  %83 = call i32 @div_s64(i32 %81, i32 %82)
  %84 = sub nsw i32 %76, %83
  %85 = sext i32 %84 to i64
  %86 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %3, align 8
  %87 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %64, %61, %56, %40
  %89 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %90 = load i32, i32* @CHAN7_MUX_CH7_INPUT, align 4
  %91 = call i32 @meson_sar_adc_set_chan7_mux(%struct.iio_dev* %89, i32 %90)
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @meson_sar_adc_set_chan7_mux(%struct.iio_dev*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @meson_sar_adc_get_sample(%struct.iio_dev*, i32*, i32, i32, i32*) #1

declare dso_local i32 @div_s64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
