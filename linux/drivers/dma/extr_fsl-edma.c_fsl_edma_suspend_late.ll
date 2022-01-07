; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_suspend_late.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_suspend_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsl_edma_engine = type { i32, %struct.fsl_edma_chan* }
%struct.fsl_edma_chan = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"WARN: There is non-idle channel.\00", align 1
@SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @fsl_edma_suspend_late to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_edma_suspend_late(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.fsl_edma_engine*, align 8
  %4 = alloca %struct.fsl_edma_chan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.fsl_edma_engine* @dev_get_drvdata(%struct.device* %7)
  store %struct.fsl_edma_engine* %8, %struct.fsl_edma_engine** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %51, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %9
  %16 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %3, align 8
  %17 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %16, i32 0, i32 1
  %18 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %18, i64 %20
  store %struct.fsl_edma_chan* %21, %struct.fsl_edma_chan** %4, align 8
  %22 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %23 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %28 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %15
  %36 = load %struct.device*, %struct.device** %2, align 8
  %37 = call i32 @dev_warn(%struct.device* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %39 = call i32 @fsl_edma_disable_request(%struct.fsl_edma_chan* %38)
  %40 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %41 = call i32 @fsl_edma_chan_mux(%struct.fsl_edma_chan* %40, i32 0, i32 0)
  br label %42

42:                                               ; preds = %35, %15
  %43 = load i32, i32* @SUSPENDED, align 4
  %44 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %45 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %4, align 8
  %47 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %9

54:                                               ; preds = %9
  ret i32 0
}

declare dso_local %struct.fsl_edma_engine* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @fsl_edma_disable_request(%struct.fsl_edma_chan*) #1

declare dso_local i32 @fsl_edma_chan_mux(%struct.fsl_edma_chan*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
