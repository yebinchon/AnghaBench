; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.jz4780_dma_dev = type { %struct.TYPE_8__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jz4780_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.jz4780_dma_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.jz4780_dma_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.jz4780_dma_dev* %6, %struct.jz4780_dma_dev** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @of_dma_controller_free(i32 %10)
  %12 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %13 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.jz4780_dma_dev* %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %35, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %20 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %17
  %26 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %27 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = call i32 @tasklet_kill(i32* %33)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %17

38:                                               ; preds = %17
  ret i32 0
}

declare dso_local %struct.jz4780_dma_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_dma_controller_free(i32) #1

declare dso_local i32 @free_irq(i32, %struct.jz4780_dma_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
