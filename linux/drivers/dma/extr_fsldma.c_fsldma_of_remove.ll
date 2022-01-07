; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsldma_of_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsldma_of_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsldma_device = type { i32, i64*, i32 }

@FSL_DMA_MAX_CHANS_PER_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsldma_of_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsldma_of_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fsldma_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.fsldma_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.fsldma_device* %6, %struct.fsldma_device** %3, align 8
  %7 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %8 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %7, i32 0, i32 2
  %9 = call i32 @dma_async_device_unregister(i32* %8)
  %10 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %11 = call i32 @fsldma_free_irqs(%struct.fsldma_device* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %35, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @FSL_DMA_MAX_CHANS_PER_DEVICE, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %18 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %27 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @fsl_dma_chan_remove(i64 %32)
  br label %34

34:                                               ; preds = %25, %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %40 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @iounmap(i32 %41)
  %43 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %44 = call i32 @kfree(%struct.fsldma_device* %43)
  ret i32 0
}

declare dso_local %struct.fsldma_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @fsldma_free_irqs(%struct.fsldma_device*) #1

declare dso_local i32 @fsl_dma_chan_remove(i64) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.fsldma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
