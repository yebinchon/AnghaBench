; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_buffer_preenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_buffer_preenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tiadc_device = type { i32 }

@REG_IRQCLR = common dso_local global i32 0, align 4
@IRQENB_FIFO1THRES = common dso_local global i32 0, align 4
@IRQENB_FIFO1OVRRUN = common dso_local global i32 0, align 4
@IRQENB_FIFO1UNDRFLW = common dso_local global i32 0, align 4
@REG_FIFO1CNT = common dso_local global i32 0, align 4
@REG_FIFO1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @tiadc_buffer_preenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiadc_buffer_preenable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.tiadc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %8 = call %struct.tiadc_device* @iio_priv(%struct.iio_dev* %7)
  store %struct.tiadc_device* %8, %struct.tiadc_device** %3, align 8
  %9 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %10 = load i32, i32* @REG_IRQCLR, align 4
  %11 = load i32, i32* @IRQENB_FIFO1THRES, align 4
  %12 = load i32, i32* @IRQENB_FIFO1OVRRUN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IRQENB_FIFO1UNDRFLW, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @tiadc_writel(%struct.tiadc_device* %9, i32 %10, i32 %15)
  %17 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %18 = load i32, i32* @REG_FIFO1CNT, align 4
  %19 = call i32 @tiadc_readl(%struct.tiadc_device* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %28, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %26 = load i32, i32* @REG_FIFO1, align 4
  %27 = call i32 @tiadc_readl(%struct.tiadc_device* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %20

31:                                               ; preds = %20
  ret i32 0
}

declare dso_local %struct.tiadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @tiadc_writel(%struct.tiadc_device*, i32, i32) #1

declare dso_local i32 @tiadc_readl(%struct.tiadc_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
