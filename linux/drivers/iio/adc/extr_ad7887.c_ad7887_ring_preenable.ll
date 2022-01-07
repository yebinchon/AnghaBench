; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7887.c_ad7887_ring_preenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7887.c_ad7887_ring_preenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32* }
%struct.ad7887_state = type { i32*, i32*, i32 }

@AD7887_CH0 = common dso_local global i64 0, align 8
@AD7887_CH1 = common dso_local global i64 0, align 8
@AD7887_CH0_CH1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad7887_ring_preenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7887_ring_preenable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.ad7887_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.ad7887_state* @iio_priv(%struct.iio_dev* %4)
  store %struct.ad7887_state* %5, %struct.ad7887_state** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %7 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %41 [
    i32 1, label %10
    i32 2, label %18
    i32 3, label %33
  ]

10:                                               ; preds = %1
  %11 = load %struct.ad7887_state*, %struct.ad7887_state** %3, align 8
  %12 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @AD7887_CH0, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load %struct.ad7887_state*, %struct.ad7887_state** %3, align 8
  %17 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.ad7887_state*, %struct.ad7887_state** %3, align 8
  %20 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @AD7887_CH1, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load %struct.ad7887_state*, %struct.ad7887_state** %3, align 8
  %25 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.ad7887_state*, %struct.ad7887_state** %3, align 8
  %27 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ad7887_state*, %struct.ad7887_state** %3, align 8
  %30 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @spi_sync(i32 %28, i32* %31)
  br label %41

33:                                               ; preds = %1
  %34 = load %struct.ad7887_state*, %struct.ad7887_state** %3, align 8
  %35 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @AD7887_CH0_CH1, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load %struct.ad7887_state*, %struct.ad7887_state** %3, align 8
  %40 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  br label %41

41:                                               ; preds = %1, %33, %18, %10
  ret i32 0
}

declare dso_local %struct.ad7887_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
