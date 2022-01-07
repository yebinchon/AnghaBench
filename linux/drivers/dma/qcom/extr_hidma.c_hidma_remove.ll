; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hidma_dev = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"HI-DMA engine removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hidma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.hidma_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.hidma_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.hidma_dev* %5, %struct.hidma_dev** %3, align 8
  %6 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  %11 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %11, i32 0, i32 3
  %13 = call i32 @dma_async_device_unregister(%struct.TYPE_5__* %12)
  %14 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %1
  %21 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 @devm_free_irq(i32 %24, i32 %27, %struct.TYPE_4__* %30)
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %34 = call i32 @hidma_free_msis(%struct.hidma_dev* %33)
  br label %35

35:                                               ; preds = %32, %20
  %36 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %36, i32 0, i32 1
  %38 = call i32 @tasklet_kill(i32* %37)
  %39 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %40 = call i32 @hidma_sysfs_uninit(%struct.hidma_dev* %39)
  %41 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %42 = call i32 @hidma_debug_uninit(%struct.hidma_dev* %41)
  %43 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %44 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @hidma_ll_uninit(%struct.TYPE_4__* %45)
  %47 = load %struct.hidma_dev*, %struct.hidma_dev** %3, align 8
  %48 = call i32 @hidma_free(%struct.hidma_dev* %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_info(i32* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @pm_runtime_put_sync_suspend(i32* %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @pm_runtime_disable(i32* %56)
  ret i32 0
}

declare dso_local %struct.hidma_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @hidma_free_msis(%struct.hidma_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @hidma_sysfs_uninit(%struct.hidma_dev*) #1

declare dso_local i32 @hidma_debug_uninit(%struct.hidma_dev*) #1

declare dso_local i32 @hidma_ll_uninit(%struct.TYPE_4__*) #1

declare dso_local i32 @hidma_free(%struct.hidma_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pm_runtime_put_sync_suspend(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
