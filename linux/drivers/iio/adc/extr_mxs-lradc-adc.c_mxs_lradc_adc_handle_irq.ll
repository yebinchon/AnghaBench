; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.mxs_lradc_adc = type { i64, i32, i32, %struct.mxs_lradc* }
%struct.mxs_lradc = type { i64 }

@LRADC_CTRL1 = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mxs_lradc_adc_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_adc_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mxs_lradc_adc*, align 8
  %8 = alloca %struct.mxs_lradc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev* %13)
  store %struct.mxs_lradc_adc* %14, %struct.mxs_lradc_adc** %7, align 8
  %15 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %7, align 8
  %16 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %15, i32 0, i32 3
  %17 = load %struct.mxs_lradc*, %struct.mxs_lradc** %16, align 8
  store %struct.mxs_lradc* %17, %struct.mxs_lradc** %8, align 8
  %18 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %7, align 8
  %19 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LRADC_CTRL1, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @readl(i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.mxs_lradc*, %struct.mxs_lradc** %8, align 8
  %26 = call i64 @mxs_lradc_irq_mask(%struct.mxs_lradc* %25)
  %27 = and i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %80

31:                                               ; preds = %2
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = call i64 @iio_buffer_enabled(%struct.iio_dev* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.mxs_lradc*, %struct.mxs_lradc** %8, align 8
  %38 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %36, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %7, align 8
  %44 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %43, i32 0, i32 2
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @iio_trigger_poll(i32 %49)
  %51 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %7, align 8
  %52 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %51, i32 0, i32 2
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %42, %35
  br label %66

56:                                               ; preds = %31
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @LRADC_CTRL1_LRADC_IRQ(i32 0)
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %7, align 8
  %63 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %62, i32 0, i32 1
  %64 = call i32 @complete(i32* %63)
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %65, %55
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.mxs_lradc*, %struct.mxs_lradc** %8, align 8
  %69 = call i64 @mxs_lradc_irq_mask(%struct.mxs_lradc* %68)
  %70 = and i64 %67, %69
  %71 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %7, align 8
  %72 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @LRADC_CTRL1, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i64 %70, i64 %77)
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %66, %29
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @mxs_lradc_irq_mask(%struct.mxs_lradc*) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iio_trigger_poll(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @LRADC_CTRL1_LRADC_IRQ(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
