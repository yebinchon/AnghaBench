; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc161s626.c_ti_adc_read_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc161s626.c_ti_adc_read_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_data = type { i32, i32, i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_adc_data*, %struct.iio_chan_spec*, i32*)* @ti_adc_read_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adc_read_measurement(%struct.ti_adc_data* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_adc_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ti_adc_data* %0, %struct.ti_adc_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %12 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %43 [
    i32 2, label %14
    i32 3, label %28
  ]

14:                                               ; preds = %3
  %15 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %16 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = bitcast i32* %9 to i8*
  %19 = call i32 @spi_read(i32 %17, i8* %18, i32 2)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %60

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @be16_to_cpu(i32 %25)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %46

28:                                               ; preds = %3
  %29 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %30 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = bitcast i32* %10 to i8*
  %33 = call i32 @spi_read(i32 %31, i8* %32, i32 3)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %60

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = ashr i32 %40, 8
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %60

46:                                               ; preds = %38, %24
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %50 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %48, %51
  %53 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %54 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = call i32 @sign_extend32(i32 %52, i64 %57)
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %46, %43, %36, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @spi_read(i32, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @sign_extend32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
