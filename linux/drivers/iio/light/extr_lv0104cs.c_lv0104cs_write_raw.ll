; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.lv0104cs_private = type { i32 }

@IIO_LIGHT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @lv0104cs_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lv0104cs_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.lv0104cs_private*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.lv0104cs_private* @iio_priv(%struct.iio_dev* %13)
  store %struct.lv0104cs_private* %14, %struct.lv0104cs_private** %12, align 8
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IIO_LIGHT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %43

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  switch i64 %24, label %40 [
    i64 130, label %25
    i64 128, label %30
    i64 129, label %35
  ]

25:                                               ; preds = %23
  %26 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @lv0104cs_set_calibscale(%struct.lv0104cs_private* %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %43

30:                                               ; preds = %23
  %31 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @lv0104cs_set_scale(%struct.lv0104cs_private* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %43

35:                                               ; preds = %23
  %36 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @lv0104cs_set_int_time(%struct.lv0104cs_private* %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %23
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %35, %30, %25, %20
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.lv0104cs_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @lv0104cs_set_calibscale(%struct.lv0104cs_private*, i32, i32) #1

declare dso_local i32 @lv0104cs_set_scale(%struct.lv0104cs_private*, i32, i32) #1

declare dso_local i32 @lv0104cs_set_int_time(%struct.lv0104cs_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
