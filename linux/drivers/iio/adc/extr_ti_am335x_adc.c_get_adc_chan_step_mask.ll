; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_get_adc_chan_step_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_get_adc_chan_step_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiadc_device = type { i32*, i64* }
%struct.iio_chan_spec = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tiadc_device*, %struct.iio_chan_spec*)* @get_adc_chan_step_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_adc_chan_step_mask(%struct.tiadc_device* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tiadc_device*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tiadc_device* %0, %struct.tiadc_device** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %11 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %20 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %18, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %15
  %28 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %29 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = shl i32 1, %36
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %8

42:                                               ; preds = %8
  %43 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
