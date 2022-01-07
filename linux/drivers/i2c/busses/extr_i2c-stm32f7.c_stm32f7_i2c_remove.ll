; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stm32f7_i2c_dev = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32f7_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f7_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.stm32f7_i2c_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.stm32f7_i2c_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.stm32f7_i2c_dev* %5, %struct.stm32f7_i2c_dev** %3, align 8
  %6 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %7 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %12 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @stm32_i2c_dma_free(i32* %13)
  %15 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %16 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %19 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %18, i32 0, i32 2
  %20 = call i32 @i2c_del_adapter(i32* %19)
  %21 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %22 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pm_runtime_get_sync(i32 %23)
  %25 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %26 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  %29 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %30 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pm_runtime_put_noidle(i32 %31)
  %33 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %34 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pm_runtime_disable(i32 %35)
  %37 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %38 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pm_runtime_set_suspended(i32 %39)
  %41 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %3, align 8
  %42 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pm_runtime_dont_use_autosuspend(i32 %43)
  ret i32 0
}

declare dso_local %struct.stm32f7_i2c_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @stm32_i2c_dma_free(i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm_runtime_set_suspended(i32) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
