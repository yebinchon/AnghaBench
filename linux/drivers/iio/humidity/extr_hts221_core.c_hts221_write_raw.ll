; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hts221_hw = type { i32 }

@HTS221_SENSOR_H = common dso_local global i32 0, align 4
@HTS221_SENSOR_T = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @hts221_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hts221_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.hts221_hw*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.hts221_hw* @iio_priv(%struct.iio_dev* %14)
  store %struct.hts221_hw* %15, %struct.hts221_hw** %12, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %53

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  switch i64 %23, label %46 [
    i64 130, label %24
    i64 131, label %28
  ]

24:                                               ; preds = %22
  %25 = load %struct.hts221_hw*, %struct.hts221_hw** %12, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @hts221_update_odr(%struct.hts221_hw* %25, i32 %26)
  store i32 %27, i32* %13, align 4
  br label %49

28:                                               ; preds = %22
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %42 [
    i32 129, label %32
    i32 128, label %37
  ]

32:                                               ; preds = %28
  %33 = load %struct.hts221_hw*, %struct.hts221_hw** %12, align 8
  %34 = load i32, i32* @HTS221_SENSOR_H, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @hts221_update_avg(%struct.hts221_hw* %33, i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  br label %45

37:                                               ; preds = %28
  %38 = load %struct.hts221_hw*, %struct.hts221_hw** %12, align 8
  %39 = load i32, i32* @HTS221_SENSOR_T, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @hts221_update_avg(%struct.hts221_hw* %38, i32 %39, i32 %40)
  store i32 %41, i32* %13, align 4
  br label %45

42:                                               ; preds = %28
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %42, %37, %32
  br label %49

46:                                               ; preds = %22
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %46, %45, %24
  %50 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %51 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %50)
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %20
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.hts221_hw* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @hts221_update_odr(%struct.hts221_hw*, i32) #1

declare dso_local i32 @hts221_update_avg(%struct.hts221_hw*, i32, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
