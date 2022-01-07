; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_da9150-gpadc.c_da9150_gpadc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_da9150-gpadc.c_da9150_gpadc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.da9150_gpadc = type { i32 }

@DA9150_GPADC_CHAN_GPIOA = common dso_local global i64 0, align 8
@DA9150_GPADC_CHAN_TJUNC_OVP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @da9150_gpadc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_gpadc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.da9150_gpadc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.da9150_gpadc* @iio_priv(%struct.iio_dev* %13)
  store %struct.da9150_gpadc* %14, %struct.da9150_gpadc** %12, align 8
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DA9150_GPADC_CHAN_GPIOA, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DA9150_GPADC_CHAN_TJUNC_OVP, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %57

29:                                               ; preds = %20
  %30 = load i64, i64* %11, align 8
  switch i64 %30, label %54 [
    i64 129, label %31
    i64 130, label %31
    i64 128, label %41
    i64 131, label %48
  ]

31:                                               ; preds = %29, %29
  %32 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %12, align 8
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @da9150_gpadc_read_processed(%struct.da9150_gpadc* %32, i64 %35, i32 %38, i32* %39)
  store i32 %40, i32* %6, align 4
  br label %57

41:                                               ; preds = %29
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @da9150_gpadc_read_scale(i64 %44, i32* %45, i32* %46)
  store i32 %47, i32* %6, align 4
  br label %57

48:                                               ; preds = %29
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @da9150_gpadc_read_offset(i64 %51, i32* %52)
  store i32 %53, i32* %6, align 4
  br label %57

54:                                               ; preds = %29
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %48, %41, %31, %26
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.da9150_gpadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @da9150_gpadc_read_processed(%struct.da9150_gpadc*, i64, i32, i32*) #1

declare dso_local i32 @da9150_gpadc_read_scale(i64, i32*, i32*) #1

declare dso_local i32 @da9150_gpadc_read_offset(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
