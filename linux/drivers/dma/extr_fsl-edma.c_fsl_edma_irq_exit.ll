; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_irq_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_irq_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_edma_engine = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.fsl_edma_engine*)* @fsl_edma_irq_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_edma_irq_exit(%struct.platform_device* %0, %struct.fsl_edma_engine* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fsl_edma_engine*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.fsl_edma_engine* %1, %struct.fsl_edma_engine** %4, align 8
  %5 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %6 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %9 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %16 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %19 = call i32 @devm_free_irq(i32* %14, i64 %17, %struct.fsl_edma_engine* %18)
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %24 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %27 = call i32 @devm_free_irq(i32* %22, i64 %25, %struct.fsl_edma_engine* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %31 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %34 = call i32 @devm_free_irq(i32* %29, i64 %32, %struct.fsl_edma_engine* %33)
  br label %35

35:                                               ; preds = %20, %12
  ret void
}

declare dso_local i32 @devm_free_irq(i32*, i64, %struct.fsl_edma_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
