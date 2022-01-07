; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hdc100x.c_hdc100x_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hdc100x.c_hdc100x_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.hdc100x_data = type { i32*, i32 }

@IIO_CURRENT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @hdc100x_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdc100x_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hdc100x_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.hdc100x_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.hdc100x_data* %15, %struct.hdc100x_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %89 [
    i64 129, label %17
    i64 131, label %59
    i64 128, label %71
    i64 130, label %85
  ]

17:                                               ; preds = %5
  %18 = load %struct.hdc100x_data*, %struct.hdc100x_data** %12, align 8
  %19 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IIO_CURRENT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.hdc100x_data*, %struct.hdc100x_data** %12, align 8
  %28 = call i32 @hdc100x_get_heater_status(%struct.hdc100x_data* %27)
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %30, i32* %13, align 4
  br label %54

31:                                               ; preds = %17
  %32 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %33 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.hdc100x_data*, %struct.hdc100x_data** %12, align 8
  %38 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %92

41:                                               ; preds = %31
  %42 = load %struct.hdc100x_data*, %struct.hdc100x_data** %12, align 8
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = call i32 @hdc100x_get_measurement(%struct.hdc100x_data* %42, %struct.iio_chan_spec* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %46 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %49, %41
  br label %54

54:                                               ; preds = %53, %26
  %55 = load %struct.hdc100x_data*, %struct.hdc100x_data** %12, align 8
  %56 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %6, align 4
  br label %92

59:                                               ; preds = %5
  %60 = load i32*, i32** %9, align 8
  store i32 0, i32* %60, align 4
  %61 = load %struct.hdc100x_data*, %struct.hdc100x_data** %12, align 8
  %62 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %65 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %70, i32* %6, align 4
  br label %92

71:                                               ; preds = %5
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %73 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IIO_TEMP, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32*, i32** %9, align 8
  store i32 165000, i32* %78, align 4
  %79 = load i32*, i32** %10, align 8
  store i32 65536, i32* %79, align 4
  %80 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %80, i32* %6, align 4
  br label %92

81:                                               ; preds = %71
  %82 = load i32*, i32** %9, align 8
  store i32 100, i32* %82, align 4
  %83 = load i32*, i32** %10, align 8
  store i32 65536, i32* %83, align 4
  %84 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %84, i32* %6, align 4
  br label %92

85:                                               ; preds = %5
  %86 = load i32*, i32** %9, align 8
  store i32 -15887, i32* %86, align 4
  %87 = load i32*, i32** %10, align 8
  store i32 515151, i32* %87, align 4
  %88 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %88, i32* %6, align 4
  br label %92

89:                                               ; preds = %5
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %85, %81, %77, %59, %54, %36
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.hdc100x_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdc100x_get_heater_status(%struct.hdc100x_data*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hdc100x_get_measurement(%struct.hdc100x_data*, %struct.iio_chan_spec*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
