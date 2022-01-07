; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_bam_dma.c_bam_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_bam_dma.c_bam_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bam_device = type { i64, i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@BAM_IRQ_SRCS_MSK_EE = common dso_local global i32 0, align 4
@BAM_DESC_FIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bam_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bam_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.bam_device*, align 8
  %4 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.bam_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.bam_device* %6, %struct.bam_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @pm_runtime_force_suspend(%struct.TYPE_6__* %8)
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @of_dma_controller_free(i32 %13)
  %15 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %16 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %15, i32 0, i32 6
  %17 = call i32 @dma_async_device_unregister(i32* %16)
  %18 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %19 = load i32, i32* @BAM_IRQ_SRCS_MSK_EE, align 4
  %20 = call i32 @bam_addr(%struct.bam_device* %18, i32 0, i32 %19)
  %21 = call i32 @writel_relaxed(i32 0, i32 %20)
  %22 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %23 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %26 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %29 = call i32 @devm_free_irq(i32 %24, i32 %27, %struct.bam_device* %28)
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %82, %1
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %33 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %30
  %37 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %38 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i32 @bam_dma_terminate_all(i32* %43)
  %45 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %46 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @tasklet_kill(i32* %51)
  %53 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %54 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %36
  br label %82

62:                                               ; preds = %36
  %63 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %64 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BAM_DESC_FIFO_SIZE, align 4
  %67 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %68 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %67, i32 0, i32 3
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %75 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %74, i32 0, i32 3
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dma_free_wc(i32 %65, i32 %66, i32 %73, i32 %80)
  br label %82

82:                                               ; preds = %62, %61
  %83 = load i64, i64* %4, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %4, align 8
  br label %30

85:                                               ; preds = %30
  %86 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %87 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %86, i32 0, i32 2
  %88 = call i32 @tasklet_kill(i32* %87)
  %89 = load %struct.bam_device*, %struct.bam_device** %3, align 8
  %90 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @clk_disable_unprepare(i32 %91)
  ret i32 0
}

declare dso_local %struct.bam_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_force_suspend(%struct.TYPE_6__*) #1

declare dso_local i32 @of_dma_controller_free(i32) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @bam_addr(%struct.bam_device*, i32, i32) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.bam_device*) #1

declare dso_local i32 @bam_dma_terminate_all(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dma_free_wc(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
