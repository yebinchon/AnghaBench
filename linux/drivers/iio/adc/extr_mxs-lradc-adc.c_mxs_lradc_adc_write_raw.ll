; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.mxs_lradc_adc = type { i32, %struct.mxs_lradc_scale** }
%struct.mxs_lradc_scale = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MXS_LRADC_DIV_DISABLED = common dso_local global i64 0, align 8
@MXS_LRADC_DIV_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @mxs_lradc_adc_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_adc_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mxs_lradc_adc*, align 8
  %13 = alloca %struct.mxs_lradc_scale*, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev* %15)
  store %struct.mxs_lradc_adc* %16, %struct.mxs_lradc_adc** %12, align 8
  %17 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %12, align 8
  %18 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %17, i32 0, i32 1
  %19 = load %struct.mxs_lradc_scale**, %struct.mxs_lradc_scale*** %18, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.mxs_lradc_scale*, %struct.mxs_lradc_scale** %19, i64 %22
  %24 = load %struct.mxs_lradc_scale*, %struct.mxs_lradc_scale** %23, align 8
  store %struct.mxs_lradc_scale* %24, %struct.mxs_lradc_scale** %13, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %26 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %6, align 4
  br label %90

31:                                               ; preds = %5
  %32 = load i64, i64* %11, align 8
  switch i64 %32, label %83 [
    i64 128, label %33
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.mxs_lradc_scale*, %struct.mxs_lradc_scale** %13, align 8
  %38 = load i64, i64* @MXS_LRADC_DIV_DISABLED, align 8
  %39 = getelementptr inbounds %struct.mxs_lradc_scale, %struct.mxs_lradc_scale* %37, i64 %38
  %40 = getelementptr inbounds %struct.mxs_lradc_scale, %struct.mxs_lradc_scale* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %36, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.mxs_lradc_scale*, %struct.mxs_lradc_scale** %13, align 8
  %46 = load i64, i64* @MXS_LRADC_DIV_DISABLED, align 8
  %47 = getelementptr inbounds %struct.mxs_lradc_scale, %struct.mxs_lradc_scale* %45, i64 %46
  %48 = getelementptr inbounds %struct.mxs_lradc_scale, %struct.mxs_lradc_scale* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %53 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %12, align 8
  %56 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %55, i32 0, i32 0
  %57 = call i32 @clear_bit(i64 %54, i32* %56)
  store i32 0, i32* %14, align 4
  br label %82

58:                                               ; preds = %43, %33
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.mxs_lradc_scale*, %struct.mxs_lradc_scale** %13, align 8
  %61 = load i64, i64* @MXS_LRADC_DIV_ENABLED, align 8
  %62 = getelementptr inbounds %struct.mxs_lradc_scale, %struct.mxs_lradc_scale* %60, i64 %61
  %63 = getelementptr inbounds %struct.mxs_lradc_scale, %struct.mxs_lradc_scale* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %59, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %58
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.mxs_lradc_scale*, %struct.mxs_lradc_scale** %13, align 8
  %69 = load i64, i64* @MXS_LRADC_DIV_ENABLED, align 8
  %70 = getelementptr inbounds %struct.mxs_lradc_scale, %struct.mxs_lradc_scale* %68, i64 %69
  %71 = getelementptr inbounds %struct.mxs_lradc_scale, %struct.mxs_lradc_scale* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %67, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %76 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %12, align 8
  %79 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %78, i32 0, i32 0
  %80 = call i32 @set_bit(i64 %77, i32* %79)
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %74, %66, %58
  br label %82

82:                                               ; preds = %81, %51
  br label %86

83:                                               ; preds = %31
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %83, %82
  %87 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %88 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %87)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %29
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
