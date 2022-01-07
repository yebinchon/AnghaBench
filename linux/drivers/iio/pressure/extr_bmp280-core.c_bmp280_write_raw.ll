; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bmp280_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @bmp280_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bmp280_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.bmp280_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.bmp280_data* %15, %struct.bmp280_data** %13, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %55 [
    i64 131, label %17
  ]

17:                                               ; preds = %5
  %18 = load %struct.bmp280_data*, %struct.bmp280_data** %13, align 8
  %19 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_get_sync(i32 %20)
  %22 = load %struct.bmp280_data*, %struct.bmp280_data** %13, align 8
  %23 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %40 [
    i32 130, label %28
    i32 129, label %32
    i32 128, label %36
  ]

28:                                               ; preds = %17
  %29 = load %struct.bmp280_data*, %struct.bmp280_data** %13, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @bmp280_write_oversampling_ratio_humid(%struct.bmp280_data* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  br label %43

32:                                               ; preds = %17
  %33 = load %struct.bmp280_data*, %struct.bmp280_data** %13, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @bmp280_write_oversampling_ratio_press(%struct.bmp280_data* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  br label %43

36:                                               ; preds = %17
  %37 = load %struct.bmp280_data*, %struct.bmp280_data** %13, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @bmp280_write_oversampling_ratio_temp(%struct.bmp280_data* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  br label %43

40:                                               ; preds = %17
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %40, %36, %32, %28
  %44 = load %struct.bmp280_data*, %struct.bmp280_data** %13, align 8
  %45 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.bmp280_data*, %struct.bmp280_data** %13, align 8
  %48 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pm_runtime_mark_last_busy(i32 %49)
  %51 = load %struct.bmp280_data*, %struct.bmp280_data** %13, align 8
  %52 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pm_runtime_put_autosuspend(i32 %53)
  br label %58

55:                                               ; preds = %5
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %60

58:                                               ; preds = %43
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.bmp280_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmp280_write_oversampling_ratio_humid(%struct.bmp280_data*, i32) #1

declare dso_local i32 @bmp280_write_oversampling_ratio_press(%struct.bmp280_data*, i32) #1

declare dso_local i32 @bmp280_write_oversampling_ratio_temp(%struct.bmp280_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
