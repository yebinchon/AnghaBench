; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_irq_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_irq_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_qdma_engine = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.fsl_qdma_engine*)* @fsl_qdma_irq_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_qdma_irq_exit(%struct.platform_device* %0, %struct.fsl_qdma_engine* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fsl_qdma_engine*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.fsl_qdma_engine* %1, %struct.fsl_qdma_engine** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %4, align 8
  %9 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %4, align 8
  %12 = call i32 @devm_free_irq(i32* %7, i32 %10, %struct.fsl_qdma_engine* %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %4, align 8
  %16 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %4, align 8
  %23 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %4, align 8
  %30 = call i32 @devm_free_irq(i32* %21, i32 %28, %struct.fsl_qdma_engine* %29)
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %13

34:                                               ; preds = %13
  ret void
}

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.fsl_qdma_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
