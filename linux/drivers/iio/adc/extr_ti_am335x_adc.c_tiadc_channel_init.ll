; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_channel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_channel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.iio_chan_spec* }
%struct.iio_chan_spec = type { i32, i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i8, i32, i32 }
%struct.tiadc_device = type { i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_RAW = common dso_local global i32 0, align 4
@chan_name_ain = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @tiadc_channel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiadc_channel_init(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tiadc_device*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.tiadc_device* @iio_priv(%struct.iio_dev* %10)
  store %struct.tiadc_device* %11, %struct.tiadc_device** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.iio_chan_spec* @kcalloc(i32 %15, i32 48, i32 %16)
  store %struct.iio_chan_spec* %17, %struct.iio_chan_spec** %7, align 8
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %19 = icmp eq %struct.iio_chan_spec* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  store %struct.iio_chan_spec* %24, %struct.iio_chan_spec** %8, align 8
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %68, %23
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %25
  %30 = load i32, i32* @IIO_VOLTAGE, align 4
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.tiadc_device*, %struct.tiadc_device** %6, align 8
  %36 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %47 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** @chan_name_ain, align 8
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %58 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %60 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8 117, i8* %61, align 4
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %63 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 12, i32* %64, align 4
  %65 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %66 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 16, i32* %67, align 4
  br label %68

68:                                               ; preds = %29
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %72 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %71, i32 1
  store %struct.iio_chan_spec* %72, %struct.iio_chan_spec** %8, align 8
  br label %25

73:                                               ; preds = %25
  %74 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %75 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 1
  store %struct.iio_chan_spec* %74, %struct.iio_chan_spec** %76, align 8
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %20
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.tiadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_chan_spec* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
