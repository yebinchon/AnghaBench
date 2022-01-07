; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_ts_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_ts_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_adc = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iio_dev = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@ADC_DATX_PRESSED = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ADC_DATX_MASK = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ADC_DATY_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @exynos_ts_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ts_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.exynos_adc*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.exynos_adc*
  store %struct.exynos_adc* %12, %struct.exynos_adc** %5, align 8
  %13 = load %struct.exynos_adc*, %struct.exynos_adc** %5, align 8
  %14 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.iio_dev* @dev_get_drvdata(i32 %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %6, align 8
  br label %17

17:                                               ; preds = %50, %2
  %18 = load %struct.exynos_adc*, %struct.exynos_adc** %5, align 8
  %19 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %17
  %25 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %26 = call i32 @exynos_read_s3c64xx_ts(%struct.iio_dev* %25, i32* %7, i32* %8)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %77

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @ADC_DATX_PRESSED, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %32
  %41 = load %struct.exynos_adc*, %struct.exynos_adc** %5, align 8
  %42 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* @BTN_TOUCH, align 4
  %45 = call i32 @input_report_key(%struct.TYPE_4__* %43, i32 %44, i32 0)
  %46 = load %struct.exynos_adc*, %struct.exynos_adc** %5, align 8
  %47 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @input_sync(%struct.TYPE_4__* %48)
  br label %77

50:                                               ; preds = %32
  %51 = load %struct.exynos_adc*, %struct.exynos_adc** %5, align 8
  %52 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* @ABS_X, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ADC_DATX_MASK, align 4
  %57 = and i32 %55, %56
  %58 = call i32 @input_report_abs(%struct.TYPE_4__* %53, i32 %54, i32 %57)
  %59 = load %struct.exynos_adc*, %struct.exynos_adc** %5, align 8
  %60 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* @ABS_Y, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ADC_DATY_MASK, align 4
  %65 = and i32 %63, %64
  %66 = call i32 @input_report_abs(%struct.TYPE_4__* %61, i32 %62, i32 %65)
  %67 = load %struct.exynos_adc*, %struct.exynos_adc** %5, align 8
  %68 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* @BTN_TOUCH, align 4
  %71 = call i32 @input_report_key(%struct.TYPE_4__* %69, i32 %70, i32 1)
  %72 = load %struct.exynos_adc*, %struct.exynos_adc** %5, align 8
  %73 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @input_sync(%struct.TYPE_4__* %74)
  %76 = call i32 @usleep_range(i32 1000, i32 1100)
  br label %17

77:                                               ; preds = %40, %31, %17
  %78 = load %struct.exynos_adc*, %struct.exynos_adc** %5, align 8
  %79 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ADC_V1_CLRINTPNDNUP(i32 %80)
  %82 = call i32 @writel(i32 0, i32 %81)
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %83
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(i32) #1

declare dso_local i32 @exynos_read_s3c64xx_ts(%struct.iio_dev*, i32*, i32*) #1

declare dso_local i32 @input_report_key(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @input_report_abs(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @ADC_V1_CLRINTPNDNUP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
