; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.fsl_qdma_queue = type { i32, i32, i32 }
%struct.fsl_qdma_engine = type { i32, %struct.fsl_qdma_queue**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_qdma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_qdma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_qdma_queue*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.fsl_qdma_engine*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call %struct.fsl_qdma_engine* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.fsl_qdma_engine* %12, %struct.fsl_qdma_engine** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %6, align 8
  %15 = call i32 @fsl_qdma_irq_exit(%struct.platform_device* %13, %struct.fsl_qdma_engine* %14)
  %16 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %6, align 8
  %17 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %16, i32 0, i32 2
  %18 = call i32 @fsl_qdma_cleanup_vchan(i32* %17)
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32 @of_dma_controller_free(%struct.device_node* %19)
  %21 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %6, align 8
  %22 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %21, i32 0, i32 2
  %23 = call i32 @dma_async_device_unregister(i32* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %53, %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %6, align 8
  %27 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %6, align 8
  %32 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %31, i32 0, i32 1
  %33 = load %struct.fsl_qdma_queue**, %struct.fsl_qdma_queue*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %33, i64 %35
  %37 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %36, align 8
  store %struct.fsl_qdma_queue* %37, %struct.fsl_qdma_queue** %4, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %4, align 8
  %41 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %4, align 8
  %47 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %4, align 8
  %50 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dma_free_coherent(%struct.TYPE_2__* %39, i32 %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %30
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %24

56:                                               ; preds = %24
  ret i32 0
}

declare dso_local %struct.fsl_qdma_engine* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @fsl_qdma_irq_exit(%struct.platform_device*, %struct.fsl_qdma_engine*) #1

declare dso_local i32 @fsl_qdma_cleanup_vchan(i32*) #1

declare dso_local i32 @of_dma_controller_free(%struct.device_node*) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
