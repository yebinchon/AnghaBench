; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-events.c_xadc_get_threshold_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-events.c_xadc_get_threshold_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i64, i32 }

@IIO_TEMP = common dso_local global i64 0, align 8
@XADC_THRESHOLD_OT_MAX = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_chan_spec*, i32)* @xadc_get_threshold_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_get_threshold_offset(%struct.iio_chan_spec* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_chan_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %7 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IIO_TEMP, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @XADC_THRESHOLD_OT_MAX, align 4
  store i32 %12, i32* %5, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %15 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %28

23:                                               ; preds = %13
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 6
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28, %11
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
