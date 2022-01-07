; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_dma_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_dma_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i64 }
%struct.tiadc_device = type { %struct.tiadc_dma }
%struct.tiadc_dma = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tiadc_dma_rx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiadc_dma_rx_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.tiadc_device*, align 8
  %5 = alloca %struct.tiadc_dma*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.iio_dev*
  store %struct.iio_dev* %9, %struct.iio_dev** %3, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %11 = call %struct.tiadc_device* @iio_priv(%struct.iio_dev* %10)
  store %struct.tiadc_device* %11, %struct.tiadc_device** %4, align 8
  %12 = load %struct.tiadc_device*, %struct.tiadc_device** %4, align 8
  %13 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %12, i32 0, i32 0
  store %struct.tiadc_dma* %13, %struct.tiadc_dma** %5, align 8
  %14 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %15 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %18 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %21 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %16, i64 %24
  store i32* %25, i32** %6, align 8
  %26 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %27 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 1, %28
  %30 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %31 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %47, %1
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.tiadc_dma*, %struct.tiadc_dma** %5, align 8
  %35 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @iio_push_to_buffers(%struct.iio_dev* %39, i32* %40)
  %42 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  store i32* %46, i32** %6, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  br label %32

55:                                               ; preds = %32
  ret void
}

declare dso_local %struct.tiadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_push_to_buffers(%struct.iio_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
