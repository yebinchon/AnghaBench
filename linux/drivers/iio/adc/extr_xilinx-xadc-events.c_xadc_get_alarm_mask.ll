; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-events.c_xadc_get_alarm_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-events.c_xadc_get_alarm_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i64, i32 }

@IIO_TEMP = common dso_local global i64 0, align 8
@XADC_ALARM_OT_MASK = common dso_local global i32 0, align 4
@XADC_ALARM_VCCINT_MASK = common dso_local global i32 0, align 4
@XADC_ALARM_VCCAUX_MASK = common dso_local global i32 0, align 4
@XADC_ALARM_VCCBRAM_MASK = common dso_local global i32 0, align 4
@XADC_ALARM_VCCPINT_MASK = common dso_local global i32 0, align 4
@XADC_ALARM_VCCPAUX_MASK = common dso_local global i32 0, align 4
@XADC_ALARM_VCCODDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_chan_spec*)* @xadc_get_alarm_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_get_alarm_mask(%struct.iio_chan_spec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_chan_spec*, align 8
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %3, align 8
  %4 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %5 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IIO_TEMP, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @XADC_ALARM_OT_MASK, align 4
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %27 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %19
    i32 3, label %21
    i32 4, label %23
    i32 5, label %25
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* @XADC_ALARM_VCCINT_MASK, align 4
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %11
  %18 = load i32, i32* @XADC_ALARM_VCCAUX_MASK, align 4
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %11
  %20 = load i32, i32* @XADC_ALARM_VCCBRAM_MASK, align 4
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %11
  %22 = load i32, i32* @XADC_ALARM_VCCPINT_MASK, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %11
  %24 = load i32, i32* @XADC_ALARM_VCCPAUX_MASK, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %11
  %26 = load i32, i32* @XADC_ALARM_VCCODDR_MASK, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %25, %23, %21, %19, %17, %15, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
