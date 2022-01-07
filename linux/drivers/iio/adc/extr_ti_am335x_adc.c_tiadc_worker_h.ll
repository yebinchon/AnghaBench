; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_worker_h.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_worker_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tiadc_device = type { i32* }

@REG_FIFO1CNT = common dso_local global i32 0, align 4
@REG_FIFO1 = common dso_local global i32 0, align 4
@FIFOREAD_DATA_MASK = common dso_local global i32 0, align 4
@REG_IRQSTATUS = common dso_local global i32 0, align 4
@IRQENB_FIFO1THRES = common dso_local global i32 0, align 4
@REG_IRQENABLE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tiadc_worker_h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiadc_worker_h(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.tiadc_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.iio_dev*
  store %struct.iio_dev* %13, %struct.iio_dev** %5, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = call %struct.tiadc_device* @iio_priv(%struct.iio_dev* %14)
  store %struct.tiadc_device* %15, %struct.tiadc_device** %6, align 8
  %16 = load %struct.tiadc_device*, %struct.tiadc_device** %6, align 8
  %17 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load %struct.tiadc_device*, %struct.tiadc_device** %6, align 8
  %20 = load i32, i32* @REG_FIFO1CNT, align 4
  %21 = call i32 @tiadc_readl(%struct.tiadc_device* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %52, %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 2
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.tiadc_device*, %struct.tiadc_device** %6, align 8
  %36 = load i32, i32* @REG_FIFO1, align 4
  %37 = call i32 @tiadc_readl(%struct.tiadc_device* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @FIFOREAD_DATA_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %27

48:                                               ; preds = %27
  %49 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @iio_push_to_buffers(%struct.iio_dev* %49, i32* %50)
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %8, align 4
  br label %22

56:                                               ; preds = %22
  %57 = load %struct.tiadc_device*, %struct.tiadc_device** %6, align 8
  %58 = load i32, i32* @REG_IRQSTATUS, align 4
  %59 = load i32, i32* @IRQENB_FIFO1THRES, align 4
  %60 = call i32 @tiadc_writel(%struct.tiadc_device* %57, i32 %58, i32 %59)
  %61 = load %struct.tiadc_device*, %struct.tiadc_device** %6, align 8
  %62 = load i32, i32* @REG_IRQENABLE, align 4
  %63 = load i32, i32* @IRQENB_FIFO1THRES, align 4
  %64 = call i32 @tiadc_writel(%struct.tiadc_device* %61, i32 %62, i32 %63)
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %65
}

declare dso_local %struct.tiadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @tiadc_readl(%struct.tiadc_device*, i32) #1

declare dso_local i32 @iio_push_to_buffers(%struct.iio_dev*, i32*) #1

declare dso_local i32 @tiadc_writel(%struct.tiadc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
