; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c___stm32_adc_buffer_postenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c___stm32_adc_buffer_postenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.stm32_adc = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.stm32_adc*, i32)* }

@.str = private unnamed_addr constant [19 x i8] c"Can't set trigger\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Can't start dma\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @__stm32_adc_buffer_postenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__stm32_adc_buffer_postenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.stm32_adc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.stm32_adc* @iio_priv(%struct.iio_dev* %7)
  store %struct.stm32_adc* %8, %struct.stm32_adc** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @pm_runtime_get_sync(%struct.device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 @pm_runtime_put_noidle(%struct.device* %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  %22 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @stm32_adc_set_trig(%struct.iio_dev* %22, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_err(%struct.TYPE_4__* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %70

33:                                               ; preds = %21
  %34 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %35 = call i32 @stm32_adc_dma_start(%struct.iio_dev* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 0
  %41 = call i32 @dev_err(%struct.TYPE_4__* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %67

42:                                               ; preds = %33
  %43 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %44 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %46 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %51 = call i32 @stm32_adc_conv_irq_enable(%struct.stm32_adc* %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %54 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.stm32_adc*, i32)*, i32 (%struct.stm32_adc*, i32)** %56, align 8
  %58 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %59 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %60 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 %57(%struct.stm32_adc* %58, i32 %65)
  store i32 0, i32* %2, align 4
  br label %76

67:                                               ; preds = %38
  %68 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %69 = call i32 @stm32_adc_set_trig(%struct.iio_dev* %68, i32* null)
  br label %70

70:                                               ; preds = %67, %29
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i32 @pm_runtime_mark_last_busy(%struct.device* %71)
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i32 @pm_runtime_put_autosuspend(%struct.device* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %70, %52, %17
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.stm32_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @stm32_adc_set_trig(%struct.iio_dev*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @stm32_adc_dma_start(%struct.iio_dev*) #1

declare dso_local i32 @stm32_adc_conv_irq_enable(%struct.stm32_adc*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
