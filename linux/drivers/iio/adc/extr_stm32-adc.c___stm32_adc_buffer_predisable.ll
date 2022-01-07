; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c___stm32_adc_buffer_predisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c___stm32_adc_buffer_predisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.stm32_adc = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.stm32_adc*)* }

@.str = private unnamed_addr constant [21 x i8] c"Can't clear trigger\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @__stm32_adc_buffer_predisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__stm32_adc_buffer_predisable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.stm32_adc*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %6 = call %struct.stm32_adc* @iio_priv(%struct.iio_dev* %5)
  store %struct.stm32_adc* %6, %struct.stm32_adc** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %8 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.stm32_adc*)*, i32 (%struct.stm32_adc*)** %14, align 8
  %16 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %17 = call i32 %15(%struct.stm32_adc* %16)
  %18 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %19 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %24 = call i32 @stm32_adc_conv_irq_disable(%struct.stm32_adc* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %27 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %32 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dmaengine_terminate_sync(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %37 = call i64 @stm32_adc_set_trig(%struct.iio_dev* %36, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 0
  %42 = call i32 @dev_err(%struct.TYPE_4__* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @pm_runtime_mark_last_busy(%struct.device* %44)
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @pm_runtime_put_autosuspend(%struct.device* %46)
  ret void
}

declare dso_local %struct.stm32_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @stm32_adc_conv_irq_disable(%struct.stm32_adc*) #1

declare dso_local i32 @dmaengine_terminate_sync(i64) #1

declare dso_local i64 @stm32_adc_set_trig(%struct.iio_dev*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
