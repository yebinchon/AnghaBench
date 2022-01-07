; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xilinx_dma_device = type { i32, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xilinx_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xilinx_dma_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.xilinx_dma_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.xilinx_dma_device* %6, %struct.xilinx_dma_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @of_dma_controller_free(i32 %10)
  %12 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %3, align 8
  %13 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %12, i32 0, i32 2
  %14 = call i32 @dma_async_device_unregister(i32* %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %40, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %3, align 8
  %18 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %3, align 8
  %23 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %3, align 8
  %32 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @xilinx_dma_chan_remove(i64 %37)
  br label %39

39:                                               ; preds = %30, %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %15

43:                                               ; preds = %15
  %44 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %3, align 8
  %45 = call i32 @xdma_disable_allclks(%struct.xilinx_dma_device* %44)
  ret i32 0
}

declare dso_local %struct.xilinx_dma_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_dma_controller_free(i32) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @xilinx_dma_chan_remove(i64) #1

declare dso_local i32 @xdma_disable_allclks(%struct.xilinx_dma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
