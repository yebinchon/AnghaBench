; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_threshold_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_threshold_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i32, i32 }

@AD7291_VOLTAGE_OFFSET = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_chan_spec*, i32, i32)* @ad7291_threshold_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7291_threshold_reg(%struct.iio_chan_spec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %10 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %18 [
    i32 128, label %12
    i32 129, label %16
  ]

12:                                               ; preds = %3
  %13 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %14 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  br label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @AD7291_VOLTAGE_OFFSET, align 4
  store i32 %17, i32* %8, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %34 [
    i32 130, label %21
    i32 131, label %31
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @AD7291_DATA_HIGH(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @AD7291_DATA_LOW(i32 %29)
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %19
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @AD7291_HYST(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %31, %28, %25, %18
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @AD7291_DATA_HIGH(i32) #1

declare dso_local i32 @AD7291_DATA_LOW(i32) #1

declare dso_local i32 @AD7291_HYST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
