; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sa11x0_dma_dev = type { i32, i32, i32*, i32 }

@NR_PHY_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sa11x0_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa11x0_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sa11x0_dma_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sa11x0_dma_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sa11x0_dma_dev* %6, %struct.sa11x0_dma_dev** %3, align 8
  %7 = load %struct.sa11x0_dma_dev*, %struct.sa11x0_dma_dev** %3, align 8
  %8 = getelementptr inbounds %struct.sa11x0_dma_dev, %struct.sa11x0_dma_dev* %7, i32 0, i32 3
  %9 = call i32 @dma_async_device_unregister(i32* %8)
  %10 = load %struct.sa11x0_dma_dev*, %struct.sa11x0_dma_dev** %3, align 8
  %11 = getelementptr inbounds %struct.sa11x0_dma_dev, %struct.sa11x0_dma_dev* %10, i32 0, i32 3
  %12 = call i32 @sa11x0_dma_free_channels(i32* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %27, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NR_PHY_CHAN, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.sa11x0_dma_dev*, %struct.sa11x0_dma_dev** %3, align 8
  %21 = getelementptr inbounds %struct.sa11x0_dma_dev, %struct.sa11x0_dma_dev* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @sa11x0_dma_free_irq(%struct.platform_device* %18, i32 %19, i32* %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.sa11x0_dma_dev*, %struct.sa11x0_dma_dev** %3, align 8
  %32 = getelementptr inbounds %struct.sa11x0_dma_dev, %struct.sa11x0_dma_dev* %31, i32 0, i32 1
  %33 = call i32 @tasklet_kill(i32* %32)
  %34 = load %struct.sa11x0_dma_dev*, %struct.sa11x0_dma_dev** %3, align 8
  %35 = getelementptr inbounds %struct.sa11x0_dma_dev, %struct.sa11x0_dma_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @iounmap(i32 %36)
  %38 = load %struct.sa11x0_dma_dev*, %struct.sa11x0_dma_dev** %3, align 8
  %39 = call i32 @kfree(%struct.sa11x0_dma_dev* %38)
  ret i32 0
}

declare dso_local %struct.sa11x0_dma_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @sa11x0_dma_free_channels(i32*) #1

declare dso_local i32 @sa11x0_dma_free_irq(%struct.platform_device*, i32, i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.sa11x0_dma_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
