; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_debugfs_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_debugfs_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.stm32_adc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32, i32*)* @stm32_adc_debugfs_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_debugfs_reg_access(%struct.iio_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.stm32_adc*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.stm32_adc* @iio_priv(%struct.iio_dev* %13)
  store %struct.stm32_adc* %14, %struct.stm32_adc** %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %11, align 8
  %19 = load %struct.device*, %struct.device** %11, align 8
  %20 = call i32 @pm_runtime_get_sync(%struct.device* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %11, align 8
  %25 = call i32 @pm_runtime_put_noidle(%struct.device* %24)
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %45

27:                                               ; preds = %4
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.stm32_adc*, %struct.stm32_adc** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @stm32_adc_writel(%struct.stm32_adc* %31, i32 %32, i32 %33)
  br label %40

35:                                               ; preds = %27
  %36 = load %struct.stm32_adc*, %struct.stm32_adc** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @stm32_adc_readl(%struct.stm32_adc* %36, i32 %37)
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.device*, %struct.device** %11, align 8
  %42 = call i32 @pm_runtime_mark_last_busy(%struct.device* %41)
  %43 = load %struct.device*, %struct.device** %11, align 8
  %44 = call i32 @pm_runtime_put_autosuspend(%struct.device* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %23
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.stm32_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @stm32_adc_writel(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32_adc_readl(%struct.stm32_adc*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
