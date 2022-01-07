; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_irq_h.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_irq_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tiadc_device = type { i32 }

@REG_IRQSTATUS = common dso_local global i32 0, align 4
@IRQENB_FIFO1OVRRUN = common dso_local global i32 0, align 4
@REG_CTRL = common dso_local global i32 0, align 4
@CNTRLREG_TSCSSENB = common dso_local global i32 0, align 4
@IRQENB_FIFO1UNDRFLW = common dso_local global i32 0, align 4
@IRQENB_FIFO1THRES = common dso_local global i32 0, align 4
@REG_ADCFSM = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@REG_IRQCLR = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tiadc_irq_h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiadc_irq_h(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.tiadc_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.iio_dev*
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.tiadc_device* @iio_priv(%struct.iio_dev* %14)
  store %struct.tiadc_device* %15, %struct.tiadc_device** %7, align 8
  store i16 0, i16* %11, align 2
  %16 = load %struct.tiadc_device*, %struct.tiadc_device** %7, align 8
  %17 = load i32, i32* @REG_IRQSTATUS, align 4
  %18 = call i32 @tiadc_readl(%struct.tiadc_device* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @IRQENB_FIFO1OVRRUN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %2
  %24 = load %struct.tiadc_device*, %struct.tiadc_device** %7, align 8
  %25 = load i32, i32* @REG_CTRL, align 4
  %26 = call i32 @tiadc_readl(%struct.tiadc_device* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @CNTRLREG_TSCSSENB, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.tiadc_device*, %struct.tiadc_device** %7, align 8
  %32 = load i32, i32* @REG_CTRL, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @tiadc_writel(%struct.tiadc_device* %31, i32 %32, i32 %33)
  %35 = load %struct.tiadc_device*, %struct.tiadc_device** %7, align 8
  %36 = load i32, i32* @REG_IRQSTATUS, align 4
  %37 = load i32, i32* @IRQENB_FIFO1OVRRUN, align 4
  %38 = load i32, i32* @IRQENB_FIFO1UNDRFLW, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @IRQENB_FIFO1THRES, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @tiadc_writel(%struct.tiadc_device* %35, i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %55, %23
  %44 = load %struct.tiadc_device*, %struct.tiadc_device** %7, align 8
  %45 = load i32, i32* @REG_ADCFSM, align 4
  %46 = call i32 @tiadc_readl(%struct.tiadc_device* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 16
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i16, i16* %11, align 2
  %52 = add i16 %51, 1
  store i16 %52, i16* %11, align 2
  %53 = zext i16 %51 to i32
  %54 = icmp slt i32 %53, 100
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi i1 [ false, %47 ], [ %54, %50 ]
  br i1 %56, label %43, label %57

57:                                               ; preds = %55
  %58 = load %struct.tiadc_device*, %struct.tiadc_device** %7, align 8
  %59 = load i32, i32* @REG_CTRL, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @CNTRLREG_TSCSSENB, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @tiadc_writel(%struct.tiadc_device* %58, i32 %59, i32 %62)
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %3, align 4
  br label %79

65:                                               ; preds = %2
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @IRQENB_FIFO1THRES, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.tiadc_device*, %struct.tiadc_device** %7, align 8
  %72 = load i32, i32* @REG_IRQCLR, align 4
  %73 = load i32, i32* @IRQENB_FIFO1THRES, align 4
  %74 = call i32 @tiadc_writel(%struct.tiadc_device* %71, i32 %72, i32 %73)
  %75 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %75, i32* %3, align 4
  br label %79

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* @IRQ_NONE, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %70, %57
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.tiadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @tiadc_readl(%struct.tiadc_device*, i32) #1

declare dso_local i32 @tiadc_writel(%struct.tiadc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
